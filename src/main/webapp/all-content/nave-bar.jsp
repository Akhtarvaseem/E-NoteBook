<%@page import="com.User.dto.User_Info"%>
<nav
	class="navbar navbar-expand-lg navbar-dark bg-custom navebar-custom">

	<a class="navbar-brand" href="index.jsp"><i class="fa fa-pencil"
		aria-hidden="true"></i>E-NoteBook</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">

		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="Home.jsp"><i
					class="fa fa-home" aria-hidden="true"></i>Home <span
					class="sr-only">(current)</span> </a></li>
			<li class="nav-item active"><a class="nav-link" href="addNote.jsp"><i
					class="fa fa-plus-circle" aria-hidden="true"></i>Add Notes</a></li>

			<li class="nav-item active"><a class="nav-link " href="showPage.jsp"><i
					class="fa fa-address-book" aria-hidden="true"></i>Show Notes</a></li>
		</ul>

		<%
		User_Info info = (User_Info) session.getAttribute("userD");
		if (info != null) {
		%>
		<!-- profile and logout button  -->
		<a class="btn btn-light my-2 my-sm-0 mr-2" type="submit"
			data-toggle="modal" data-target="#exampleModal" href=""><i
			class="fa fa-user-circle" aria-hidden="true"></i><%=info.getName()%></a>
		<a class="btn btn-light my-2 my-sm-0" type="submit"
			href="LogoutServlet"><i class="fa fa-sign-out" aria-hidden="true"></i>Logout</a>
			
			<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="container text-center">
						<i class="fa fa-user fa-2x" aria-hidden="true"></i>
						<h5></h5>
						<table class="table">
							<tbody>
								<tr>
									<th>User Id:</th>
									<td><%= info.getId() %></td>
								</tr> 
								<tr>
									<th>User Name:</th>
									<td><%= info.getName() %></td>
								</tr>
								<tr>
									<th>User Email:</th>
									<td><%= info.getEmail() %></td>
								</tr>
								<tr>
									<th>User Password:</th>
									<td> <%= info.getPassword() %> </td>
								</tr>
							</tbody>

						</table>




						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Close</button>
					</div>
				</div>

			</div>
		</div>
	</div>
	
	<!--  model close-->
		<%
		} else {
		%>
		<a class="btn btn-light my-2 my-sm-0 mr-2" type="submit"
			href="login.jsp"><i class="fa fa-sign-in" aria-hidden="true"></i>Login</a>
		<a class="btn btn-light my-2 my-sm-0" type="submit"
			href="register.jsp"><i class="fa fa-user-plus" aria-hidden="true"></i>Register</a>
		<%
		}
		%>

	</div>



	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="container text-center">
						<i class="fa fa-user-circle fa-2x" aria-hidden="true"></i>
						<h5></h5>
						<table class="table">
							<tbody>
								<tr>
									<th>User Name:</th>
									<td></td>
								</tr>
								<tr>
									<th>User Email:</th>
									<td></td>
								</tr>
								<tr>
									<th>User Password:</th>
									<td></td>
								</tr>
							</tbody>

						</table>




						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Close</button>
					</div>
				</div>

			</div>
		</div>
	</div>
	
	<!--  model close-->
</nav>