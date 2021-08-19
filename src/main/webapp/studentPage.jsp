<%@page import = "Project.ConnectionProvider"%>
<%@page import = "java.sql.*"%>
<head>
	<style>
		body {
			background-color: lightyellow !important;
		}
		.detail {
			width: 200vh;
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
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

</head>
<%
String rollno1 = request.getParameter("rollno");
try {
	Connection con = ConnectionProvider.getCon();
	Statement stm = con.createStatement();
	ResultSet rs = stm.executeQuery("select * from studentdetails inner join studentresults where studentdetails.rollno = studentresults.rollno and studentdetails.rollno = '"+rollno1+"'");
	if (rs.next()) {
%>
<%@include file = "components/navbar.jsp" %>
  <center>
  <br/>
  <a href="studentLogin.jsp" style="text-decoration: none; color: black; font-size: 1.2rem; font-weight: bold;">Back</a>
  <br/>
  <br/>
  <div>
    <table>
      <thead>
        <tr>
          <th>School Name: St. Xavier's</th>
          <th>Grade: SSC</th>
          <th><center>Roll No: <%=rs.getString(1) %></center></th>
        </tr>
      </thead>
      <thead>
        <tr>
          <th colspan="2">Name: <%=rs.getString(2) %></th>
          <th>Gender: <%=rs.getString(3) %></th>
        </tr>
      </thead>
    </table>
  </div>
  
  <br/><br/>
  
  <table>
    <thead>
      <tr>
        <td colspan="3">Subject</td>
        <td rowspan="2">Type</td>
        <td rowspan="2">Full Marks</td>
        <td rowspan="2">Passing Marks</td>
        <td rowspan="2">Obtained Marks</td>
      </tr>
      <tr>
        <td>Code </td>
        <td colspan="2"> Name </td>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>NAS101</td>
        <td colspan="2">Language</td>
        <td>Theory</td>
        <td>100</td>
        <td> 30 </td>
        <td><%=rs.getString(6)%></td>
      </tr>
      <tr>
        <td>NAS102</td>
        <td colspan="2">Mathematics</td>
        <td>Theory</td>
        <td>100</td>
        <td>30</td>
        <td><%=rs.getString(7)%></td>
      </tr>
      <tr>
        <td>NAS103</td>
        <td colspan="2">Science</td>
        <td>Theory</td>
        <td>100</td>
        <td> 30 </td>
        <td><%=rs.getString(8)%></td>
      </tr>
      <tr>
        <td>NEE101</td>
        <td colspan="2">Social Sciences</td>
        <td>Theory</td>
        <td>100</td>
        <td> 30 </td>
        <td><%=rs.getString(9)%></td>
      </tr>
    </tbody>
    <tfoot>
      <tr>
        <td colspan="4" class="footer">Total Marks</td>
        <td>400</td>
        <td>240</td>
        <td><%int sum = rs.getInt(6) + rs.getInt(7) + rs.getInt(8) + rs.getInt(9); out.println(sum);%></td>
      </tr>
      <tr>
        <td colspan="4" class="footer">Percentage</td>
        <td colspan="3"><b><%out.println((sum*100)/400); %>%</b></td>
      </tr>
  </table>
	</center>
<%
}
else {
	response.sendRedirect("errorDgiOneView.jsp");
}
}
catch (Exception e) {
	System.out.println("Error occured" + e);
}
%>