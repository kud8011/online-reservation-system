<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html>
<html>
<head>
<title>All Buses</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="admin.css">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<!-- <link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous"> -->
<style>
#button a {
	text-decoration: none;
}

a {
	color: white;
}

#button a:hover {
	text-decoration: none;
	color: white;
}

/* .v {
	background-color: red;
	border: 4px solid red;
	border-radius: 3px;
	margin-left: 12px;
}

.v:hover {
	color: white;
	text-decoration: none;
	background-color: red;
	border: 4px solid red;
}

.v1 {
	background-color: blue;
	border: 4px solid blue;
	border-radius: 3px;
}

.v1:hover {
	color: white;
	text-decoration: none;
	background-color:blue;
} */
</style>
</head>
<body>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>
	<script src="admin.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	<!-- Vertical navbar -->
	<div class="vertical-nav bg-white" id="sidebar">
		<div class="py-4 px-3 mb-4 bg-dark">
			<div class="media d-flex align-items-center">
				<img loading="lazy" src="img/admin.jpg" alt="..." width="80"
					height="80" class="mr-3 rounded-circle img-thumbnail shadow-sm">
				<div class="media-body">
					<h4 class="m-0 text-white">${mail}</h4>
					<p class="font-weight-normal text-white mb-0">Admin</p>
				</div>
			</div>
		</div>

		<p
			class="text-white font-weight-bold text-uppercase px-3 small pb-4 mb-0">Dashboard</p>

		<ul class="nav flex-column bg-dark mb-0">
		<li class="nav-item ">
				<a href="admin.jsp" class="nav-link ">
					<i class="fa fa-home mr-3  fa-fw"></i>
						Dashboard
				</a>
			
			</li>
			

			<li class="nav-item dropdown"><a href="#" class="nav-link">
					<i class="fa fa-bus mr-3  fa-fw"></i> Bus
			</a> </li>
			<li class="nav-item dropdown"><a href="ViewTrain.jsp"
				class="nav-link"> <i class="fa fa-train mr-3  fa-fw"></i> Train
			</a> 

            </li>
			<li class="nav-item dropdown"><a href="ViewFlight.jsp"
				class="nav-link"> <i class="fa fa-plane mr-3  fa-fw"></i>
					Airline
			</a> 

           </li>
           <li class="nav-item ">
				<a href="Customers.jsp" class="nav-link ">
					<i class="fa fa-users mr-3  fa-fw"></i>
						Customers
				</a>
			
			</li>

			<li class="nav-item "><a href="Feedback.jsp" class="nav-link ">
					<i class="fa fa-envelope-open mr-3  fa-fw"></i> Feedback
			</a></li>
		</ul>

		<p
			class="text-gray font-weight-bold text-uppercase px-3 small py-4 mb-0"></p>


		<li class="nav-item"><a href="index.jsp" class="nav-link"> <i
				class="fa-solid fa-right-from-bracket mr-3 text-white fa-fw"></i>
				Logout
		</a></li>
	</div>
	<!-- End vertical navbar -->

	<sql:setDataSource var="dbsource" driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/onlinebooking" user="root"
		password="root123" />

	<sql:query dataSource="${dbsource}" var="result">
            SELECT * from busdetails;
        </sql:query>


	<!-- Page content holder -->
	<div class="page-content p-5" id="content">
		<!-- Toggle button -->
		<button id="sidebarCollapse" type="button"
			class="btn btn-dark bg-white rounded-pill shadow-sm px-4 mb-4">
			<i class="fa fa-bars mr-2"></i><small
				class="text-uppercase font-weight-bold"></small>
		</button>
		<!-- Demo content -->
		<h2 class="display-4 text-dark">Online Bus Booking</h2>
		<!-- <p class="lead text-white mb-0">Build a fixed sidebar using Bootstrap 4 vertical navigation and media objects.</p>  -->
		<button type="button" id="button" class="btn btn-dark float-right ">
			<a href="AddBus.jsp">New Bus</a>
		</button>
		<div class="separator"></div>
		<div class="row text-dark">
			<!-- <div class="col-lg-7">  -->
			<table class="table table-dark table-hover">
				<thead>
					<tr>
						<th scope="col">Bus Name</th>
						<th scope="col">Bus Number</th>
						<th scope="col">Bus Type</th>
						<th scope="col">from Station</th>
						<th scope="col">To Station</th>
						<th scope="col">Dept Date</th>
						<th scope="col">Arrival time</th>
						<th scope="col">Dept Time</th>
						<th scope="col">Price(In INR)</th>
						<th scope="col">Action</th>


					</tr>
				</thead>
				<tbody>
					<c:forEach var="row" items="${result.rows}">
						<tr>
							<td><c:out value="${row.BusName}" /></td>
							<td><c:out value="${row.BusNumber}" /></td>
							<td><c:out value="${row.BusType}" /></td>
							<td><c:out value="${row.FromStation}" /></td>
							<td><c:out value="${row.ToStation}" /></td>
							<td><c:out value="${row.Departure}" /></td>
							<td><c:out value="${row.DepartureTime}" /></td>
							<td><c:out value="${row.ArrivalTime}" /></td>
							<td><c:out value="${row.PriceINR}" /></td>
							<td><a class="v1"
								href="UpdateBus.jsp?BusNumber=<c:out value="${row.BusNumber}"/>&choice=update"><button type="button" class="btn btn-primary"> <i class="fa fa-pencil-square-o"></i>
								Update</button></a>
								<a class="v"
								href="BusServlet?BusNumber=<c:out value="${row.BusNumber}"/>&choice=delete"><button type="button" class="btn btn-danger"><i class="fa fa-trash mr-2"></i>Delete</button></a>
							</td>


						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	<form action="">
		<input type="hidden" id="status"
			value="<%=request.getAttribute("status")%>">
	</form>

	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	<script type="text/javascript">
		var status = document.getElementById("status").value;
		if (status == "added") {
			swal("Excellent", "You Have Successfuly Added.",
					"success");
			
		}
		if (status == "success") {
			swal("Good job Admin", "You Have Successfuly Updated.",
					"success");

		}
		if(status == "failed"){
			{
				swal("Error, Sorry Admin", "You have not entered all fields. So,values are not updated in the system. Therfore returning the previous values. Please Try Again!!.",
						"error");

			}
		}
		if (status == "deleted") {
			swal("Great", "You Have Successfuly Deleted.",
					"success");
		}
	</script>
	<!-- End demo content -->
</body>

</html>