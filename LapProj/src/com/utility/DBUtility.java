package com.utility;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.constants.DBConstants;

public class DBUtility {
	public Connection connectDB() {
		Connection conn=null;
		try {
			Class.forName(DBConstants.DRIVER);
			conn = DriverManager.getConnection(DBConstants.DBURL);
			
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return conn;
	}
	
	public void closeConnection(Connection conn) {
		try {
			conn.close();
		} catch (SQLException e) {

			e.printStackTrace();
		}
	}
	
	public void closeStatement(PreparedStatement stmt) {
		try {
			stmt.close();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	}
}
