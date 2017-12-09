<%@page language="java" import="java.sql.*" errorPage="" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Update</title>
<meta name="keywords" content="mini social, free download, website templates, CSS, HTML" />
<meta name="description" content="Mini Social is a free website template from templatemo.com" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet" href="css/coda-slider.css" type="text/css" media="screen" charset="utf-8" />

<script src="js/jquery-1.2.6.js" type="text/javascript"></script>
<script src="js/jquery.scrollTo-1.3.3.js" type="text/javascript"></script>
<script src="js/jquery.localscroll-1.2.5.js" type="text/javascript" charset="utf-8"></script>

<script src="js/coda-slider.js" type="text/javascript" charset="utf-8"></script>
<script src="js/jquery.easing.1.3.js" type="text/javascript" charset="utf-8"></script>

</head>
    <%@include file="studheader.jsp" %>
<%
try
{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:training");
	Statement s=con.createStatement();
	s.execute("update studentd set sname='"+request.getParameter("t1")+"',trade='"+request.getParameter("t2")+"',sem='"+request.getParameter("t3")+"',rollno='"+request.getParameter("t4")+"',address='"+request.getParameter("t5")+"',city='"+request.getParameter("t6")+"',state='"+request.getParameter("t7")+"',email='"+request.getParameter("t8")+"',gender='"+request.getParameter("t11")+"',phone='"+request.getParameter("t12")+"' where studid="+request.getParameter("sid"));
con.close();
response.sendRedirect("studedit.jsp?p=1");
}
catch(Exception ex)
{
	out.println("error "+ex);
}
%>
</div>
<%@include file="studfooter.jsp" %>