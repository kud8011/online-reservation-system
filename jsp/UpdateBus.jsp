<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<%@page import="com.onlinebook.dao.BusDao, com.onlinebook.model.Bus"%>
<!DOCTYPE html>
<html>
<head>
<title>Update Bus</title>
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

<link rel="stylesheet" href="alert/dist/sweetalert.css">

<style>
.form-style-2 {
	max-width: 500px;
	padding: 20px 12px 10px 20px;
	font: 13px Arial, Helvetica, sans-serif;
}

.form-style-2-heading {
	font-weight: bold;
	font-style: italic;
	border-bottom: 2px solid #ddd;
	margin-bottom: 20px;
	font-size: 15px;
	padding-bottom: 3px;
}

.form-style-2 label {
	display: block;
	margin: 0px 0px 15px 0px;
}

.form-style-2 label>span {
	width: 100px;
	font-weight: bold;
	float: left;
	padding-top: 8px;
	padding-right: 5px;
}

.form-style-2 span.required {
	color: red;
}

.form-style-2 .tel-number-field {
	width: 40px;
	text-align: center;
}

.form-style-2 input.input-field, .form-style-2 .select-field {
	width: 48%;
}

.form-style-2 input.input-field, .form-style-2 .tel-number-field,
	.form-style-2 .textarea-field, .form-style-2 .select-field {
	box-sizing: border-box;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	border: 1px solid #C2C2C2;
	box-shadow: 1px 1px 4px #EBEBEB;
	-moz-box-shadow: 1px 1px 4px #EBEBEB;
	-webkit-box-shadow: 1px 1px 4px #EBEBEB;
	border-radius: 3px;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	padding: 7px;
	outline: none;
}

.form-style-2 .input-field:focus, .form-style-2 .tel-number-field:focus,
	.form-style-2 .textarea-field:focus, .form-style-2 .select-field:focus
	{
	border: 1px solid #0C0;
}

.form-style-2 .textarea-field {
	height: 100px;
	width: 55%;
}

.form-style-2 input[type=submit], .form-style-2 input[type=button] {
	border: none;
	padding: 8px 15px 8px 15px;
	background: #FF8500;
	color: #fff;
	box-shadow: 1px 1px 4px #DADADA;
	-moz-box-shadow: 1px 1px 4px #DADADA;
	-webkit-box-shadow: 1px 1px 4px #DADADA;
	border-radius: 3px;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
}

.form-style-2 input[type=submit]:hover, .form-style-2 input[type=button]:hover
	{
	background: #EA7B00;
	color: #fff;
}
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

			<li class="nav-item dropdown"><a href="ViewBus.jsp"
				class="nav-link"> <i class="fa fa-bus mr-3  fa-fw"></i> Bus </li>
			<li class="nav-item dropdown"><a href="ViewTrain.jsp"
				class="nav-link"> <i class="fa fa-train mr-3  fa-fw"></i> Train
			</a> <!--             <ul>
              <li><a href="addtrain.html">add Train</a></li>
              <li><a href="">View Train</a></li>

            </ul> --></li>
			<li class="nav-item dropdown"><a href="ViewFlight.jsp"
				class="nav-link"> <i class="fa fa-plane mr-3  fa-fw"></i>
					Airline
			</a></li>
		</ul>



		<p
			class="text-gray font-weight-bold text-uppercase px-3 small py-4 mb-0"></p>


		<li class="nav-item"><a href="index.jsp" class="nav-link"> <!-- <i class="fa fa-line-chart mr-3 text-primary fa-fw"></i> -->
				<i class="fa-solid fa-right-from-bracket mr-3 text-white fa-fw"></i>
				<!-- <i class="fa-solid fa-right-from-bracket"></i> --> Logout
		</a></li>
	</div>
	<!-- End vertical navbar -->


	<!-- Page content holder -->
	<div class="page-content p-5" id="content">
		<!-- Toggle button -->
		<button id="sidebarCollapse" type="button"
			class="btn btn-dark bg-white rounded-pill shadow-sm px-4 mb-4">
			<i class="fa fa-bars mr-2"></i><small
				class="text-uppercase font-weight-bold"></small>
		</button>


		<%
		BusDao dao = new BusDao();
		String busNumber = request.getParameter("BusNumber");
		Bus bus = dao.getRecordByBusNumber(busNumber);
		%>


		<!-- Demo content -->
		<h2 class="display-4 text-dark">Online Bus Booking</h2>
		<!-- <p class="lead text-white mb-0">Build a fixed sidebar using Bootstrap 4 vertical navigation and media objects.</p>  -->
		<div class="separator"></div>
		<div class="row text-dark">
			<div class="col-lg-7">
				<!-- <p class="lead">add new bus</p> -->
				<div class="form-style-2">
					<div class="cantainer">
						<div class="form-style-2-heading">Update Bus information</div>

						<form action="BusServlet" method="post">
							<label for="field1"><span>Bus Name:</span> <input
								type="text" class="input-field" name="busName"
								value="<%=bus.getBusName()%>" readonly="readonly" /> </label> <label
								for="field2"><span>Bus Number:</span> <input type="text"
								class="input-field" name="busNumber"
								value="<%=bus.getBusNumber()%>" readonly="readonly" /> </label> <label
								for="field2"><span>Bus Type:</span> <input type="text"
								class="input-field" name="busType" value="<%=bus.getBusType()%>"
								readonly="readonly" /> </label> <label for="field3"><span>From
									Station:</span> <input type="text" class="input-field"
								name="fromStation" value="<%=bus.getFromStation()%>" /> </label> <label
								for="field4"><span>To Station:</span> <input type="text"
								class="input-field" name="toStation"
								value="<%=bus.getToStation()%>" /> </label> <label for="field5"><span>Departure
									date:</span> <input type="date" class="input-field" name="departure"
								value="<%=bus.getDeparture()%>" /> </label> <label for="field5"><span>Departure
									Time:</span> <input type="time" class="input-field"
								name="departureTime" value="<%=bus.getDepartureTime()%>" /> </label> <label
								for="field5"><span>Arrival Time:</span> <input
								type="time" class="input-field" name="ArrivalTime"
								value="<%=bus.getArrivalTime()%>" /> </label> <label for="field5"><span>Price(In
									INR)</span> <input type="number" class="input-field" name="priceINR"
								value="<%=bus.getPrice()%>" /> </label> <input type="hidden"
								id="status" value="<%=request.getAttribute("status")%>">

							<label><span></span> <input type="submit" value="update"
								name="choice" /> </label>
						</form>
					</div>
				</div>
				<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

				<script type="text/javascript">
					var status = document.getElementById("status").value;
					if (status == "success") {
						swal("Good job Admin",
								"you Have Successfuly Updated Bus", "success");

					} else {
						swal("Update", "Please Be Carefull While Updating", "warning");
					}
				</script>

			</div>
			<!-- End demo content -->
</body>
</html>

