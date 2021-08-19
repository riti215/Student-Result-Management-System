<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">   
  <link rel="stylesheet" type="text/css" href="style.css">  
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
 	h5 {
 		color: red;
 	}
input {
	height: 3rem;
	width: 80%;
	margin: 1rem 0;
}
button {
	border-radius: 2rem;
}
a, h4 {
	color: white;
	text-decoration: none;
}
</style>
</head>
<body style="background-image: url('bgimage.jpg'); background-size: 100% 100%; background-attachment: fixed; background-position: center; background-repeat:no-repeat;">
	<%@include file = "components/navbar.jsp" %>
	<center>
	<div class="login-box">           
	<h4>Student Login</h4>
         <h5><center>Incorrect Roll Number <br>Try again</center></h5>
		<form class="my-form"  action="studentPage.jsp" method="post">
		    <input type="text"class="form-control" name="rollno" placeholder="Enter your Roll Number">
            <input type="submit" name="submit" value="Search" style="width:200; margin: 0 auto; border-radius: 1rem;">    
         </form>
           <center><h4><a href="index.jsp">Back</a></h4></center>
     </div>   
     </center>
</body>
</html>
