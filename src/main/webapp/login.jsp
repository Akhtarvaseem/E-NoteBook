<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>


<meta charset="UTF-8">
<title>register</title>
<%@include file="all-content/allCss-Style.jsp"%>
<link style="stylesheet" rel="css/style.css">
</head>
<body>
	<%@include file="all-content/nave-bar.jsp"%>

	<div class="container-body  div-mid" style="height:100vh;" >
	
		<div class="row">
			<div class="col-md-4 offset-md-4 ">

				<div class="card mt-3 mb-3">
					<div class="card-hrader text-center bg-success">
					<i class="fa fa-user fa-3x" aria-hidden="true"></i>
					<h1>Login</h1>
					</div>
					
					<!-- invalid login -->
					<%
				String logInvalid=(String)session.getAttribute("login_invalid");
					if(logInvalid!=null)
					{ 
						session.removeAttribute("login_invalid");
					%>	
					<div class="alert alert-danger" role="alert"><%= logInvalid %></div>
					
					<%	
					}
					%>
					
					
					<!-- This is for without login access home page -->
					<%
				String loginError=(String)session.getAttribute("error_login");
					if(loginError!=null)
					{ 
						session.removeAttribute("error_login");
					%>	
					<div class="alert alert-danger" role="alert"><%= loginError %></div>
					
					<%	
					}
					%>
					
				<!-- this is for logout  -->
					
					<%
				String logout=(String)session.getAttribute("logOut_Page");
					if(logout!=null)
					{ 
						session.removeAttribute("logOut_Page");
					%>	
					<div class="alert alert-success" role="alert"><%= logout %></div>
					
					<%	
					}
					%>
					
					
					<div class="card-body">
						<form action="loginservlet" method="post">
							
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Email address</label>
								    <input type="email" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp" name="uemail">
							</div>
							<div class="mb-3">
								<label for="exampleInputPassword1" class="form-label">Password</label>
								<input type="password" class="form-control"
									id="exampleInputPassword1" name="upass">
							</div>
							
							<button type="submit" class="btn btn-primary badge-pill btn-block">Login</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<%@include file="all-content/footer.jsp"%>
</body>
</html>