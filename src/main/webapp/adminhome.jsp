<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

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
<!-- External CSS -->
<link href="css/style.css" rel="stylesheet">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light " style="background-color: #4070f4;">
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
	<img alt="Bus image" src="image/bushome.jpg" class="bus_img">
	<jsp:include page="footer.jsp"/>
</body>
</html>