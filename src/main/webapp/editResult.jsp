<%@page import = "Project.ConnectionProvider"%>
<%@page import = "java.sql.*"%>

<html>
<head>
	<%@include file = "components/allCSS.jsp" %>
	<style>
		  body {
			background-color: #dbcfaf !important;
			color: white;		  
			}
		  .container {
			background: rgba(0, 0, 0, 0.5);
			width: 30%;
			margin: 6% auto;
			border-radius: 2rem;
		  }	
		  input {
		  	display: block;
		  }
		  .editForm {
		  	padding: 1rem 8rem;
		  }
	</style>
</head>
<body>
	<%@include file = "components/navbar.jsp" %>
	<%
		String rollno = request.getParameter("rollno");
		try {
			Connection con = ConnectionProvider.getCon();
			Statement stm = con.createStatement();
			ResultSet rs = stm.executeQuery("select * from studentresults where rollno='"+rollno+"'");
			while (rs.next()) {
	%>
	<div class="container">
		<form class="editForm" action="editResultAction.jsp" method="get">
			<input type="hidden" name="rollno" value="<%out.println(rollno);%>">
			<label>Roll no: </label>
			<input type="text" name="rollno" value="<%=rs.getString(1)%>" readonly>
			<label>Language: </label>
			<input type="text" name="language" value="<%=rs.getString(2)%>">
			<br/>
			<label>Mathematics: </label>
			<input type="text" name="mathematics" value="<%=rs.getString(3)%>">
			<br/>
			<label>Science: </label>
			<input type="text" name="science" value="<%=rs.getString(4)%>">
			<br/>
			<label>Social Sciences: </label>
			<input type="text" name="socialsciences" value="<%=rs.getString(5)%>">
			<br><br>
			<center><button type="submit" class="button" style="width:60%; padding: 0.5rem; border-radius: 1rem;">Save</button></center>
		</form>
	</div> 
	<%
			}
			}
		catch(Exception e) {
			System.out.println(e);
		}
	%>
</body>
</html>