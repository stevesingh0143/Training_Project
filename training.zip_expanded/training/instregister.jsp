<%@ page language="java" import="java.sql.*,java.jdbc.odbc.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Register</title>
</head>

<body>
<%
try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:training");
Statement s=con.createStatement();
ResultSet rs=s.executeQuery("select count(*) from instd where email like '%"+request.getParameter("t5")+"%'");
rs.next();
	if(Integer.parseInt(rs.getString(1))!=0)
	{
		con.close();
		response.sendRedirect("registeru.jsp?p=1");
	}
	else
	{
	s.execute("insert into instd(instname,address,city,state,email,passw,phoneno,website) values('"+request.getParameter("t1")+"','"+request.getParameter("t2")+"','"+request.getParameter("t3")+"','"+request.getParameter("t4")+"','"+request.getParameter("t5")+"','"+request.getParameter("t6")+"','"+request.getParameter("t7")+"','"+request.getParameter("t8")+"')");
	
		con.close();
		response.sendRedirect("registeru.jsp?p=2");
		
	}
}
catch(Exception ex)
{
	out.println("error"+ex);
}

%>
</body>
</html>