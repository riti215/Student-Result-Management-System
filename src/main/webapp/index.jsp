<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Result</title>
<%@include file = "components/allCSS.jsp" %>
<style>
h1 {
	text-align: center;
	padding: 3rem;
}
.content {
	display: flex;
	justify-content: center;
  	align-items: center;
}
.sub {
	padding: 5rem;
}
p {
	padding: 0;
	margin: 0;
	fon-size: 4rem;
}
</style>
</head>

<body style="background-image: url('bgimage.jpg'); background-size: 100% 100%; background-attachment: fixed; background-position: center; background-repeat:no-repeat;">
	<%@include file = "components/navbar.jsp" %>
	<h1>Welcome to St. Xavier's School</h1>
	<div class="content">
		<div class="sub">
			<h4>Address</h4>
			<p><b>New Dushera Maidan, TT Nagar</b></p>
			<p><b>Mumbai, Maharashtra, 420026</b></p>
		</div>
		<div class="sub">
			<h4>Contact Number</h4>
			<p><b>+(91) 9890446572</b></p>
		</div>
		<div class="sub">
			<h4>Email Address</h4>
			<p><b>stxaviers441@gmail.com</b></p>
		</div>
	</div>
</body>
</html>
