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
<link rel="stylesheet" href="UserBusBooking.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">

<!-- 	https://printjs-4de6.kxcdn.com/print.min.js
  https://printjs-4de6.kxcdn.com/print.min.css -->
<link rel="stylesheet"
	href="https://printjs-4de6.kxcdn.com/print.min.js">
<link rel="stylesheet"
	href="https://printjs-4de6.kxcdn.com/print.min.css">
<title>Booking Details</title>

<style type="text/css">
.row {
	margin-bottom: 61px;
}

.printlogo{ 
	width: 77px;
    height: 48px;
    position: relative;
    float: left;
    /* margin: auto; */
    /* right: 2px; */
    top: 6px;
    left: 157px;
    z-index: 1;
    border-radius: 50%;
    background-color: orange;
    opacity: 0.4;
}
.boardingtext{
	    text-align: left;
    position: relative;
    /* margin-top: 20px; */
    margin-bottom: 33px;
  background-color: #7fb1e6;
    color: #01060b;
    width: 72%;
    height: 59px;
    left: 126px;
    padding-left: 112px;
    padding-top: 10px;
    text-transform: uppercase;
}
.printdate{
        position: relative;
    float: right;
    bottom: 29px;
    right: 298px;
    font-weight: 100;
}
#printForm{ 
	    background: url(img/flightbackground.jpg);
       background-size: 73%;
    background-repeat: no-repeat;
    /* background-size: 58%; */
    background-position-x: 13px;
    background-position-y: -48px;
    /* background-color: gray; */
    z-index: -1;
}
.printForm{

	display: grid;
    grid-gap: 1rem;
    grid-column-gap: 1rem;
    grid-template-columns: 1fr 1fr 1fr;
    position: relative;
    left: 4rem;
    /* font-weight: bold; */
    border: none;
    width: 78%;
    margin: auto;
    font-size: 10px;
    top: -20px;
}
.printinput{
	position: relative;
    display: flex;
    border: none;
    width: 50%;
    padding-left: 1px;
    font-weight: 400;
    font-size: 16px;
    background: none;
    text-transform: uppercase;
}
.printcancel{ 
	position: relative;
    top: 76px;
}
.printbutton{
	border-radius: 8px;
    height: 41px;
    width: 73px;
    border: none;
    position: relative;
    /* bottom: 11px; */
    top: 66px;
    float: left;
    right: 300px;
    left: 134px;
    /* font-size: 20px; */
    background-color: #858192;
    color: aliceblue;
}
.printhappy{ 
	    height: 36px;
    left: 126px;
    position: relative;
    text-align: center;
    right: 47px;
    bottom: -1px;
    /* border: 2px solid blue; */
    width: 72%;
    background-color: #dbe0ee73;;
    padding-top: 8px;
    text-transform: uppercase;
}

