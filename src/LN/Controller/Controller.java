package LN.Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import LN.Bean.BanhAnBean;
import LN.Bo.BacSyBo;
import LN.Bo.BanhAnBo;

/**
 * Servlet implementation class Controller
 */
@WebServlet("/Controller")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    BacSyBo ds = new BacSyBo();
    BanhAnBo bAn = new BanhAnBo();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
		
			request.setAttribute("dsbacsy", ds.getbacsy());
			
			String MaBS = request.getParameter("mh"); //Xử lý khi chọn một thông tin nào đó trên thẻ <li>
			String key = request.getParameter("timkiem"); // Xử lý khi tìm kiếm thông tin.
			//String key1 = request.getParameter("timkiem"); // Xử lý tìm kiếm.

			ArrayList<BanhAnBean> dsbAn;
			if(MaBS != null && MaBS != "") {
				dsbAn = bAn.timBanhAnTheoMa(MaBS);
			}else if(key != null) 
			{
				dsbAn = bAn.Timkiem(key);
			}else 
			{
				dsbAn = bAn.getloaiBenhAn();
			}
			
			request.setAttribute("dsbAn", dsbAn);
			
			
			RequestDispatcher rd = request.getRequestDispatcher("Display.jsp");
			rd.forward(request, response);
			request.getSession();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
