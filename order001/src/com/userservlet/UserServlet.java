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
		System.out.println("�����˹��췽��");
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		System.out.println("servlet����������������������");
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//��ȡ���ύ������
		String uname = request.getParameter("uname");
		String upwd = request.getParameter("upwd");
		
		if("root".equals(uname) && "123".equals(upwd)) {
			//��ȡ�Ƿ񱣴��û�������
			String daylength = request.getParameter("daylength");
			if(daylength != null && !daylength.equals("-1")){
				//����
				int day = Integer.parseInt(daylength);
				Cookie cname = new Cookie("username", uname);
				Cookie cpwd = new Cookie("userpwd",upwd);
				//���ñ���ʱ��
				cname.setMaxAge(day*24*3600);
				cpwd.setMaxAge(day*24*3600);
				//��ӵ�response
				response.addCookie(cname);
				response.addCookie(cpwd);
			}
			//���û���������session��
			HttpSession session = request.getSession();
			session.setAttribute("currName", uname);
			//���û���������request��
			request.setAttribute("abc", uname);
			//��¼����+1
			ServletContext sc = this.getServletContext();
			Integer count = (Integer)sc.getAttribute("count");
			if(count != null){
				count++;
			}else{
				count=1;
			}
			sc.setAttribute("count",count);
			//��ת���ɹ�ҳ��
//			response.sendRedirect("success.jsp");
			request.getRequestDispatcher("show.jsp").forward(request, response);
		}else{
			//��ת��ʧ��ҳ��
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
