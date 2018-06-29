package com.orderdetail;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.CustomDao;
import com.entity.custom;
@WebServlet("/CustomModifyServlet")
public class OrderdetailModifyServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public OrderdetailModifyServlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	private CustomDao dao = new CustomDao();
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String cid=request.getParameter("cid");
		String cname=request.getParameter("cname");
		String clink=request.getParameter("clink");
		String cphmunstr=request.getParameter("cphmun");
		int cphmun=Integer.parseInt(cphmunstr);
		
		String cadd=request.getParameter("cadd");
		String cpost=request.getParameter("cpost");
		
		dao.modifById(cid,cname,clink,cphmun,cadd,cpost);
		
		List<custom> list = dao.queryAll();
		request.setAttribute("customs", list);
		//跳转回列表页面
		request.getRequestDispatcher("cuslist.jsp").forward(request, response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doGet(request, response);
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
