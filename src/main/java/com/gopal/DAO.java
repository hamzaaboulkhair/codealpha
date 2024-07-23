package com.gopal;

import java.sql.Connection;
import java.sql.DriverManager;

public class DAO {
	public static Connection createConnection() {
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/attendance_db", "root", "hamza27");
		} catch (Exception e) {
			System.out.println("Connection Error: " + e.getMessage());
			e.printStackTrace();
		}
		return con;
	}
}
