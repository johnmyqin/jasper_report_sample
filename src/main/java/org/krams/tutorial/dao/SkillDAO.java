package org.krams.tutorial.dao;

import java.util.List;
import org.krams.tutorial.model.Skill;

public interface SkillDAO {
	public Skill findBySkillId(int id);
	public List<Skill> findByHeroId(int id);
	public List<Skill> findByHeroName(String name);
}
