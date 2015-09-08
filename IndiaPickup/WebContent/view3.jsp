<%@page import="in.gov.indiapost.BusinessService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="in.gov.indiapost.BusinessService"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>
body {
	background-color: #FFFFCC;
}

.marg {
	width: 800px;
	margin: 0 auto;
}

h3 {
	font-family: Calibri;
	font-size: 30px;
	font-style: normal;
	font-variant: normal;
	font-weight: 400;
	line-height: 30px;
}

h4 {
	font-family: Calibri;
	font-size: 20px;
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




		<h3>All details are successfully saved</h3>


		<%
			BusinessService reg = (BusinessService) request.getAttribute("reg");
			reg.getTime();
		%>

		<h4>
			Request for a pick up has been generated for
			<%=reg.getFname()%>
			<%=reg.getLname()%><br> Please check your email
			<%=reg.getEmail()%>
			for a confirmation message.<br> Your pick up point is
			<%=reg.getAddress()%>
			<br>on
			<%=reg.getDate()%>
			at
			<%=reg.getTime()%>
			<br> Package weight is approximately
			<%=reg.getWeight()%>
			grams <br> <br> Thank you for using this service. <br><br>
			For a new pick up request click <a href="view2.jsp"
				style="color: black">here.</a><br>To register a new user chick
			<a href="view1.jsp" style="color: black">here.</a>
		</h4>
	</div>
</body>
</html>