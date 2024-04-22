package org.Hp3.config;
// This is class is used to initialize the database.

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConfig {
	public static Connection getConnection()  {
		String DBURL = "jdbc:mysql://localhost:3306/horse_power_3?useSSL=false";
		// DB name to access
		String dbuser = "root";
		String pwd = "root";
		Connection con = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			try {
				con = DriverManager.getConnection(DBURL, dbuser, pwd);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return con;

	}

}
