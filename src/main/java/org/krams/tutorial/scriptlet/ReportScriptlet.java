package org.krams.tutorial.scriptlet;

import org.apache.commons.lang.StringUtils;
import org.apache.commons.lang.math.NumberUtils;
import org.krams.tutorial.utility.HeroUtil;

import net.sf.jasperreports.engine.JRDefaultScriptlet;
import net.sf.jasperreports.engine.JRScriptletException;

public class ReportScriptlet extends JRDefaultScriptlet {
	
	public final static int DEFAULT_COUNTER = 1000000;
	
	@Override
	public void afterReportInit() throws JRScriptletException{
		String count =  String.valueOf(this.getVariableValue("test_counter"));
		this.setVariableValue("test_counter", NumberUtils.toInt(count) + DEFAULT_COUNTER);
	}
	
	@Override
	public void beforeDetailEval() throws JRScriptletException{
		String type =  (String) this.getFieldValue("type");
		String type_name = "N/A";
		if(StringUtils.equalsIgnoreCase(type, HeroUtil.TYPE_S)){
			type_name = "Strength";
		}else if(StringUtils.equalsIgnoreCase(type, HeroUtil.TYPE_A)){
			type_name = "Agility";
		}else if(StringUtils.equalsIgnoreCase(type, HeroUtil.TYPE_I)){
			type_name = "Intelligence";
		}
		this.setVariableValue("hero_type", type_name);
	}
	
	@Override
	public void beforeReportInit() throws JRScriptletException{

	}
	
	@Override
	public void beforePageInit(){
		
	}
	
	@Override
	public void afterPageInit(){
		
	}
	
	@Override
	public void beforeColumnInit(){
		
	}
	
	@Override
	public void afterColumnInit(){
		
	}

	@Override
	public void afterDetailEval(){
		
	}
}
