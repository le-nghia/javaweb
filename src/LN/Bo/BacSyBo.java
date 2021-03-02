package LN.Bo;

import java.util.ArrayList;

import LN.Bean.BacSyBean;

import LN.Dao.BacSyDao;


public class BacSyBo {
	BacSyDao sdao = new BacSyDao();
	ArrayList<BacSyBean> sp;
	public ArrayList<BacSyBean> getbacsy() throws Exception{
		sp = sdao.getBacSy();
		return sp;
	}
}
