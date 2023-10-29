<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    	<%
	User_Info user2=(User_Info)session.getAttribute("userD");
	if(user2==null){
		response.sendRedirect("login.jsp");
		session.setAttribute("error_login", "please login first");
	}
	%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<%@include file="all-content/allCss-Style.jsp"%>

<style type="text/css">
.img{
height: 55vh;
width: 28vw;
}

.hh{
height: 100vh;
}

</style>
</head>
<body>

<%@include file="all-content/nave-bar.jsp"%>
 <div class="container-fluid p-0 ">
  <div class="card py-4 div-mid hh">
   <div class="card-body text-center ">
       <img alt="" src="img/img6.webp" class="img rounded+">
       <h1>Start Your Note Here </h1>
       <a href="addNote.jsp" class="btn btn-outline-success">Start</a>
   </div>
  
  </div>
 
 </div>
<%@include file="all-content/footer.jsp"%>
</body>
</html>