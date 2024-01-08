  <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style>
@media ( min-width :767px) {
	.registration {
		max-width: 400px;
	}
}
</style>
</head>
<body>
	
		<nav class="navbar navbar-expand-lg navbar-light" style="background-color: #4070f4;">
		<div class="container-fluid">
			<a class="navbar-brand text-white" href="#">Navbar</a>
			<button class="navbar-toggler" type="button"
				data-mdb-toggle="collapse" data-mdb-target="#navbarNavAltMarkup"
				aria-controls="navbarNavAltMarkup" aria-expanded="false"
				aria-label="Toggle navigation">
				<i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
				<div class="navbar-nav">
					<a class="nav-link active text-white" aria-current="page" href="adminhome.jsp">Home</a>
					 <a	class="nav-link text-white" href="addbus.jsp">Add Bus</a> 
						<a class="nav-link text-white" href="adminbusdisplay.jsp">Display Bus</a> 
						<a class="nav-link text-white" href="logout">Logout</a>
				</div>
			</div>
		</div>
	</nav>
	
	<div class="container">
		<div class="registration mx-auto d-block w-100">
			<div class="page-header text-center">
				<h1>Add Bus Here</h1>
			</div>

			<form id="member-registration" action="addbus" method="get"
				class="form-validate form-horizontal well"
				enctype="multipart/form-data">
				<fieldset>

					<div class="form-group">
						<label for="exampleInputPassword1">Bus No</label> <input
							type="text" class="form-control" id="exampleInputPassword1" name="busNo">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Bus Name</label> <input
							type="text" class="form-control" id="exampleInputPassword1" name="busName">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">From City</label> <input
							type="text" class="form-control" id="exampleInputPassword1" name="fromCity">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">To City</label> <input
							type="text" class="form-control" id="exampleInputPassword1" name="toCity">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Travel Destination</label> <input
							type="text" class="form-control" id="exampleInputPassword1" name="travelDestination">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Date</label> <input type="text"
							class="form-control" id="exampleInputPassword1" name="date">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Time</label> <input type="text"
							class="form-control" id="exampleInputPassword1" name="time">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Ticket Price</label> <input
							type="text" class="form-control" id="exampleInputPassword1" name="ticketPrice">
					</div>

					<div class="d-flex justify-content-between align-items-center">
						<div class="form-group d-flex justify-content-start">
							<button type="submit" class="btn btn-primary">Add Bus</button>
						</div>
						<div class="form-check form-group d-flex justify-content-end">
							<a href="#">Sign in instead</a>
						</div>
					</div>
				</fieldset>
			</form>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>