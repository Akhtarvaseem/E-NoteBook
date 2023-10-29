
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>home</title>

<style type="text/css">
.back-img {
	background-image: url("img/img5.webp");
	width: 100%;
	height: 79vh;
	background-repeat: no-repeat;
	background-size: cover;
}

/* .custum-footer {
	margin: 2px;
} */
</style>

<%@include file="all-content/allCss-Style.jsp"%>
</head>
<body>

<%@include file="all-content/nave-bar.jsp"%>
	<div class="container-body back-img">
		<div class="text-center">
			<h1 class="text-white p-2"><i class="fa fa-book" aria-hidden="true"></i>E-NoteBook Save Your Personal Note.</h1>
			<a href="login.jsp" class="btn btn-success"><i class="fa fa-sign-in" aria-hidden="true"></i>Login</a>
	
			<a href="register.jsp" class="btn btn-success"><i class="fa fa-user-plus" aria-hidden="true"></i>Register</a>
		</div>

	</div>

	<%@include file="all-content/footer.jsp"%>
</body>
</html>