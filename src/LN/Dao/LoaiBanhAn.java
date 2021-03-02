package LN.Dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;


import LN.Bean.BanhAnBean;


public class LoaiBanhAn {
	DungChung dc = new DungChung();
	public ArrayList<BanhAnBean> getloai() throws Exception {
	ArrayList<BanhAnBean> ds = new ArrayList<BanhAnBean>();
	
	dc.KetNoi(); // Kết nối vào sql:
	String sql = "select * from Examine"; // Thiết lập câu lệnh sql.
	PreparedStatement cmd = dc.cn.prepareStatement(sql); // Chạy.
	ResultSet rs = cmd.executeQuery();
	
	while(rs.next()) {
		String PatientID = rs.getString("PatientID");
		String DoctorID = rs.getString("DoctorID");
		Date ExamineDate = rs.getDate("ExamineDate");
		String Result = rs.getString("Result");
		String Treatments = rs.getString("Treatments");
		ds.add(new BanhAnBean(PatientID,DoctorID,ExamineDate,Result,Treatments));
	}
	rs.close();
	dc.cn.close(); // Đóng kết nối.
	return ds;
			
	}

}
