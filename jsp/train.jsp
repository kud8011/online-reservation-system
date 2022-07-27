<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->


<link rel="stylesheet" href="success.css">
<!-- Optional JavaScript; choose one of the two! -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap Bundle with Popper -->
<script src="/js/bootstrap.min.js"></script>

<!-- <link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="footer.css"> -->


<!-- Option 2: Separate Popper and Bootstrap JS -->
<!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->

<title>ticket</title>

<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<style>
.head h1 {
	position: absolute;
	top: 16%;
	left: 36%;
	/* text-align: center; */
	text-transform: capitalize;
	text-shadow: 10px;
}

.btn a:hover {
	color: black;
}

/* body{
      background-color:rgb(255, 255, 255);
      background-image: url("/img/ticket.jpg");
      background-repeat: no-repeat;
      background-size:auto;
    }  */
img {
	width: 100%;
	height: 450px;
}

.search-item {
	position: absolute;
	top: 18%;
	left: -3%;
	margin: 20px;
	padding: auto;
	margin-top: 105px;
	margin-left: 475px;
}

.search-item input {
	/* background: transparent; */
	/* border: none; */
	border-radius: 7px;
	height: 50px;
	text-align: center;
	background-color: rgba(0, 0, 0, 0);
}

#search_button {
	width: 116px;
	background-color: rgb(197, 187, 187);
}

#search_button:hover {
	background-color: black;
	color: white;
}
*
/
</style>

</head>

<body>
	<nav class="navbar navbar-expand-lg">
		<div class="container-fluid">
			<a class="navbar-brand"><img src="img/logo.png"
				style="width: 102px; height: 45px; border-radius: 102%;"></a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item "><a class="nav-link active"
						aria-current="page" href="#">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="about.jsp">About
							US</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							Booking </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="Loginpage/ticket.jsp">Bus
									tickets</a></li>
							<li><a class="dropdown-item" href="/Loginpage/hire.jsp">Bus
									Hire</a></li>
							<li><a class="dropdown-item" href="#">Train Booking</a></li>
							<li><a class="dropdown-item" href="airplane.jsp">Airline
									Booking</a></li>



						</ul>
					<li class="nav-item"><a class="nav-link" href="#">My
							Booking</a></li>
					<li class="nav-item"><a class="nav-link"
						href="/ContactUS/contactus.jsp">Contact Us</a></li>
					</li>

				</ul>
				<form class="d-flex">
				<h6 style="color: cyan; margin-right: 20px; margin-top: 12px"> Welcome, ${mail}</h6>
					<button class="btn btn-outline-light" type="submit">
						<a href="index.jsp">Log Out</a>
					</button>
				</form>
			</div>
		</div>
	</nav>

	<section class="main">

		<img src="img/railway.jpg" alt="">
		<div class="head">
			<h1>Train Booking System</h1>
		</div>


		<form action="#" method="post">
			<div class="search-item">

				<div>

					<input type="text" name="leaving_from" id="from"
						placeholder="Leaving From"> <input type="text"
						name="going_to" id="to" placeholder="Going To"> <input
						type="date" name="departure" id="date"
						placeholder="Departure Date"> <input type="button"
						name="search_button" id="search_button" value="Search">
				</div>
			</div>
		</form>

	</section>
	<jsp:include page="footer.jsp"></jsp:include>


</body>

</html>