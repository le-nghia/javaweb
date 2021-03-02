package LN.Dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import LN.Bean.BacSyBean;

public class BacSyDao {
	DungChung ds_sp = new DungChung();
	public ArrayList<BacSyBean> getBacSy() throws Exception {
		ArrayList<BacSyBean> ds = new ArrayList<BacSyBean>();
		ds_sp.KetNoi(); // Kết nối vào csdl.
		String sql = "select * from Doctor"; // Thực hiện câu lệnh sql.
		PreparedStatement cmd = ds_sp.cn.prepareStatement(sql);// Thực hiện câu lệnh.
		ResultSet rs = cmd.executeQuery();
		//Duyệt qua các loại.
		while (rs.next()) {
			String DoctorID = rs.getString("DoctorID");
			String DoctorName = rs.getString("DoctorName");
			String Address = rs.getString("Address");
			int PhoneNumber = rs.getInt("PhoneNumber");
			ds.add(new BacSyBean(DoctorID,DoctorName,Address, PhoneNumber));			
		}
		rs.close();
		ds_sp.cn.close();
		return ds;
	}

}
