<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Successful</title>


<style>
body {
	background-color: #FFFFCC;
}

.marg {
	width: 800px;
	margin: 0 auto;
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

h2 {
	font-family: Calibri;
	font-size: 30px;
	font-style: normal;
	font-variant: normal;
	font-weight: 400;
	line-height: 30px;
}

h3 {
	font-family: Calibri;
	font-size: 30px;
	font-style: normal;
	font-variant: normal;
	font-weight: 400;
	line-height: 30px;
}
</style>
</head>
<body>
	<div class="marg">
		<img src="res/banner.png" alt="logo" style="max-height: 150px;">
		<h3>Registration Successful.</h3>

		<form action="controlpath" method="post">

			<h2>Please enter your package details.</h2>
			<h6>Fields marked with (*) are mandatory</h6>
			<input type="hidden" name="FORM_SUBMITTED" value="REGISTER_FORM">
			Pickup Date (dd/mm/yyy)*: <br> <input type="text" name="date">
			<br> PickupTime (hh:mm 24hrs)*: <br> <input type="text"
				name="time"> <br> Approximate Weight* (grams): <br>
			<input type="text" name="weight"><br>
			<br> <input type="submit" value="Submit">


		</form>
	</div>


</body>
</html>