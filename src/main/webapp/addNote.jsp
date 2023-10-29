<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<%
	User_Info user1=(User_Info)session.getAttribute("userD");
	if(user1==null){
		response.sendRedirect("login.jsp");
		session.setAttribute("error_login", "Please login first...");
	}
	%>
	
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>add note</title>
<%@include file="all-content/allCss-Style.jsp"%>
</head>
<body>
	<%@include file="all-content/nave-bar.jsp"%>

	<div class="container p-3">

		<h1 class="text-center">Add your Notes</h1>


		<div class="row">
			<div class="col-md-12">
				<form action="addNote" method="post">
					<div class="form-group">
					
					
					<%
					User_Info user=(User_Info)session.getAttribute("userD");
					if(user!=null){
				    %>
					  <input type="hidden" value="<%= user.getId()%>" name="uid"> 
				    
				    <%
					}
					%>
					
					
					  
					  
						<label for="exampleFormControlInput1">Add Title</label> <input
							type="text" class="form-control" id="exampleFormControlInput1" name="title" required="required">
					</div>

					<div class="form-group">
						<label for="exampleFormControlTextarea1">Add your content</label>
						<textarea class="form-control" id="exampleFormControlTextarea1"
							rows="10" name="content" required="required"></textarea>
					</div>
					<div class="text-center">

						<button type="submit" class="btn btn-primary">Add Notes</button>
					</div>
				</form>

			</div>

		</div>


	</div>

	<%@include file="all-content/footer.jsp"%>
</body>
</html>