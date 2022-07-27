<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- ===== CSS ===== -->
<link rel="stylesheet" href="UserTrainBooking.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">



<!-- link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js">
	
</script>

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js">
	
</script> -->
<title>Book A Train</title>
<style type="text/css">
.row {
	margin-bottom: 61px;
}

.v {
	border: 4px solid blue;
	background-color: blue;
	color: white;
	border-radius: 4px;
}

.v:hover {
	color: white;
	text-decoration: none;
}
</style>
</head>
<body id="body-pd">
	<div class="l-navbar" id="navbar">
		<nav class="nav">
			<div>
				<div class="nav__brand">
					<ion-icon name="menu-outline" class="nav__toggle" id="nav-toggle"></ion-icon>
					<a href="#" class="nav__logo">BOOKING</a>
				</div>
				<div class="nav__list">
					<a href="UserHome.jsp" class="nav__link active"> <ion-icon
							name="home-outline" class="nav__icon"></ion-icon> <span
						class="nav__name">Home</span>
					</a> <a href="ViewTrainBooking.jsp" class="nav__link"
						style="margin-top: 20px"> <ion-icon name="pie-chart-outline"
							class="nav__icon"></ion-icon> <span class="nav__name">My
							Booking</span>
					</a> <a href="#" class="nav__link"> <ion-icon
							name="settings-outline" class="nav__icon"></ion-icon> <span
						class="nav__name">Settings</span>
					</a>
				</div>
			</div>

			<div class="nav__link"
				style="margin-top: 114px; margin-bottom: -51px;">
				<ion-icon name="person-outline" class="nav__icon"></ion-icon>
				<span class="nav__name">${mail}</span>
			</div>
			<a href="index.jsp" class="nav__link"> <ion-icon
					name="log-out-outline" class="nav__icon"></ion-icon> <span
				class="nav__name">Log Out</span>
			</a>
		</nav>
	</div>

	<div class="div text-center ">
		<h1>Train Schedules</h1>


	</div>
	<!-- ===== IONICONS ===== -->

	<div class="cantainer">

		<link rel="stylesheet"
			href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<!--Card-->
		<div class="card shadow mb-5 bg-white rounded">

			<!--Card-Body-->
			<div class="card-body">

				<!--Card-Title-->
				<p class="card-title text-center shadow mb-5 rounded">Travel
					Booking Form</p>

				<div class="icons text-center">
					<a href="#"> <i class="fa fa-plane fa-2x" aria-hidden="true"></i></a>
					<a href="#"><i class="fa fa-bus fa-2x" aria-hidden="true"></i></a>
					<a href="#"><i class="fa fa-train fa-2x" aria-hidden="true"></i></a>


				</div>

				<hr>

				<p class="searchText">
					<strong>Search For a Train</strong>
				</p>


				<form>
					<!--Second Row-->
					<div class="row mb-3 mt-3">

						<div class="col-sm-6">
							<input type="text" placeholder="From City" name="FromCity"
								class="browser-default custom-select mb-4">
						</div>

						<div class="col-sm-6">
							<input type="text" placeholder="To City" name="ToCity"
								class="browser-default custom-select mb-4">
						</div>

					</div>


					<!--Third Row-->
					<div class="row">

						<div class="col-sm-6">
							<input placeholder="&#xf073; Departing" type="date"
								name="SelectDate" id="date-picker-example"
								class="form-control datepicker mb-4"
								style="font-family: Arial, FontAwesome" required="required">
						</div>

						<div class="col-sm-6">
							<input placeholder="&#xf073; Arriving(optional)" type="text"
								name="SelectArriavl" id="date-picker-example"
								class="form-control datepicker"
								style="font-family: Arial, FontAwesome">
						</div>

					</div>
					<a href="#AvailableBus">
						<button type="submit" class="btn btn-dark float-right mt-4">
							Find Train</button>
					</a>
				</form>
			</div>
		</div>
	</div>

	<%
	String fromCity = request.getParameter("FromCity");
	String toCity = request.getParameter("ToCity");
	String selectDate = request.getParameter("SelectDate");
	String selectArriavl = request.getParameter("SelectArriavl");
	String trainNumber = request.getParameter("trainNumber");

	session.setAttribute("fromCity", fromCity);
	session.setAttribute("toCity", toCity);
	session.setAttribute("selectDate", selectDate);
	session.setAttribute("trainnumber", trainNumber);
	%>
	<sql:setDataSource var="dbsource" driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/onlinebooking" user="root"
		password="root123" />

	<sql:query dataSource="${dbsource}" var="result">
            SELECT * from traindetails where FromStation="${fromCity}" and ToStation="${toCity}" and Departure = '${selectDate}';
        </sql:query>


	<h3 style="text-align: center">Available Trains</h3>
	<div class="row text-dark" id="AvailableBus">
		<!-- <div class="col-lg-7">  -->
		<table class="table table-dark table-hover">
			<thead>
				<tr>
					<th scope="col">Train Name</th>
					<th scope="col">Train Number</th>
					<th scope="col">Train Type</th>
					<th scope="col">from Station</th>
					<th scope="col">To Station</th>
					<th scope="col">Dept Date</th>
					<th scope="col">Arrival time</th>
					<th scope="col">Dept Time</th>
					<th scope="col">Price(In INR)</th>
					<th scope="col">Book Ticket</th>


				</tr>
			</thead>
			<c:choose>
				<c:when test="${result.getRowCount()>0}">
					<tbody>
						<c:forEach var="row" items="${result.rows}">
							<tr>
								<td><c:out value="${row.TrainName}" /></td>
								<td><c:out value="${row.TrainNumber}" /></td>
								<td><c:out value="${row.TrainType}" /></td>
								<td><c:out value="${row.FromStation}" /></td>
								<td><c:out value="${row.ToStation}" /></td>
								<td><c:out value="${row.Departure}" /></td>
								<td><c:out value="${row.DepartureTime}" /></td>
								<td><c:out value="${row.ArrivalTime}" /></td>
								<td><c:out value="${row.PriceINR}" /></td>
								<td>
									<%-- <a class="v"
							href="BusPassangerDetails.jsp?BusNumber=<c:out value="${row.BusNumber}"/>&choice=bookBusTicket ">Book</a> --%>
									<a class="v"
									href="SelectTrainSeat.jsp?TrainNumber=<c:out value="${row.TrainNumber}"/>&Price=<c:out value="${row.PriceINR}"/>&choice=bookBusTicket ">Select
										Seat</a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</c:when>
				<c:otherwise>
					<p
						style="color: Black; font-weight: bold; margin: auto; position: relative; top: 91px;"
						id="errormsg">Currently, No Records Available!!</p>
				</c:otherwise>
			</c:choose>
		</table>


	</div>

	<script src="https://unpkg.com/ionicons@5.1.2/dist/ionicons.js"></script>

	<!-- ===== MAIN JS ===== -->
	<script src="UserTrainBooking.js"></script>
</body>
</html>