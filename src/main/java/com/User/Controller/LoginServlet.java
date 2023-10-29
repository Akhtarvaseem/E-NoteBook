package com.User.Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.User.dao.UserDao;
import com.User.dto.User_Info;

public class LoginServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String user_email=req.getParameter("uemail");
		String user_pass=req.getParameter("upass");
		
		User_Info info=new User_Info();
		
		info.setEmail(user_email);
		info.setPassword(user_pass);
		
		UserDao dao=new UserDao();
		
		User_Info userDao= dao.getInfo(info);
		if(userDao!=null) {
			HttpSession session=req.getSession();
			session.setAttribute("userD", userDao);
			resp.sendRedirect("Home.jsp");
		}
		else {
			HttpSession session=req.getSession();
			session.setAttribute("login_invalid","Invalid user id or password");
			resp.sendRedirect("login.jsp");
		}
	}
}
