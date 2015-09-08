<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
<style>
body {
	background-color: #FFFFCC;
}

.marg {
	width: 800px;
	margin: 0 auto;
}

.star {
	color: red;
}

h3 {
	font-family: Calibri;
	font-size: 30px;
	font-style: normal;
	font-variant: normal;
	font-weight: 400;
	line-height: 30px;
}

h2 {
	font-family: Calibri;
	font-size: 30px;
	font-style: normal;
	font-variant: normal;
	font-weight: 400;
	line-height: 30px;
}

form {
	font-family: Calibri;
	font-size: 15px;
	font-style: normal;
	font-variant: normal;
	width: 40%;
	border: 5px solid #900000;
	padding: 20px;
}
</style>
</head>
<body>


	<div class="marg">
		<img src="res/banner.png" alt="logo" style="max-height: 150px;">
		<h2>Welcome to India Post!</h2>
		<h3>Please Register for pickup service</h3>
		<form action="controlpath" method="post">
			<h2>Enter your details</h2>
			<h6>Fields marked with (*) are mandatory</h6>
			First Name*:<br>
			<input type="text" name="fname" /> <br> Last Name*: <br> <input
				type="text" name="lname" /> <br> Email*: <br> <input
				type="text" name="email" /> <br> Address*: <input type="radio"
				name="addselect" value="home">Home <input type="radio"
				name="addselect" value="office">Office <br>
			<textarea name="address" rows="10" cols="30"></textarea>
			<br> <br> <input type="submit" value="Submit" />


		</form>
	</div>

</body>

</html>