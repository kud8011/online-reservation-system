<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@page import="com.onlinebook.dao.TrainDao ,com.onlinebook.model.Train"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- ===== CSS ===== -->
<link rel="stylesheet" href="UserTrainBooking.css">
<link rel="stylesheet" href="BusSeat.css">
<script src="BusSeat.js"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
.card {
	background-color:white;
	border-radius: 54px;
}

.fname {
	/* margin-top: 20px; */
	margin-top: 20px;
	display: flex;
	justify-content: space-between;
	flex-wrap: wrap;
	max-width: 88%;
}

.fname input {
	padding-left: 10px;
	border-radius: 5px;
	margin-left: -103px;
	width: 21rem;
}

.inf {
	/* padding-left: 123px;
        position: relative;
        left: 150px; */
	padding-left: 123px;
	position: relative;
	justify-content: left;
}

.inf #btnPayment {
	background-color: rgb(13, 15, 20);
	border-radius: 8px;
	color: aliceblue;
}

label {
	display: inline-block;
	margin-bottom: 0.5rem;
	margin-left: -32px;
}

#btnPayment {
	display: inline-block;
	font-weight: 400;
	text-align: center;
	white-space: nowrap;
	vertical-align: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	border: 1px solid transparent;
	padding: 0.375rem 0.75rem;
	font-size: 1rem;
	line-height: 1.5;
	margin-left: -42px;
	border-radius: 0.25rem;
	transition: color .15s ease-in-out, background-color .15s ease-in-out,
		border-color .15s ease-in-out, box-shadow .15s ease-in-out;
}

#busname {
	grid-area: busname;
}

#busnumber {
	grid-area: busnumber;
}

#bustype {
	grid-area: bustype;
}

#from {
	grid-area: frome;
}

#to {
	grid-area: to;
}

#dept {
	grid-area: dept;
}

#arrivaltime {
	grid-area: arrivaltime;
}

#depttime {
	grid-area: depttime;
}

#price {
	grid-area: price;
}
</style>


