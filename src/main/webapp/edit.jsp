<%@page import="com.User.dto.PostDetails"%>
<%@page import="com.User.dao.PostDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
User_Info user1 = (User_Info) session.getAttribute("userD");
if (user1 == null) {
	response.sendRedirect("login.jsp");
	session.setAttribute("error_login", "please login first");
}
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit note</title>
<%@include file="all-content/allCss-Style.jsp"%>
</head>
<body>
	<%@include file="all-content/nave-bar.jsp"%>
	
	<%
	    int edit_id= Integer.parseInt(request.getParameter("note_id")) ;
	
	   PostDao ed=new PostDao();
	  PostDetails  pd= ed.getById(edit_id);
	
	%>

	<div class="container p-3">

		<h1 class="text-center">Edit your Notes</h1>


		<div class="row">
			<div class="col-md-12">
				<form action="EditServlet" method="post">
					<div class="form-group">


						
						<input type="hidden" value="<%= edit_id%>" name="uid">


						<label for="exampleFormControlInput1">Add Title</label> <input
							type="text" class="form-control" id="exampleFormControlInput1"
							name="title" required="required" value="<%= pd.getTitle()%>">
					</div>

					<div class="form-group">
						<label for="exampleFormControlTextarea1">Add your content</label>
						<textarea class="form-control" id="exampleFormControlTextarea1"
							rows="10" name="content" required="required"> <%= pd.getContent() %></textarea>
					</div>
					<div class="text-center">

						<button type="submit" class="btn btn-primary">Update</button>
					</div>
				</form>

			</div>

		</div>


	</div>

	<%@include file="all-content/footer.jsp"%>
</body>
</html>