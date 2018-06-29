package com.userservlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class UserServlet extends HttpServlet {
	
	/**
	 * Constructor of the object.
	 */
	public UserServlet() {
		super(); 
		System.out.println("调用了构造方法");
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		System.out.println("servlet销毁啦。。。。。。。。");
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//获取表单提交的数据
		String uname = request.getParameter("uname");
		String upwd = request.getParameter("upwd");
		
		if("root".equals(uname) && "123".equals(upwd)) {
			//获取是否保存用户名密码
			String daylength = request.getParameter("daylength");
			if(daylength != null && !daylength.equals("-1")){
				//保存
				int day = Integer.parseInt(daylength);
				Cookie cname = new Cookie("username", uname);
				Cookie cpwd = new Cookie("userpwd",upwd);
				//设置保存时间
				cname.setMaxAge(day*24*3600);
				cpwd.setMaxAge(day*24*3600);
				//添加到response
				response.addCookie(cname);
				response.addCookie(cpwd);
			}
			//将用户名保存在session中
			HttpSession session = request.getSession();
			session.setAttribute("currName", uname);
			//将用户名保存在request中
			request.setAttribute("abc", uname);
			//登录人数+1
			ServletContext sc = this.getServletContext();
			Integer count = (Integer)sc.getAttribute("count");
			if(count != null){
				count++;
			}else{
				count=1;
			}
			sc.setAttribute("count",count);
			//跳转到成功页面
//			response.sendRedirect("success.jsp");
			request.getRequestDispatcher("show.jsp").forward(request, response);
		}else{
			//跳转到失败页面
			response.sendRedirect("fail.jsp");
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doGet(request, response);
	}

	
	public void init() throws ServletException {
		System.out.println("inittttttttttttttttttttttttttttttt");
	}

}
