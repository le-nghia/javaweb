package LN.Dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class DungChung {
	public Connection cn;
	public void KetNoi() throws Exception{
		// B1: Xac dinh HQTCSDL
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		// B2: Ket noi vao CSDL
		String url ="jdbc:sqlserver://LENGHIA\\NGHIAIT:1433;databaseName=JavaKtra;user=sa; password=1997 ";
		cn = DriverManager.getConnection(url);
		System.out.println("Đã kết nối");
	}

}
