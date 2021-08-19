<%@page import = "Project.ConnectionProvider"%>
<%@page import = "java.sql.*"%>

<%
	String rollno = request.getParameter("rollno");
	try {
		Connection con = ConnectionProvider.getCon();
		Statement stm = con.createStatement();
		stm.executeUpdate("delete from studentresults where rollno='"+rollno +"'");
		response.sendRedirect("adminPage.jsp?msg=deleted");
	}
	catch(Exception e) {
		response.sendRedirect("adminPage.jsp?msg=invalid");
	}
%>