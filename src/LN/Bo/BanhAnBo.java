package LN.Bo;

import java.util.ArrayList;

import LN.Bean.BanhAnBean;
import LN.Dao.LoaiBanhAn;

public class BanhAnBo {
	
	LoaiBanhAn ldao = new LoaiBanhAn(); // Lấy từ thằng Dao cua Banh Án.
	ArrayList<BanhAnBean> ds; // Lấy từ thằng Bean của Bạnh Án.
	
	public ArrayList<BanhAnBean> getloaiBenhAn() throws Exception {
		ds = ldao.getloai();
		return ds;
	}
	public ArrayList<BanhAnBean> timBanhAnTheoMa(String DoctorID){
		ArrayList<BanhAnBean> tam = new ArrayList<BanhAnBean>();
		for(BanhAnBean s : ds)
			if((( String ) s.getDoctorID()).equalsIgnoreCase(DoctorID))
				tam.add(s);
		return tam;
	}
	public ArrayList<BanhAnBean> Timkiem(String key){
		ArrayList<BanhAnBean> tam = new ArrayList<BanhAnBean>();
		for(BanhAnBean s : ds)
			if(s.getDoctorID().toLowerCase().contains(key.toLowerCase())||
				s.getPatientID().toLowerCase().contains(key.toLowerCase()))
				tam.add(s);
		return tam;
	}
}
