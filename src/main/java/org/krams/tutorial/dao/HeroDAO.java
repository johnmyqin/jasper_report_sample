package org.krams.tutorial.dao;

import java.util.List;

import org.krams.tutorial.model.Hero;

public interface HeroDAO {
	public Hero findByHeroId(int id);
	public Hero findByHeroName(String name);
	public List<Hero> findByHeroType(String type);
	public List<Hero> findAllHeros();

}
