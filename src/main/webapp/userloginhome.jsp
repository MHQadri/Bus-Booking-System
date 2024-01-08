<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bus Booking</title>
<!-- Font Awesome -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
	rel="stylesheet" />
<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
	rel="stylesheet" />
<!-- MDB -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.2.0/mdb.min.css"
	rel="stylesheet" />
<!-- MDB -->
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.2.0/mdb.min.js"></script>
<!-- External CSS -->
<link href="css/style.css" rel="stylesheet">
</head>
<body>
	<!-- Navbar -->
	<nav class="navbar navbar-expand-lg navbar-light  text-white"
		style="background-color: #4070f4;">
		<!-- Container wrapper -->
		<div class="container-fluid">
			<!-- Toggle button -->
			<button class="navbar-toggler" type="button"
				data-mdb-toggle="collapse" data-mdb-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<i class="fas fa-bars"></i>
			</button>

			<!-- Collapsible wrapper -->
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<!-- Navbar brand -->
				<a class="navbar-brand mt-2 mt-lg-0 text-white" href="index.jsp">
					Bus Ticket Booking </a>
				<!-- Left links -->
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link text-white"
						href="userloginhome.jsp">Home</a></li>
					<li class="nav-item"><a class="nav-link text-white"
						href="displayBus.jsp">Bus</a></li>
						<li class="nav-item"><a class="nav-link text-white"
						href="#">Book Ticket Report</a></li>
					<li class="nav-item"><a class="nav-link text-white"
						href="userlogout">Logout</a></li>
				</ul>
				<!-- Left links -->
			</div>
			<!-- Collapsible wrapper -->
		</div>
		<!-- Container wrapper -->
	</nav>
	<!-- Navbar -->


	<jsp:include page="footer.jsp"/>
</body>
</html>