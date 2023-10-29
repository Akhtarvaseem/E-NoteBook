<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>


<meta charset="UTF-8">
<title>register</title>
<%@include file="all-content/allCss-Style.jsp"%>
</head>
<body>
	<%@include file="all-content/nave-bar.jsp"%>

	<div class="container-body  div-mid " style="height: 100vh";>
		<div class="row ">
			<div class="col-md-4 offset-md-4">

				<div class="card mt-4">
					<div class="card-hrader text-center bg-success">
						<i class="fa fa-user-plus fa-3x" aria-hidden="true"></i>
						<h1>Register</h1>
					</div>


					<!-- successful register   -->
                      
                   <%
                   String msg_succ =(String)session.getAttribute("register_succ");
                      
                      if(msg_succ!=null)
                      {
                    	  session.removeAttribute("register_succ");
                   %>
                    <div class="alert alert-success" role="alert"><%= msg_succ %><a href="login.jsp">Login Click</a></div>
                    	    
                  <%     
                  }
                   %>
                   
                   <!--  for failed register   -->
                   <%
                   String msg_faild =(String)session.getAttribute("register_faild");
                      
                      if(msg_faild!=null)
                      {
                    session.removeAttribute("register_faild");   	  
                   %>
                    <div class="alert alert-danger" role="alert"><%= msg_faild %></div>
                    	    
                  <%     
                  }
                   %>

					<div class="card-body">
						<form action="userInfoServlet" method="post">
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Enter
									your Name</label> <input type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									name="name">
							</div>
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Email
									address</label> <input type="email" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									name="email">
							</div>
							<div class="mb-3">
								<label for="exampleInputPassword1" class="form-label">Password</label>
								<input type="password" class="form-control"
									id="exampleInputPassword1" name="password">
							</div>

							<button type="submit"
								class="btn btn-primary badge-pill btn-block">Register</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<%@include file="all-content/footer.jsp"%>
</body>
</html>