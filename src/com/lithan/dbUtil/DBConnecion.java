package com.lithan.dbUtil;

import java.sql.DriverManager;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;

public class DBConnecion {

	public static Connection getConnection() {
		Connection connection = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("MySQL JDBC Driver Registered!");
			connection = (Connection) DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/jobportal?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC",
					"root", "");
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		return connection;
	}

	public static void closeConnection(Connection con) throws Exception {
		try {
			con.close();
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
	}

}
