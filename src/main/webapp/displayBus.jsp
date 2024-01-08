<%@page import="java.util.List"%>
<%@page import="com.jsp.busbooking_servlet.dao.BusDao"%>
<%@page import="com.jsp.busbooking_servlet.dto.*"%>
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
						href="userlogin.jsp">Logout</a></li>
				</ul>
				<!-- Left links -->
			</div>
			<!-- Collapsible wrapper -->
		</div>
		<!-- Container wrapper -->
	</nav>
	<!-- Navbar -->
	<!-- Scriptlet Tage -->

	<%
	BusDao busDao = new BusDao();

	List<Bus> bus=busDao.displayBus();
	%>
	<table class="table mb-10" style="background-color: #e3f2fd;">
		<thead>
			<tr>
				<th scope="col">Id</th>
				<th scope="col">Bus No</th>
				<th scope="col">Bus Name</th>
				<th scope="col">From City</th>
				<th scope="col">To City</th>
				<th scope="col">Destination</th>
				<th scope="col">Date</th>
				<th scope="col">Time</th>
				<th scope="col">Ticket Price</th>
				<th scope="col">Book</th>
			</tr>
		</thead>
		<tbody>
			<%
			for (Bus bus2 : bus) {
			%>
			<tr>
				<td><%=bus2.getId()%></td>
				<td><%=bus2.getBusNo()%></td>
				<td><%=bus2.getBusName()%></td>
				<td><%=bus2.getFromCity()%></td>
				<td><%=bus2.getToCity()%></td>
				<td><%=bus2.getDestination()%></td>
				<td><%=bus2.getDate()%></td>
				<td><%=bus2.getTime()%></td>
				<td><%=bus2.getTicketPrice()%></td>
				<td><a href="delete?id=<%=bus2.getId()%>"><button>Book</button></a></td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>

	<jsp:include page="footer.jsp" />

</body>
</html>