<title>Passenger Details</title>
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
					<a class="nav__logo">BOOKING</a>
				</div>
				<div class="nav__list">
					<a href="UserTrainBooking.jsp" class="nav__link active"> <ion-icon
							name="home-outline" class="nav__icon"></ion-icon> <span
						class="nav__name">Home</span>
					</a> <a href="ViewTrainBooking.jsp" class="nav__link"> <ion-icon
							name="pie-chart-outline" class="nav__icon"></ion-icon> <span
						class="nav__name">My Booking</span> <a href="#" class="nav__link">
							<ion-icon name="settings-outline" class="nav__icon"></ion-icon> <span
							class="nav__name">Settings</span>
					</a>
				</div>
			</div>
			<div class="nav__link"
				style="margin-top: 160px; margin-bottom: -120px;">
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
		<h1>Enter Passenger Details</h1>
	</div>

	<%
	TrainDao dao = new TrainDao();
	String trainNumber = request.getParameter("TrainNumber");
	String choice = request.getParameter("choice");

	Train train = dao.getRecordByTrainNumber(trainNumber);
	String price = train.getPrice();

	String selectClass = request.getParameter("selectClass");
	
	String generalPrice = String.valueOf(session.getAttribute("generalPrice"));
	String sleeperPrice = String.valueOf(session.getAttribute("sleeperPrice"));
	
	String firstClassPrice = String.valueOf(session.getAttribute("firstClassPrice"));
	String firstClassACPrice = String.valueOf(session.getAttribute("firstClassACPrice"));
	
	String secondClassPrice = String.valueOf(session.getAttribute("secondClassPrice"));
	String secondClassACPrice = String.valueOf(session.getAttribute("secondClassACPrice"));

	if (sleeperPrice.equals(selectClass)) {
		selectClass = "SL - Sleeper";
	} 
	else if (firstClassPrice.equals(selectClass)) {
		selectClass = "FC - First Class";
	} 
	else if (generalPrice.equals(selectClass)) {
		selectClass = "GN - Unreserved";
	}
	
	else if (firstClassACPrice.equals(selectClass)) {
		selectClass = "1A - First Class AC";
	}
	else if (secondClassPrice.equals(selectClass)) {
		selectClass = "2S - Second Class";
	}
	else if (secondClassACPrice.equals(selectClass)) {
		selectClass = "2A - Second Class AC";
	}

	String totalSeats = request.getParameter("totalseats");
	String totalAmount = request.getParameter("totalamount");
	String trainSeatNumbers = request.getParameter("trainSeatNumbers");

	session.setAttribute("price", price);
	/* session.setAttribute("busNumber", busNumber); */
	session.setAttribute("choice", choice);
	session.setAttribute("selectClass", selectClass);
	session.setAttribute("totalseats", totalSeats);
	session.setAttribute("totalamount", totalAmount);
	session.setAttribute("trainSeatNumbers", trainSeatNumbers);
	%>


	<div class="cantainer">


		<!--Card-->

		<div class="card shadow mb-5 ">
			<p class="card-title text-center shadow mb-5 rounded">Train
				Details</p>
			<div class="inf" style="top: -64px;">

				<form action="TrainServlet">
					<div>
						<div class="fname" id="trainname">
							<label for="fname"><b>Train Name:</b></label> <input type="text"
								value="<%=train.getTrainName()%>" disabled="disabled" />
						</div>
						<div class="fname" id="trainnumber">
							<label for="fname"><b>Train Number:</b></label> <input
								type="text" name="trainNumber" id="name"
								value="<%=train.getTrainNumber()%>">
						</div>
						<div class="fname" id="traintype">
							<label for="Email"><b>Train Type</b></label> <input type="text"
								value="<%=train.getTrainType()%>" disabled="disabled">
						</div>
						<div class="fname" id="from">
							<label for="num"><b>From Station</b></label> <input type="text"
								value="<%=train.getFromStation()%>" disabled="disabled">
						</div>
						<div class="fname" id="to">
							<label for="age"><b>To Station</b></label> <input type="text"
								value="<%=train.getToStation()%>" disabled="disabled">
						</div>
						<div class="fname" id="dept">
							<label for="age"><b>Dept Date</b></label> <input type="text"
								value="<%=train.getDeparture()%>" disabled="disabled">
						</div>
						<div class="fname" id="arrivaltime">
							<label for="age"><b>Arrival time</b></label> <input type="text"
								value="<%=train.getArrivalTime()%>" disabled="disabled">
						</div>
						<div class="fname" id="depttime">
							<label for="age"><b>Dept Time</b></label> <input type="text"
								value="<%=train.getDepartureTime()%>" disabled="disabled">
						</div>
						<div class="fname" id="price">
							<label for="age"><b>Price(In INR)</b></label> <input type="text"
								value="<%=train.getPrice()%>" disabled="disabled">
						</div>


						<!--Card-Body-->
						<p class="card-title text-center shadow mb-5 rounded"
							style="display: flex; margin-left: -51px; width: 98%; margin-top: 41px; text-align: center; justify-content: space-around; padding-left: 76px;">Pasenger
							information</p>
						<div class="inf" style="padding-left: 5px; margin-top: -43px;">

							<div class="fname">
								<label for="fname"><b>First Name:</b></label> <input type="text"
									placeholder="Enter First Name" name="firstName" required>
							</div>
							<div class="fname">
								<label for="fname"><b>Last Name:</b></label> <input type="text"
									placeholder="Enter Last Name" id="name" name="lastName"
									required>
							</div>
							<div class="fname">
								<label for="Email"><b>Email ID:</b></label> <input type="email"
									placeholder="Email ID" name="email" required>
							</div>
							<div class="fname">
								<label for="num"><b>Mobile No:</b></label> <input type="tel"
									placeholder="Mobile no" name="mobileNum" pattern="[0-9]{10}"
									required>
							</div>
							<div class="fname">
								<label for="age"><b>Age:</b></label> <input type="number"
									placeholder="Age" name="age" required>
							</div>
							<div class="fname" id="trainnumber">
								<label for="fname"><b>Train Number:</b></label> <input
									type="text" name="trainNumber" id="name"
									value="<%=train.getTrainNumber()%>">
							</div>
							<div class="fname" id="totalSeats">
								<label for="fname"><b>Seats Selected:</b></label> <input
									type="text" name="totalTrainSeat" id="name"
									value="${totalseats}">
							</div>
							<div class="fname" id="totalAmounts">
								<label for="fname"><b>Total Amount:</b></label> <input
									type="text" name="totalTrainAmount" id="name"
									value="${totalamount}">
							</div>
							<div class="fname" id="seatNumbers">
								<label for="fname"><b>Seat Numbers:</b></label> <input
									type="text" name="trainSeatNumbers" id="name"
									value="${trainSeatNumbers}">
							</div>
							<div class="fname" id="seatClassType">
								<label for="fname"><b>Class Type:</b></label> <input type="text"
									name="selectClass" id="name" value="${selectClass}">
							</div>
							<button type="submit" name="choice" value="booktrainticket"
								class="mt-5" id="btnPayment">Payment</button>

						</div>
					</div>
				</form>
			</div>
		</div>
	</div>

	<script src="https://unpkg.com/ionicons@5.1.2/dist/ionicons.js"></script>

	<!-- ===== MAIN JS ===== -->
	<script src="UserTrainBooking.js"></script>
</body>
</html>