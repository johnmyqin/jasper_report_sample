package org.krams.tutorial.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.krams.tutorial.dao.HeroDAO;
import org.krams.tutorial.model.Hero;

public class HeroImplDAO implements HeroDAO {

	private DataSource dataSource;

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	@Override
	public Hero findByHeroId(int id) {
		String sql = "SELECT * FROM HERO WHERE ID = ?";

		Connection conn = null;

		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			Hero hero = null;
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				hero = new Hero(rs.getInt("ID"),
						rs.getString("NAME"),
						rs.getString("TYPE"),
						rs.getString("ROLE"),
						rs.getString("ATK_TYPE"),
						rs.getString("BIO"),
						rs.getInt("HEALTH"),
						rs.getInt("MANA"),
						rs.getInt("DAMAGE"),
						rs.getInt("ARMOR"),
						rs.getString("SIGHT_RANGE"),
						rs.getInt("ATK_RANGE"),
						rs.getInt("INTELLIGENCE"),
						rs.getInt("AGILITY"),
						rs.getInt("STRENGTH"),
						rs.getInt("SPEED"));
			}
			rs.close();
			ps.close();
			return hero;
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
	public List<Hero> findByHeroType(String type) {
		String sql = "SELECT ID, NAME, ATK_TYPE, ROLE, TYPE FROM HERO WHERE TYPE = ?";

		Connection conn = null;
		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, type);
			List<Hero> heros = new ArrayList<Hero>();
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				heros.add(new Hero(rs.getInt("ID"),
						rs.getString("NAME").toLowerCase(),
						rs.getString("ATK_TYPE"),
						rs.getString("ROLE"),
						rs.getString("TYPE")));
			}
			rs.close();
			ps.close();
			return heros;
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
	public Hero findByHeroName(String name) {
		String sql = "SELECT * FROM HERO WHERE NAME = ?";

		Connection conn = null;

		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, name);
			Hero hero = null;
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				hero = new Hero(rs.getInt("ID"),
						rs.getString("NAME"),
						rs.getString("TYPE"),
						rs.getString("ROLE"),
						rs.getString("ATK_TYPE"),
						rs.getString("BIO"),
						rs.getInt("HEALTH"),
						rs.getInt("MANA"),
						rs.getInt("DAMAGE"),
						rs.getInt("ARMOR"),
						rs.getString("SIGHT_RANGE"),
						rs.getInt("ATK_RANGE"),
						rs.getInt("INTELLIGENCE"),
						rs.getInt("AGILITY"),
						rs.getInt("STRENGTH"),
						rs.getInt("SPEED"));
			}
			rs.close();
			ps.close();
			return hero;
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
	public List<Hero> findAllHeros() {
		String sql = "SELECT * FROM HERO";

		Connection conn = null;
		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			List<Hero> heros = new ArrayList<Hero>();
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				heros.add(new Hero(rs.getInt("ID"),
						rs.getString("NAME"),
						rs.getString("TYPE"),
						rs.getString("ROLE"),
						rs.getString("ATK_TYPE"),
						rs.getString("BIO"),
						rs.getInt("HEALTH"),
						rs.getInt("MANA"),
						rs.getInt("DAMAGE"),
						rs.getInt("ARMOR"),
						rs.getString("SIGHT_RANGE"),
						rs.getInt("ATK_RANGE"),
						rs.getInt("INTELLIGENCE"),
						rs.getInt("AGILITY"),
						rs.getInt("STRENGTH"),
						rs.getInt("SPEED")));
			}
			rs.close();
			ps.close();
			return heros;
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
