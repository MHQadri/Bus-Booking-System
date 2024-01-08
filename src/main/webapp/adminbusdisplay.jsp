<%@page import="com.jsp.busbooking_servlet.dto.Bus"%>
<%@page import="java.util.List"%>
<%@page import="com.jsp.busbooking_servlet.dao.BusDao"%>
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
		<nav class="navbar navbar-expand-lg navbar-light " style="background-color: #4070f4;" >
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
						<a class="nav-link text-white" href="logout">Logout</a>
				</div>
			</div>
		</div>
	</nav>
	
	<!-- Scriptlet Tage -->

	<%
	BusDao busDao = new BusDao();

	List<Bus> bus = busDao.displayBus();
	%>
	<table class="table mb-10" style="background-color: #e3f2fd;">
		<thead >
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
				<th scope="col">Delete</th>
				<th scope="col">Update</th>
			</tr>
		</thead>
		<tbody>
			<% for(Bus bus2 : bus) {%>
				<tr>
					<td><%=bus2.getId() %></td>
					<td><%=bus2.getBusNo() %></td>
					<td><%=bus2.getBusName() %></td>
					<td><%=bus2.getFromCity() %></td>
					<td><%=bus2.getToCity() %></td>
					<td><%=bus2.getDestination() %></td>
					<td><%=bus2.getDate() %></td>
					<td><%=bus2.getTime() %></td>
					<td><%=bus2.getTicketPrice() %></td>
					<td><a href="delete?id=<%=bus2.getId()%>"><button>Delete</button></a></td>
					<td><a href="updateOpen?id=<%=bus2.getId()%>"><button>Update</button></a></td>
				</tr>
			<%}%>
		</tbody>
	</table>

<jsp:include page="footer.jsp"/>
</body>
</html>