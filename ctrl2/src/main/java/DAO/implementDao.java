package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import metier.USER;

public class implementDao implements interfaceDao {

	@Override
	public void ajouter(USER L) {
		Connection conn = SingletonConnection.getConnection();
		PreparedStatement preparedStatement = null;

		try {
			preparedStatement = conn.prepareStatement("Insert into matable (login,mdp) values(  ? , ?  ); ");

			preparedStatement.setString(1, L.getLogin());
			
			preparedStatement.setString(2, L.getMdp());
			
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();

		}

	}

	@Override
	public List<USER> lister() {
		List<USER> prods = new ArrayList<USER>();
		Connection conn = SingletonConnection.getConnection();
		try {

			PreparedStatement ps = conn.prepareStatement("select* from matable ; ");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				USER L = new USER();

				L.setLogin(rs.getString("login"));
				L.setMdp(rs.getString("mdp"));
				prods.add(L);
			}
			ps.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return prods;
	}

	@Override
	public void supprimer(String login) {
		Connection conn = SingletonConnection.getConnection();
		try {
			PreparedStatement ps = conn.prepareStatement("delete from matable where login = ?;");
			ps.setString(1, login);
			ps.executeUpdate();

			ps.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	public void modifier(USER L, String ancienLogin) {
		java.sql.Connection conn = SingletonConnection.getConnection();
		try {
			PreparedStatement ps = conn.prepareStatement("update matable set login=?, mdp=? where login=?");
			ps.setString(1, L.getLogin());
			ps.setString(2, L.getMdp());
			ps.setString(3, ancienLogin);
			ps.executeUpdate();
			ps.close();

		} catch (SQLException e1) {
			e1.printStackTrace();

		}

	}

	@Override
	public USER getLogin(String login) {
		Connection conn = SingletonConnection.getConnection();
		USER u = new USER();
		try {
			PreparedStatement ps = conn.prepareStatement("select * from matable where login=?");
			ps.setString(1, login);
			ps.executeQuery();
			ResultSet rest = ps.executeQuery();
			while (rest.next()) {
				u = new USER();
				u.setLogin(rest.getString("login"));
				u.setMdp(rest.getString("mdp"));

			}

		} catch (SQLException e1) {
			e1.printStackTrace();

		}
		return u;
	}

}

