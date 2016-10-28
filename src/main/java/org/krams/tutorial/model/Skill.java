package org.krams.tutorial.model;

public class Skill {	
	private int id;
	private String name;
	private String full_name;
	private String description;
	private String mana;	
	private String cooldown;
	private String ability;
	private String affects;
	private String damage_type;
	private String spell_immunity;
	private String damage;
	private String range;
	private String duration;
	private String stun_duration;
	private String bonus;
	private String scepter_bonus;
	
	public String icon;
	
	public Skill(int id,
			 String name,
			 String full_name,
			 String description,
			 String mana,	
			 String cooldown,
			 String ability,
			 String affects,
			 String damage_type,
			 String spell_immunity,
			 String damage,
			 String range,
			 String duration,
			 String stun_duration,
			 String bonus,
			 String scepter_bonus){
		
		this.id = id;
		this.name = name;
		this.full_name = full_name;
		this.description = description;
		this.mana = mana;	
		this.cooldown = cooldown;
		this.ability = ability;
		this.affects = affects;
		this.damage_type = damage_type;
		this.spell_immunity = spell_immunity;
		this.damage = damage;
		this.range = range;
		this.duration = duration;
		this.stun_duration = stun_duration;
		this.bonus = bonus;
		this.scepter_bonus = scepter_bonus;
	}
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getFull_name() {
		return full_name;
	}

	public void setFull_name(String full_name) {
		this.full_name = full_name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getMana() {
		return mana;
	}

	public void setMana(String mana) {
		this.mana = mana;
	}

	public String getCooldown() {
		return cooldown;
	}

	public void setCooldown(String cooldown) {
		this.cooldown = cooldown;
	}

	public String getAbility() {
		return ability;
	}

	public void setAbility(String ability) {
		this.ability = ability;
	}

	public String getAffects() {
		return affects;
	}

	public void setAffects(String affects) {
		this.affects = affects;
	}

	public String getDamage_type() {
		return damage_type;
	}

	public void setDamage_type(String damage_type) {
		this.damage_type = damage_type;
	}

	public String getSpell_immunity() {
		return spell_immunity;
	}

	public void setSpell_immunity(String spell_immunity) {
		this.spell_immunity = spell_immunity;
	}

	public String getDamage() {
		return damage;
	}

	public void setDamage(String damage) {
		this.damage = damage;
	}

	public String getRange() {
		return range;
	}

	public void setRange(String range) {
		this.range = range;
	}

	public String getDuration() {
		return duration;
	}

	public void setDuration(String duration) {
		this.duration = duration;
	}

	public String getStun_duration() {
		return stun_duration;
	}

	public void setStun_duration(String stun_duration) {
		this.stun_duration = stun_duration;
	}

	public String getBonus() {
		return bonus;
	}

	public void setBonus(String bonus) {
		this.bonus = bonus;
	}

	public String getScepter_bonus() {
		return scepter_bonus;
	}

	public void setScepter_bonus(String scepter_bonus) {
		this.scepter_bonus = scepter_bonus;
	}

	public String getIcon() {
		return icon;
	}

	public void setIcon(String icon) {
		this.icon = icon;
	}
}
