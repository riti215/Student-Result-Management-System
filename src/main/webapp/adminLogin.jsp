<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">   
 <%@include file = "components/allCSS.jsp" %>
<style>
 .login-box {
	background: rgba(0, 0, 0, 0.5);
 	display: flex;
 	flex-direction: column;
 	width: 30%;
 	border-radius: 2rem;
 	margin: 7% auto;
 	padding: 4rem 2rem;
 }
 input {
	height: 3rem;
	width: 100%;
	margin: 1rem 0;
}
a, h4 {
	color: white;
	text-decoration: none;
}
 </style>
</head>
<body style="background-image: url('bgimage.jpg'); background-size: 100% 100%; background-attachment: fixed; background-position: center; background-repeat:no-repeat;">
	<%@include file = "components/navbar.jsp" %>
    <form method="post" action="adminLoginAction.jsp">
    <div class="login-box">
        	<center><h4>Admin Login</h4></center>
            <input type="text" name="username" placeholder="Enter Username" required="required">
            <input type="password" name="password" placeholder="Enter Password" required="required">
            <input type="submit" name="submit" value="Login" style="width: 60%; margin: 1rem auto; border-radius: 1rem;">    
            </form>
            <center><h4><a href="index.jsp">Back</a></h4></center>
        </div>   
    </body>
</html>