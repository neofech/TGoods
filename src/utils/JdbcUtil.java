package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class JdbcUtil {
//	在封装代码的时�?�，这段代码�?要创建一个对象，那么这个对象�?定要使用单例模式来封�?  懒汉�? �? 饿汉�?
	static JdbcUtil ju=null;
	Connection connection;
//	1.私有化构造方�?
	private JdbcUtil() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/tgou?characterEncoding=utf8";
			String name="root";
			String password="972923en";
			connection = DriverManager.getConnection(url, name, password);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public static JdbcUtil getInstace() {
		if(ju==null) {
//			�?旦被创建，就会加载到内存的静态域中，不会丢失
			ju = new JdbcUtil();
		}
		return ju;
	}
	public Connection getConn() {
		return connection;
	}
	public void setCloseConn(Connection conn) {
		if (conn !=null) {	
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	public void setClosePs(PreparedStatement ps) {
		if(ps!=null) {
			try {
				ps.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}