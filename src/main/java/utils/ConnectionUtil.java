package utils;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionUtil {
	
	private static String url = "jdbc:postgresql://localhost:5432/legado?autoReconnect=true";
	private static String user = "postgres";
	private static String password = "postgres123";
	private static Connection connection = null;
	
	private static void connect() {
		try {
				
				Class.forName("org.postgresql.Driver");
				connection = DriverManager.getConnection(url,user,password);
				connection.setAutoCommit(false);
				System.out.println("Connection is done");
			
		} catch (Exception e) {
			System.err.println("Error at ConnectionUtil.java");
			e.printStackTrace();
		}
		
	}
	
	public static Connection getConnection() {
		if (connection == null) {
			connect();
		}
		return connection;
	}
	
}
