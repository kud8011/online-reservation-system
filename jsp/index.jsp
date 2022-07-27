<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap Bundle with Popper -->
<script src="/js/bootstrap.min.js"></script>

<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Sharp:opsz,wght,FILL,GRAD@48,400,0,0" />

<!-- External Style sheets -->
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="footer.css">

<title>Online Reservation</title>

</head>

<body>
	<!-- navbar tab -->
	<nav class="navbar navbar-expand-lg ">
		<div class="container-fluid">
			<a class="navbar-brand"><img src="img/logo.png"
				style="width: 102px; height: 45px; border-radius: 102%;"></a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
				aria-controls="navbarNavDropdown" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNavDropdown">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#">Home</a></li>

					<li class="nav-item"><a class="nav-link" href="about.jsp">About
							US</a></li>
					<li class="nav-item"><a class="nav-link"
						href="ContactUS/contactus.jsp">Contact US</a></li>
				</ul>
			</div>
			<span class="material-symbols-sharp"> person </span>
			<button type="button" class="btn btn-outline-primary ">
				<a href="Login.jsp"> Login/Signup </a>
			</button>
		</div>
	</nav>

	<!-- slide  -->
	<div id="carouselExampleCaptions" class="carousel slide carousel-fade"
		data-bs-ride="carousel">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item ">
				<img src="img/1.avif" class="d-block " alt="..."
					style="width: 100%; height: 500px;">
				<div class="carousel-caption d-none d-md-block">
					<h5>Life is short, so get on a Bus</h5>
					<p>Some representative placeholder content for the first slide.</p>
				</div>
			</div>
			<div class="carousel-item ">
				<img src="img/train.jpg" class="d-block " alt="..."
					style="width: 100%; height: 500px;">
				<div class="carousel-caption d-none d-md-block">
					<h5>We are Everywhere in the World</h5>
					<p>Travelling is a great part of life but it is even better
						when it is in your own city.</p>
				</div>
			</div>
			<div class="carousel-item active">
				<img src="img/air.jpg" class="d-block" alt="..."
					style="width: 100%; height: 500px;">
				<div class="carousel-caption d-none d-md-block">
					<h5>Adventure is worthwhile..</h5>
					<p>Until you spread your wings, you'll have no idea how far you can fly.</p>
				</div>
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>
	<div class="container marketing">

		<!-- Three columns of text below the carousel -->
		<div class="row">
			<div class="col-lg-4">
				<img class="bd-placeholder-img rounded-circle"
					style="height: 200px;" src="img/card.jpg" alt="">
				<!-- <svg  width="140" height="140" xmlns="/img/card.jpg" role="img" aria-label="Placeholder: 140x140" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#777"></rect><text x="50%" y="50%" fill="#777" dy=".3em">140x140</text></svg> -->

				<h2>Global Access</h2>
				<p>Access our Reservation system from anywhere and find out how
					many seat are avialable</p>
				<p>
					<a class="btn btn-secondary" href="Loginpage/Login.jsp">Book
						now »</a>
				</p>
			</div>
			<!-- /.col-lg-4 -->
			<div class="col-lg-4">
				<img class="bd-placeholder-img rounded-circle"
					style="height: 200px;" src="img/train1.jpg" alt="">
				<!-- <svg class="bd-placeholder-img rounded-circle"  xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 140x140" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#777"></rect><text x="50%" y="50%" fill="#777" dy=".3em">140x140</text></svg> -->

				<h2>Easy Booking</h2>
				<p>Book your ticket easily from anywhere. User friendly
					responsive platform</p>
				<p>
					<a class="btn btn-secondary" href="Loginpage/Login.jsp">Book
						now »</a>
				</p>
			</div>
			<!-- /.col-lg-4 -->
			<div class="col-lg-4">
				<img class="bd-placeholder-img rounded-circle"
					style="height: 200px;" src="img/air2.jpg" alt="">
				<!-- <svg class="bd-placeholder-img rounded-circle" width="140" height="140" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 140x140" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#777"></rect><text x="50%" y="50%" fill="#777" dy=".3em">140x140</text></svg> -->

				<h2>Fast Accessing</h2>
				<p>Our services allows lighting speed Access to the system and
					easy support tools also included .</p>
				<p>
					<a class="btn btn-secondary" href="Loginpage/Login.jsp">Book
						now »</a>
				</p>
			</div>
			<!-- /.col-lg-4 -->
		</div>
		<!-- /.row -->


		<!-- START THE FEATURETTES -->

		<hr class="featurette-divider">

		<div class="row featurette">
			<div class="col-md-7">
				<h2 class="featurette-heading">Seat of your choice.</h2>
				<p class="lead">You can choose a seat of your choice from the
					sitting arrangement and pay only what you should pay and nothing
					more.</p>
			</div>
			<div class="col-md-5">
				<img src="img/slide2.jpg"
					class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto"
					alt="">
				<!-- <svg class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500" height="500" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#eee"></rect><text x="50%" y="50%" fill="#aaa" dy=".3em">500x500</text></svg> -->

			</div>
		</div>

		<hr class="featurette-divider">

		<div class="row featurette">
			<div class="col-md-7 order-md-2">
				<h2 class="featurette-heading">Clear and simple process.</h2>
				<p class="lead">No hidden catch or charges are there. It is very
					simple to book online and you get an overview of the entire
					process.</p>
			</div>
			<div class="col-md-5 order-md-1">
				<img src="img/easy.jpg"
					class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto"
					width="400px" alt="">
				<!-- <svg class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500" height="500" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#eee"></rect><text x="50%" y="50%" fill="#aaa" dy=".3em">500x500</text></svg> -->

			</div>
		</div>

		<hr class="featurette-divider">

		<div class="row featurette">
			<div class="col-md-7">
				<h2 class="featurette-heading">Commission Free</h2>
				<p class="lead">When you book tickets through a travel agency or
					a travel agent then you have to pay some additional amount as
					commission fee but if you book online you get commission free
					booking.</p>
			</div>
			<div class="col-md-5">
				<img src="img/pament.jpg " style="height: 300px;"
					class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto"
					width="500px" alt="">
				<!-- <svg class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500" height="500" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#eee"></rect><text x="50%" y="50%" fill="#aaa" dy=".3em">500x500</text></svg> -->

			</div>
		</div>

		<hr class="featurette-divider">

		<!-- /END THE FEATURETTES -->

		<!-- Footer -->
		<jsp:include page="footer.jsp"></jsp:include>
		<form action="">
			<input type="hidden" id="status"
				value="<%=request.getAttribute("status")%>">
		</form>

		<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
		<link rel="stylesheet" href="alert/dist/sweetalert.css">
		<script type="text/javascript">
			var status = document.getElementById("status").value;
			if (status == "feedback_Sent") {
				swal("Sent", "Thank You!!", "success");

			}
		</script>
</body>

</html>