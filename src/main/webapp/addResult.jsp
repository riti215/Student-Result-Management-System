<%@page import = "Project.ConnectionProvider"%>
<%@page import = "java.sql.*"%>

<% 
String rollno = request.getParameter("rollno");
String language = request.getParameter("language");
String mathematics = request.getParameter("mathematics");
String science = request.getParameter("science");
String socialsciences = request.getParameter("socialsciences");

try {
	Connection con = ConnectionProvider.getCon();
	Statement stm = con.createStatement();
	stm.executeUpdate("insert into studentresults values('"+rollno+"', '"+language+"', '"+mathematics+"', '"+science+"', '"+socialsciences+"')");
	response.sendRedirect("adminPage.jsp");
}
catch (Exception e) {
	out.println(e);
}
%>
