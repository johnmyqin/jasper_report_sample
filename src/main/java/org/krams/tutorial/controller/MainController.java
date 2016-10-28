package org.krams.tutorial.controller;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;

import net.sf.jasperreports.engine.JRDataSource;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;

import org.apache.log4j.Logger;
import org.krams.tutorial.dao.HeroDAO;
import org.krams.tutorial.dao.SkillDAO;
import org.krams.tutorial.model.Hero;
import org.krams.tutorial.model.ReportFilter;
import org.krams.tutorial.model.Skill;
import org.krams.tutorial.services.JasperReportsService;
import org.krams.tutorial.utility.HeroUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {
	@Autowired
	private ServletContext servContext;
	
	@Autowired
	private JasperReportsService jprService;
	
	protected static Logger logger = Logger.getLogger("MainController");
	ApplicationContext context = new ClassPathXmlApplicationContext("Spring-Module.xml");
	HeroDAO hd = (HeroDAO) context.getBean("heroDAO");
	SkillDAO sd = (SkillDAO) context.getBean("skillDAO");
	
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String getDownloadPage(Model model) {
    	List<Hero> heroStr = hd.findByHeroType(HeroUtil.TYPE_S);
    	model.addAttribute("heroStr", heroStr);
    	
    	List<Hero> heroAgi = hd.findByHeroType(HeroUtil.TYPE_A);
    	model.addAttribute("heroAgi", heroAgi);
    	
    	List<Hero> heroInt = hd.findByHeroType(HeroUtil.TYPE_I);
    	model.addAttribute("heroInt", heroInt);
    	
    	return "home";
	}

    @RequestMapping(value = "/hero/name/{name}", method = RequestMethod.GET)
    public String getHeroInfoByName(@PathVariable String name, Model model) {
    	try{
    		String hero_name = name.toLowerCase(Locale.ENGLISH);
        	Hero hero = hd.findByHeroName(hero_name);
        	model.addAttribute("heroInfo", hero);
        	model.addAttribute("heroName", hero_name);
        	
        	List<Skill> skills = sd.findByHeroName(hero_name);
        	model.addAttribute("skills", skills);

        	return "hero";
    	}catch(Exception e){
    		return "home";
    	}
	}
    
    @RequestMapping(value = "/compare/pdf/sum", method = RequestMethod.GET)
    public ModelAndView exportCompareHeroPDF(ModelAndView modelAndView) {
		return setCompareHeroModelView(HeroUtil.ALL_HERO_COMPARE_PDF);
	}
    
    @RequestMapping(value = "/compare/html/sum", method = RequestMethod.GET)
    public ModelAndView exportCompareHeroHTML(ModelAndView modelAndView) {
		return setCompareHeroModelView(HeroUtil.ALL_HERO_COMPARE_HTML);
	}
    
    @RequestMapping(value = "/compare/xls/sum", method = RequestMethod.GET)
    public ModelAndView exportCompareHeroXLS(ModelAndView modelAndView) {
		return setCompareHeroModelView(HeroUtil.ALL_HERO_COMPARE_XLS);
	}
    
    @RequestMapping(value = "/export/pdf/all", method = RequestMethod.GET)
    public ModelAndView exportAllHeroPDF(ModelAndView modelAndView) {
		return setAllHeroModelView(HeroUtil.ALL_HERO_PDF);
	}
    
    @RequestMapping(value = "/export/xls/all", method = RequestMethod.GET)
    public ModelAndView exportAllHeroXLS(ModelAndView modelAndView) {
		return setAllHeroModelView(HeroUtil.ALL_HERO_XLS);
	}
    
    @RequestMapping(value = "/export/xls/sheet", method = RequestMethod.GET)
    public void exportSheetHeroXLS(HttpServletResponse response) {
    	exportHeroesMultiSheets(response);
	}
    
    @RequestMapping(value = "/export/pdf/{name}", method = RequestMethod.GET)
    public ModelAndView exportHeroPDF(@PathVariable String name, ModelAndView modelAndView) {
		return setHeroModelView(name, HeroUtil.HERO_EXPORT_PDF);
	}
    
    @RequestMapping(value = "/export/html/{name}", method = RequestMethod.GET)
    public ModelAndView exportHeroHTML(@PathVariable String name, ModelAndView modelAndView) {
		return setHeroModelView(name, HeroUtil.HERO_EXPORT_HTML);
	}
    
    public ModelAndView setHeroModelView(String name, String reportId){
    	String hero_name = name.toLowerCase(Locale.ENGLISH);
    	Hero hero = hd.findByHeroName(hero_name);

    	List<Skill> skills = sd.findByHeroName(hero_name);
    	for(Skill s : skills){
    		s.icon = setSkillIconRealPath(hero_name, s.getName());
    	}

    	JRDataSource ds = new JRBeanCollectionDataSource(skills);

		Map<String,Object> parameterMap = new HashMap<String,Object>();
		parameterMap.put("name", hero.getName());
		parameterMap.put("bio", hero.getBio());
		parameterMap.put("role", hero.getRole());
		parameterMap.put("atk_type", hero.getAtk_type());
		parameterMap.put("type", hero.getType());
		
		
		parameterMap.put("int", hero.getIntelligence());
		parameterMap.put("agi", hero.getAgility());
		parameterMap.put("str", hero.getStrength());
		parameterMap.put("damage", hero.getDamage());
		parameterMap.put("speed", hero.getSpeed());
		parameterMap.put("armor", hero.getArmor());
		parameterMap.put("avatar", setHeroAvatarRealPath(hero_name));
		
		parameterMap.put("health", hero.getHealth());
		parameterMap.put("mana", hero.getMana());
		parameterMap.put("sight_range", hero.getSight_range());
		parameterMap.put("atk_range", hero.getAtk_range());
		
		parameterMap.put("datasource", ds);
		return new ModelAndView(reportId, parameterMap);
    }
    
    public ModelAndView setCompareHeroModelView(String reportId){
    	JRDataSource ds = new JRBeanCollectionDataSource(hd.findAllHeros());
		Map<String,Object> parameterMap = new HashMap<String,Object>();
		parameterMap.put("datasource", ds);
		return new ModelAndView(reportId, parameterMap);
    }
    
    public String setSkillIconRealPath(String hero_name, String skill_name){
    	return servContext.getRealPath(HeroUtil.IMG + hero_name + "/" + hero_name + "_" + skill_name + HeroUtil.FILE_ICON);
    }
    
    public String setHeroAvatarRealPath(String hero_name){
    	return servContext.getRealPath(HeroUtil.IMG + hero_name + "/" + hero_name + HeroUtil.FILE_NAME);
    }
    
    public ModelAndView setAllHeroModelView(String reportId){
    	List<Hero> allHeroes = hd.findAllHeros(); 
    	for(Hero h: allHeroes){
    		String hero_name = h.getName() .toLowerCase(Locale.ENGLISH);
    		h.avatar = setHeroAvatarRealPath(hero_name);
    		
    		List<Skill> skills = sd.findByHeroName(hero_name);
        	for(Skill s : skills){
        		s.icon = setSkillIconRealPath(hero_name, s.getName());
        	}
        	h.setSkills(skills);
    	}
    	JRDataSource ds = new JRBeanCollectionDataSource(allHeroes);
		Map<String,Object> parameterMap = new HashMap<String,Object>();
		parameterMap.put("datasource", ds);
		return new ModelAndView(reportId, parameterMap);
    }

    public void exportHeroesMultiSheets(HttpServletResponse response){
    	
    	List<JasperPrint> listJasperPrint = new LinkedList<JasperPrint>();
    	String token = jprService.generate();
		ReportFilter filter = new ReportFilter();
		
		filter.setTemplate("/all.jasper");
		filter.setExportType(JasperReportsService.EXTENSION_TYPE_EXCEL);
		filter.setFileName("minhlehong");
		
		listJasperPrint.add(setupData(filter,HeroUtil.TYPE_S));
		listJasperPrint.add(setupData(filter,HeroUtil.TYPE_A));
		listJasperPrint.add(setupData(filter,HeroUtil.TYPE_I));

    	jprService.exportMutilSheets(filter, token, response, listJasperPrint);
    }
    
    public JasperPrint setupData(ReportFilter filter, String heroType){
    	
    	List<Hero> strHero = hd.findByHeroType(heroType); 
    	for(Hero h: strHero){
    		String hero_name = h.getName() .toLowerCase(Locale.ENGLISH);
    		h.avatar = setHeroAvatarRealPath(hero_name);
    		
    		List<Skill> skills = sd.findByHeroName(hero_name);
        	for(Skill s : skills){
        		s.icon = setSkillIconRealPath(hero_name, s.getName());
        	}
        	h.setSkills(skills);
    	}
    	
    	try{
	    	JRDataSource jrDataSource =   new JRBeanCollectionDataSource(strHero);
			JasperPrint jp = jprService.getJasperPrint(filter, jrDataSource);
			jp.setProperty("sheetName", heroType);
	    	return jp;
    	}catch (JRException e) {
    		e.printStackTrace();
    	}
    	return null;
    }
}