@media print {
	button {
		display: none;
	}
	.v {
		display: none;
	}
	#my{display: none;}
	#navbar{
		display: none;
	}
	#MyBooking{
		display: none;
	}
	.printlogo{
		left: 0px;
	}
	.printForm{
		width: 100%;
	 }
	 .printdate{
    
    right: 150px;
   
}
	 .boardingtext{
	 	width: 100%;
	 	  left: 0px;
	 	  padding-left: 95px;
	 	}
	 .printhappy{width: 100%;
	 left: 0px;
	 }
	
}
	
}
</style>
</head>
<body id="body-pd">
	<div class="l-navbar" id="navbar">
		<nav class="nav">
			<!-- <div class="log">
                <ul>
                    <li><a href="#">Logout</a></li>
                </ul> <label for="menu" class="menu-bar"> <i class="fa fa-bars"></i> </label>
            </div> -->
			<div>
				<div class="nav__brand">
					<ion-icon name="menu-outline" class="nav__toggle" id="nav-toggle"></ion-icon>
					<a href="#" class="nav__logo">BOOKING</a>
				</div>
				<div class="nav__list">
					<a href="UserFlightBooking.jsp" class="nav__link active"> <ion-icon
							name="home-outline" class="nav__icon"></ion-icon> <span
						class="nav__name">Home</span>
					</a>

					<!-- <div class="nav__dropdown">
						<a href="#" class="nav__link"> <i class='fa fa-ticket'></i> <span
							class="nav__name">Ticket Booking</span> <i
							class='bx bx-chevron-down nav__icon nav__dropdown-icon'></i>
						</a>
						<div class="nav__dropdown-collapse">
							<div class="nav__dropdown-content">
								<a href="#" class="nav__dropdown-item">Bus</a> <a href="#"
									class="nav__dropdown-item">Train</a> <a href="#"
									class="nav__dropdown-item">Flight</a>
							</div>
						</div>
					</div> -->



					<a href="#MyBooking" class="nav__link" style="margin-top: 20px">
						<ion-icon name="pie-chart-outline" class="nav__icon"></ion-icon> <span
						class="nav__name">My Booking</span>
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


	<%
	String flightNumber = request.getParameter("flightNumber");
	%>
	<sql:setDataSource var="dbsource" driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/onlinebooking" user="root"
		password="root123" />

	<sql:query dataSource="${dbsource}" var="booking">
            SELECT fp.ID, fp.FirstName, fp.LastName, fp.age, fp.MobileNumber, fd.FlightNumber, fd.FromStation, fd.ToStation, fd.Departure, fd.DepartureTime, fd.ArrivalTime, fp.TotalSeats, fp.SeatNumbers, fp.Total_Amount from flightpassengerdetails fp inner join flightdetails fd on fp.FlightNumber = fd.FlightNumber where fp.Email = "${email}"<%-- where bp.BusNumber = "${busNumber}" --%>;
        </sql:query>


	<h3 style="text-align: center" id="my">My Bookings</h3>
	<div class="row text-dark" id="MyBooking" style="color: black">
		<!-- <div class="col-lg-7">  -->
		<table class="table table-white table-hover" id="print">
			<thead>
				<tr>
					<th scope="col">First Name</th>
					<th scope="col">Last Name</th>
					<th scope="col">Age</th>
					<th scope="col">Mobile Number</th>
					<th scope="col">Flight Number</th>
					<th scope="col">From</th>
					<th scope="col">To</th>
					<th scope="col">Departure Date</th>
					<th scope="col">Arrival Time</th>
					<th scope="col">Departure Time</th>
					<th scope="col">Total Seats</th>
					<th scope="col">Seat Number</th>
					<th scope="col">Amount Paid</th>
					<th scope="col">Action</th>


				</tr>
			</thead>
			<tbody>
				<c:forEach var="flight" items="${booking.rows}">
					<tr>
						<td><c:out value="${flight.FirstName}" /></td>
						<td><c:out value="${flight.LastName}" /></td>
						<td><c:out value="${flight.age}" /></td>
						<td><c:out value="${flight.MobileNumber}" /></td>
						<td><c:out value="${flight.FlightNumber}" /></td>
						<td><c:out value="${flight.FromStation}" /></td>
						<td><c:out value="${flight.ToStation}" /></td>
						<td><c:out value="${flight.Departure}" /></td>
						<td><c:out value="${flight.DepartureTime}" /></td>
						<td><c:out value="${flight.ArrivalTime}" /></td>
						<td><c:out value="${flight.TotalSeats}" /></td>
						<td><c:out value="${flight.SeatNumbers}" /></td>
						<td><c:out value="${flight.Total_Amount}" /></td>
						<td>
						<a class="v"
							href="FlightServlet?FlightNumber=<c:out value="${flight.FlightNumber}"/>&choice=deleteflightticket"><button type="button" class="btn btn-outline-danger">Cancel</button></a></td>
						<td>
							<a class="v" href="PrintFlightTicket.jsp?FlightNumber=<c:out value="${flight.FlightNumber}"/>&ID=<c:out value="${flight.ID}"/>"><button type="button" class="btn btn-outline-info">Ticket</button></a>
						</td>

					</tr>
				</c:forEach>
			</tbody>
		</table>


	</div>




	<script src="https://unpkg.com/ionicons@5.1.2/dist/ionicons.js"></script>

	<!-- ===== MAIN JS ===== -->
	<script src="UserBusBooking.js"></script>
<form action="">
		<input type="hidden" id="status"
			value="<%=request.getAttribute("status")%>">
	</form>

	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	<script type="text/javascript">
		var status = document.getElementById("status").value;
		if (status == "ticketDeleted") {
			swal("Sorry To Hear", "You have successfuly cancelled a ticket. If any amount debitted from your account it will be refunded within 2-3 days. Visit Again!!",
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
</body>
</html>