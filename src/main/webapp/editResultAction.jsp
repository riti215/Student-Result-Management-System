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
		PreparedStatement ps = con.prepareStatement("update studentresults set language=?,mathematics=?,science=?,socialsciences=? where rollno=?");
		ps.setString(1,language);
		ps.setString(2,mathematics);
		ps.setString(3,science); 
		ps.setString(4,socialsciences);
		ps.setString(5,rollno);
		int i = ps.executeUpdate();
		if (i>0) {
			System.out.println("Record Updated");
		}
		response.sendRedirect("adminPage.jsp?msg=valid");
	}
	catch(Exception e) {
		response.sendRedirect("adminPage.jsp?msg=invalid");
	}
%>