<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>


<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
	
<title>Transparent login form</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Poppins', sans-serif;
}

html {
	background: url("img/lg3.jpeg");
	/*  background-color:black;
 */
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	height: 600px;
}

body {
	display: grid;
	place-items: center;
	text-align: center;
	background-size: cover;
	margin-left: -11px;
}

.content {
	width: 330px;
	border-radius: 15px;
	padding: 40px 30px;
	margin-top: 100px;
	box-shadow: inset -2px -1px 20px 7px #ccc, inset 3px 3px 19px 3px
		#333333;
}

.content .text {
	font-size: 25px;
	font-weight: 600;
	margin-bottom: 35px;
	color: rgb(247, 233, 233);
}

.content .field {
	height: 50px;
	width: 100%;
	display: flex;
	position: relative;
	margin-bottom: 19px;
}

.field input {
	height: 100%;
	width: 100%;
	padding-left: 45px;
	font-size: 18px;
	outline: none;
	border: none;
	color: #e0d2d2;
	border: 1px solid rgba(255, 255, 255, 0.438);
	border-radius: 8px;
	background: rgba(105, 105, 105, 0);
}

.field input::placeholder {
	color: #e0d2d2a6;
}

.field:nth-child(2) {
	margin-top: 20px;
}

.field span {
	position: absolute;
	width: 50px;
	line-height: 50px;
	color: #ffffff;
}

button {
	margin: 25px 0 0 0;
	width: 100%;
	height: 50px;
	color: rgb(238, 226, 226);
	font-size: 18px;
	font-weight: 600;
	border: 2px solid rgba(255, 255, 255, 0.438);
	border-radius: 8px;
	background: rgba(105, 105, 105, 0);
	margin-top: 10px;
	outline: none;
	cursor: pointer;
	border-radius: 8px;
}

.content .or {
	color: rgba(255, 255, 255, 0.733);
	margin-top: 9px;
}

.icon-button {
	margin-top: 15px;
}

.icon-button span {
	padding-left: 17px;
	padding-right: 17px;
	padding-top: 6px;
	padding-bottom: 6px;
	color: rgba(244, 247, 250, 0.795);
	border-radius: 5px;
	line-height: 30px;
	background: rgba(255, 255, 255, 0.164);
	backdrop-filter: blur(10px);
}

.icon-button span.facebook {
	margin-right: 17px;
}

button:hover, .icon-button span:hover {
	background-color: #a33b428c;
}

.signup {
	color: white;
	margin-top: 6px;
}

.signup a {
	text-decoration: none;
	color: #c9955c;
	font-weight: bold;
}
</style>
<script type="text/javascript">
	function validate() {
		var Email = document.getElementById("email").value;
		var Password = document.getElementById("pass").value;

		if (Email.indexOf("@") > -1) {
			document.getElementById("div1").innerHTML = "";
		} else {
			document.getElementById("div1").innerHTML = "Enter the correct email address";
			document.getElementById("div1").style.color = "#f67676";

		}
		if (Password.length < 8) {
			document.getElementById("div2").innerHTML = "Password should not be Null";
			document.getElementById("div2").style.color = "#f67676";
		} else {
			document.getElementById("div2").innerHTML = "";
		}
	}

	function login() 
	{
		var email = document.getElementById("email").value;
		var pass = document.getElementById("pass").value;
		var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
		if (email == '') 
		{
			alert("Please enter user name.");
		} 
		else if (pass == '') 
		{
			alert("enter the password");
		} 
		else if (!filter.test(email)) 
		{
			alert("Enter valid email id.");
		} 
		else if (pass.length < 8) {
			alert("Password should be a grether then 8 and match to your password ");
		} 
		 else 
		{
			alert('If entered credentials are correct, You will be redirect to Home Page or else you will be redirect to login to enter correct credentials. Therefore before login ensure you entered details are correct.');

		} 
	}
	
</script>
</head>

<body>
	<div class="content">
		<div class="text">Login Form</div>
		<form action="LoginServlet" method="post">
			<div class="field">
				<span class="fa fa-user"></span> <input type="email" name="email"
					id="email" placeholder="Email Id" required onblur="validate()">

			</div>
			<span id="div1"></span>
			<div class="field">
				<span class="fa fa-lock"></span> <input type="password" name="pass"
					id="pass" placeholder="Password" onblur="validate()">

			</div>
		
			<span id="div2"></span>
			<button type="submit" value="login" name="action" onclick="login()">Log
				in</button>
			<div class="or">Or</div>
			<div class="signup">
				Don't have account? <a href="signup.jsp">Signup Now</a>
			</div>
		</form>
	</div>


	
<form action="LoginServlet">
	<input type="hidden" id="loginstatus"
			value="<%=request.getAttribute("loginstatus")%>">
			</form>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	
	<script>
		var loginstatus = document.getElementById("loginstatus").value;
		console.log(loginstatus);
		if (loginstatus == "loginfailed") {
			swal("Wrong input", "You Have Entered wrong credentials.",
					"error");

		}
	
		
	</script>

</body>

</html>


