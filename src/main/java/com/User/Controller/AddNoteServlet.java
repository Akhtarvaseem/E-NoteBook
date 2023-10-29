package com.User.Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.User.dao.PostDao;
import com.User.dto.PostDetails;

public class AddNoteServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		  int uid=Integer.parseInt(req.getParameter("uid")); 
		  String title=req.getParameter("title"); 
		  String content=req.getParameter("content");
		
		 
		  PostDao d=new PostDao();
		  boolean f= d.insertPost( uid, title,content);
		  if(f) {
//			  System.out.println("yes");
			  resp.sendRedirect("showPage.jsp");
		  }
		  else {
			  System.out.println("no");
		  }

	}
}
