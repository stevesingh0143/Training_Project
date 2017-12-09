<%@page language="java" import="java.sql.*,java.jdbc.odbc.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<%
try
{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:training");
Statement s=con.createStatement();
ResultSet rs=s.executeQuery("select * from studentd where username='"+request.getParameter("t1")+"' and passw='"+request.getParameter("t2")+"'");
if(rs.next())
{//out.print(rs.getString("statusa"));
	
	if(rs.getString("statusa").equals("1"))	
	{
		
		session.setAttribute("nm",rs.getString("sname"));
		session.setAttribute("id",rs.getString("studid"));
		con.close();
		response.sendRedirect("studhome.jsp");
	}
	else
	{
		con.close();	
		response.sendRedirect("studlogin.jsp?p=2");
	}
}
else
{
	con.close();	
	response.sendRedirect("studlogin.jsp?p=1");
}

}catch(Exception ex)
		{
			out.println("error"+ex);
		}

%>

</body>
</html>