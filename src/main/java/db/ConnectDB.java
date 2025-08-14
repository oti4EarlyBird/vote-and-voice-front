package db;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;

public class ConnectDB {
	public static void main(String[] args) throws Exception {
		Class.forName("oracle.jdbc.OracleDriver");
		String jdbcUrl = "jdbc:oracle:thin:@192.168.2.63:1521:xe";
		String user = "SCOTT";
	    String passwd = "TIGER";
	    
		Connection conn = DriverManager.getConnection(jdbcUrl, user, passwd);
		System.out.println(conn.getClass().getName());
		DatabaseMetaData mdata = conn.getMetaData();
		System.out.println(mdata.getClass().getName());
		System.out.println("접속된 DB 서버 : "+
		                        mdata.getDatabaseProductName());
		conn.close();
	}
}
