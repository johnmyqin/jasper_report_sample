package org.krams.tutorial.model;

import java.util.List;

public class Hero {

	private int id;
	private String name;
	private String type;
	private String role;
	private String atk_type;	
	private String bio;
	private int health;
	private int mana;
	private int damage;
	private int armor;
	private String sight_range;
	private int atk_range;
	private int intelligence;
	private int agility;
	private int strength;
	private int speed;
	
	public String avatar;
	public List<Skill> skills;
	
	public Hero(int id, String name){
		this.id = id;
		this.name = name;
	}
	
	public Hero(int id, 
			String name, 
			String type,
			String role,
			String atk_type,
			String bio,
			int health,
			int mana,
			int damage,
			int armor,
			String sight_range,
			int atk_range,
			int intelligence,
			int agility,
			int strength,
			int speed){
		
		this.id = id;
		this.name = name;
		this.type = type;
		this.role = role;
		this.atk_type = atk_type;	
		this.bio = bio;
		this.health = health;
		this.mana = mana;
		this.damage = damage;
		this.armor = armor;
		this.sight_range = sight_range;
		this.atk_range = atk_range;
		this.intelligence = intelligence;
		this.agility = agility;
		this.strength = strength;
		this.speed = speed;	
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
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getAtk_type() {
		return atk_type;
	}

	public void setAtk_type(String atk_type) {
		this.atk_type = atk_type;
	}

	public String getBio() {
		return bio;
	}

	public void setBio(String bio) {
		this.bio = bio;
	}

	public int getHealth() {
		return health;
	}

	public void setHealth(int health) {
		this.health = health;
	}

	public int getMana() {
		return mana;
	}

	public void setMana(int mana) {
		this.mana = mana;
	}

	public int getDamage() {
		return damage;
	}

	public void setDamage(int damage) {
		this.damage = damage;
	}

	public int getArmor() {
		return armor;
	}

	public void setArmor(int armor) {
		this.armor = armor;
	}

	public String getSight_range() {
		return sight_range;
	}

	public void setSight_range(String sight_range) {
		this.sight_range = sight_range;
	}

	public int getAtk_range() {
		return atk_range;
	}

	public void setAtk_range(int atk_range) {
		this.atk_range = atk_range;
	}

	public int getIntelligence() {
		return intelligence;
	}

	public void setIntelligence(int intelligence) {
		this.intelligence = intelligence;
	}

	public int getAgility() {
		return agility;
	}

	public void setAgility(int agility) {
		this.agility = agility;
	}

	public int getStrength() {
		return strength;
	}

	public void setStrength(int strength) {
		this.strength = strength;
	}

	public int getSpeed() {
		return speed;
	}

	public void setSpeed(int speed) {
		this.speed = speed;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public List<Skill> getSkills() {
		return skills;
	}

	public void setSkills(List<Skill> skills) {
		this.skills = skills;
	}
	
	
}
