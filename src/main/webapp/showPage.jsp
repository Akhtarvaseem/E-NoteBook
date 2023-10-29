
<%@page import="com.User.dto.PostDetails"%>
<%@page import="java.util.List"%>
<%@page import="com.User.dao.PostDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>show page</title>
<%@include file="all-content/allCss-Style.jsp"%>
<%
	User_Info user3=(User_Info)session.getAttribute("userD");
	if(user3==null){
		response.sendRedirect("login.jsp");
		session.setAttribute("error_login", "Please login first...");
	}
	%>

</head>
<body>
	<%@include file="all-content/nave-bar.jsp"%>
	
	<% 
	HttpSession session3=request.getSession();
	String EditSMS=(String)session3.getAttribute("updateSMS");
	
	if(EditSMS!=null)
	{
	session3.removeAttribute("updateSMS");
	
	%>
		<div class="alert alert-success text-center" role="alert"><%= EditSMS %></div>
		
	<%}
	
	%>
	
	
	
	<% 
	HttpSession session4=request.getSession();
	String ErrorSMS=(String)session3.getAttribute("ErrorSMS");
	
	if(ErrorSMS!=null)
	{
	session3.removeAttribute("ErrorSMS");
	
	%>
		<div class="alert alert-danger text-center" role="alert"><%= ErrorSMS %></div>
		
	<%}
	
	%>
	
	
	

	<div class="container">
		<h1 class="text-center">All Notes</h1>
		<div class="row">
			<div class="col-md-12">
			        
			        <%
			           if(user3!=null){
			        	  PostDao da=new PostDao();
			        	  List<PostDetails> lss= da.getAllPost(user3.getId());
			        	  
			        	  for(PostDetails ds:lss){
			        		%>  
			        <div class="card mt-2">
					<img alt="book-img" src="img/img3.jpg"
						class="card-img-top mt-2 mx-auto border" style="max-width: 80px">
					<div class="card-body  mt-2">
					 <h5 class="card-title"><%= ds.getTitle() %></h5>
					 <p><%= ds.getContent() %> </p>
					 
					 <p>
					  <b class="text-success">Publish by :</b> <em class="text-primary"><%= user3.getName() %> </em>
					 </p>
					 
					 <p>
					  <b class="text-success">Publish date :</b> <b class="text-primary" ><%= ds.getDate() %></b>
					 </p>
					 
					   <div class="container text-center mt-2">
					     <a  href="DeleteServelt?note_id=<%= ds.getId() %>" class="btn btn-danger">Delete</a>
					     <a  href="edit.jsp?note_id=<%= ds.getId()%>" class="btn btn-primary">Edit </a>
					  </div>
					
					</div>
				</div>
			        		  
			        	<%  }
			        	 
			           }
			        %>
			
			
			
			
				

			</div>

		</div>

	</div>


</body>
</html>