package org.krams.tutorial.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.krams.tutorial.dao.SkillDAO;
import org.krams.tutorial.model.Skill;

public class SkillImplDAO implements SkillDAO {

	private DataSource dataSource;

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	@Override
	public Skill findBySkillId(int id) {
		String sql = "SELECT * FROM SKILL WHERE ID = ?";

		Connection conn = null;

		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			Skill skill = null;
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				skill = new Skill(rs.getInt("ID"),
						rs.getString("NAME"),
						rs.getString("FULL_NAME"),
						rs.getString("DESCRIPTION"),
						rs.getString("MANA"),
						rs.getString("COOLDOWN"),
						rs.getString("ABILITY"),
						rs.getString("AFFECTS"),
						rs.getString("DAMAGE_TYPE"),
						rs.getString("SPELL_IMMUNITY"),
						rs.getString("DAMAGE"),
						rs.getString("RANGE"),
						rs.getString("DURATION"),
						rs.getString("STUN_DURATION"),
						rs.getString("BONUS"),
						rs.getString("SCEPTER_BONUS"));
			}
			rs.close();
			ps.close();
			return skill;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			if (conn != null) {
				try {
				conn.close();
				} catch (SQLException e) {}
			}
		}
	}

	@Override
	public List<Skill> findByHeroId(int id) {
		String sql = "SELECT * FROM SKILL WHERE HERO_ID = ?";

		Connection conn = null;

		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			List<Skill> skill = new ArrayList<Skill>();
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				skill.add(
						new Skill(rs.getInt("ID"),
						rs.getString("NAME"),
						rs.getString("FULL_NAME"),
						rs.getString("DESCRIPTION"),
						rs.getString("MANA"),
						rs.getString("COOLDOWN"),
						rs.getString("ABILITY"),
						rs.getString("AFFECTS"),
						rs.getString("DAMAGE_TYPE"),
						rs.getString("SPELL_IMMUNITY"),
						rs.getString("DAMAGE"),
						rs.getString("RANGE"),
						rs.getString("DURATION"),
						rs.getString("STUN_DURATION"),
						rs.getString("BONUS"),
						rs.getString("SCEPTER_BONUS")));
			}
			rs.close();
			ps.close();
			return skill;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			if (conn != null) {
				try {
				conn.close();
				} catch (SQLException e) {}
			}
		}
	}

	@Override
	public List<Skill> findByHeroName(String name) {
		String sql = "SELECT * FROM SKILL WHERE HERO_ID IN (SELECT ID FROM HERO WHERE NAME = ?)";

		Connection conn = null;

		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, name);
			List<Skill> skills = new ArrayList<Skill>();
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Skill s = new Skill(rs.getInt("ID"),
						rs.getString("NAME"),
						rs.getString("FULL_NAME"),
						rs.getString("DESCRIPTION"),
						rs.getString("MANA"),
						rs.getString("COOLDOWN"),
						rs.getString("ABILITY"),
						rs.getString("AFFECTS"),
						rs.getString("DAMAGE_TYPE"),
						rs.getString("SPELL_IMMUNITY"),
						rs.getString("DAMAGE"),
						rs.getString("RANGE"),
						rs.getString("DURATION"),
						rs.getString("STUN_DURATION"),
						rs.getString("BONUS"),
						rs.getString("SCEPTER_BONUS"));
				skills.add(s);
			}
			rs.close();
			ps.close();
			return skills;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			if (conn != null) {
				try {
				conn.close();
				} catch (SQLException e) {}
			}
		}
	}

}
