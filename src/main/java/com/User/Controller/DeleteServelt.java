package com.User.Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.User.dao.PostDao;

@WebServlet("/DeleteServelt")
public class DeleteServelt extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int id=Integer.parseInt(req.getParameter("note_id"));
		
		PostDao dao=new PostDao();
		 boolean f=dao.deletePost(id);
		 
			if(f) {
				System.out.println("success");
			    HttpSession session=req.getSession();
			    session.setAttribute("updateSMS", "delete Successfully");
			    resp.sendRedirect("showPage.jsp");
				
			}
			else {
				System.out.println("faild");
				 HttpSession session=req.getSession();
				    session.setAttribute("ErrorSMS", "something went wrong !");
				    resp.sendRedirect("showPage.jsp");
			}
		
	}
}
