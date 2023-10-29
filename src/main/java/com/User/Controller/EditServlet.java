package com.User.Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.User.dao.PostDao;


@WebServlet("/EditServlet")
public class EditServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		
		int uid=Integer.parseInt(req.getParameter("uid"));
		String title=req.getParameter("title");
		String content=req.getParameter("content");
		PostDao dao=new PostDao();
		
		boolean f=dao.updatePost(uid, title, content);
		
		if(f) {
			System.out.println("success");
		    HttpSession session=req.getSession();
		    session.setAttribute("updateSMS", "update Successfully");
		    resp.sendRedirect("showPage.jsp");
			
		}
		else {
			System.out.println("faild");
		}
		
		
		
	}
}
