package com.User.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.User.dao.UserDao;
import com.User.dto.User_Info;

public class UserServelt extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String name=req.getParameter("name");
		String email=req.getParameter("email");
		String pass=req.getParameter("password");
		
		User_Info user=new User_Info();
		user.setName(name);
		user.setEmail(email);
		user.setPassword(pass);
		
		UserDao dao= new UserDao();
		boolean f = false;
		try {
			f = dao.insertUserData(user);
		} catch (Exception e) {
			
			e.printStackTrace();
		} 
		
		PrintWriter out=resp.getWriter();
		if(f==true) {
			HttpSession session=req.getSession();
			session.setAttribute("register_succ", "Register Successfully !");
			resp.sendRedirect("register.jsp");
		}
		else {
			HttpSession session=req.getSession();
			session.setAttribute("register_faild", "Something went wrong !");
			resp.sendRedirect("register.jsp");
		}
	}
	
}
