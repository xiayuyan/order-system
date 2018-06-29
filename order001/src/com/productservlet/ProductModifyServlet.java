package com.productservlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.ProductDao;

import com.entity.product;
@WebServlet("/ProductModifyServlet")
public class ProductModifyServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public ProductModifyServlet() {
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
	private ProductDao dao = new ProductDao();
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String pid=request.getParameter("pid");
		String pname=request.getParameter("pname");
		String ppricestr=request.getParameter("pprice");
		int pprice=Integer.parseInt(ppricestr);
		String ptype=request.getParameter("ptype");
		
		
		String padd=request.getParameter("padd");
		String pdes=request.getParameter("pdes");
		
		dao.modifById(pid,pname,pprice,ptype,padd,pdes);
		List<product> list = dao.queryAll();
		request.setAttribute("products", list);
		//跳转回列表页面
		request.getRequestDispatcher("prolist.jsp").forward(request, response);
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
