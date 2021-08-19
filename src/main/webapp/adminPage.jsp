<%@include file="adminPageActions.html"%>

<!DOCTYPE html>
<html>
<head>
	<title>Result</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">		
    <link rel="dns-prefetch" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <style>
    body {
			background-color: lightyellow;
		}
	.tablink {
		background-color: #17a2b8;
		color: white;
		border: #17a2b8;
		padding: 0.5rem;
		border-radius: 10px;
		margin: 0.5rem;
		font-size: 1.1rem;
		outline: none;
	}
		table {
			border: 2px solid black;
			display: inline-block;
			font-size: 1.2rem;
		}
		td, tr, th {
			border: 2px solid black;
			padding: 0.5rem 2rem;
			text-align: center;
		}
	
    </style>
</head>
<body>

<%@include file = "components/navbar.jsp" %>
<br>
<center>
<div class="container">
  <div class="w3-bar w3-black">    
  	<button class=" tablink" onclick="openPage(event,'allstudents')">Registered Students</button>
    <button class=" tablink" onclick="openPage(event,'addresults')">Add New Result</button>
    <button class=" tablink" onclick="openPage(event,'allresults')">All Student Results</button>
  </div>
  <br/><br/>
	<div id="allstudents" class="page">
		<h4>Registered Student Details</h4>
		<br/>
	    <table>
	      <thead>
	        <tr>
	         	<th>Roll no. </th>
	          <th>Name</th>
	          <th>Gender</th>
	          <th>Phone</th>
	        </tr>
	      </thead>
	      <tbody>
	      <%@page import = "Project.ConnectionProvider"%>
		  <%@page import = "java.sql.*"%>
	      <% try {
	    	  Connection con = ConnectionProvider.getCon();
	    	  Statement stm = con.createStatement();
	    	  ResultSet rs = stm.executeQuery("select * from studentdetails");
	    	  while (rs.next()) {
	      %>	      
	        <tr>
	          <td><%=rs.getString(1)%></td>
	          <td><%=rs.getString(2)%></td>
	          <td><%=rs.getString(3)%></td>
	          <td><%=rs.getString(4)%></td>
	        </tr>
	      </tbody>
	      <%}}
	      catch(Exception e) {
	    	  System.out.println("Error occured");
	      }
	      %>
	    </table>
	    <br/><br/>
	    <i>(For display purposes only)</i>
	</div>
  
  
  
  <div id="addresults" class="page" style="display:none">
		<h4>Add New Student Result</h4>
					<br/>
                   <form name="my-form" onsubmit="return validform()" action="addResult.jsp" method="get">
                       <div class="form-group row">
                           <label for="roll" class="col-md-4 col-form-label text-md-right">Roll Number</label>
                           <div class="col-md-6">
                               <input type="text"class="form-control" name="rollno">
                           </div>
                       </div>

                       <div class="form-group row">
                           <label for="language" class="col-md-4 col-form-label text-md-right">Language</label>
                           <div class="col-md-6">
                               <input type="text"  class="form-control" name="language">
                           </div>
                       </div>

                       <div class="form-group row">
                           <label for="maths" class="col-md-4 col-form-label text-md-right">Mathematics</label>
                           <div class="col-md-6">
                               <input type="text"  class="form-control" name="mathematics">
                           </div>
                       </div>

                       <div class="form-group row">
                           <label for="science" class="col-md-4 col-form-label text-md-right">Science & Tech</label>
                           <div class="col-md-6">
                               <input type="text"  class="form-control" name="science">
                           </div>
                       </div>

                       <div class="form-group row">
                           <label for="socialsci" class="col-md-4 col-form-label text-md-right">Social Sciences</label>
                           <div class="col-md-6">
                               <input type="text"  class="form-control" name="socialsciences">
                           </div>
                       </div>
                         
                          <div class="col-md-6 offset-md-4">
                              <button type="submit" class="btn btn-primary">
                             		Save
                              </button>
                          </div>
                     </div>
                  </form>
               </div>
	</div>


	<div id="allresults" class="w3-container w3-border page" style="display:none">
		<h4>All Student Results</h4>
		<br/>
	  <%
	  String msg = request.getParameter("msg");
	  if ("valid".equals(msg)) {
	  %>
	  <center><font style="color:green">Successfully Updated</font></center>
	  <br/>
	  <%} %>
	  
	  
	  <%
	  if ("invalid".equals(msg)) {
	  %>
	  <center><font>Something went wrong</font></center>
	  <%} %>
	  
	  
	 <%
	  if ("deleted".equals(msg)) {
	  %>
	  <center><font style="color:green">Successfully deleted</font></center>
	  <br/>
	  <%} %>
	  
	    <table>
	      <thead>
	        <tr>
	          <th>Roll Number</th>
	          <th>Language</th>
	          <th>Mathematics</th>
	          <th>Science</th>
	          <th>Social Sciences</th>
	          <th>Update</th>
	          <th>Delete</th>
	        </tr>
	      </thead>
	      <tbody>
	      <% try {
	    	  Connection con = ConnectionProvider.getCon();
	    	  Statement stm = con.createStatement();
	    	  ResultSet rs = stm.executeQuery("select * from studentresults");
	    	  while (rs.next()) { 
	      %>	      
	        <tr>
	          <td><%=rs.getString(1)%></td>
	          <td><%=rs.getString(2)%></td>
	          <td><%=rs.getString(3)%></td>
	          <td><%=rs.getString(4)%></td>
	          <td><%=rs.getString(5)%></td>
	          <td><a href="editResult.jsp?rollno=<%=rs.getString(1)%>">Update</a></td>
	          <td><a href="deleteResult.jsp?rollno=<%=rs.getString(1)%>">Delete</a></td>
	        </tr>
	      </tbody>
	      <%}}
	      catch(Exception e) {
	    	  System.out.println("Error Occurred");
	      }
	      %>
	    </table>
	</div>
</center>
</body>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
</html>
