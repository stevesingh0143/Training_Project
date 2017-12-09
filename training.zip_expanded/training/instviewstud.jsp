<%@page language="java" import="java.sql.*" errorPage="" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>View students</title>
<meta name="keywords" content="mini social, free download, website templates, CSS, HTML" />
<meta name="description" content="Mini Social is a free website template from templatemo.com" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<link href="table.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet" href="css/coda-slider.css" type="text/css" media="screen" charset="utf-8" />

<script src="js/jquery-1.2.6.js" type="text/javascript"></script>
<script src="js/jquery.scrollTo-1.3.3.js" type="text/javascript"></script>
<script src="js/jquery.localscroll-1.2.5.js" type="text/javascript" charset="utf-8"></script>

<script src="js/coda-slider.js" type="text/javascript" charset="utf-8"></script>
<script src="js/jquery.easing.1.3.js" type="text/javascript" charset="utf-8"></script>

</head>
    <%@include file="instheader.jsp" %>



<%
try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:training");
Statement s=con.createStatement();
ResultSet qw=s.executeQuery("select count(*) from trequest,studentd,moduled where trequest.instid="+session.getAttribute("uid")+" and studentd.studid=trequest.studid and moduled.mid=trequest.mid");

qw.next();
if(Integer.parseInt(qw.getString(1))!=0)
{
	qw.close();


ResultSet rs=s.executeQuery("select * from trequest,studentd,moduled where trequest.instid="+session.getAttribute("uid")+" and studentd.studid=trequest.studid and moduled.mid=trequest.mid");
out.println("<form method='post' name='frm1'>");
out.print("<table width='700' border=0 bgcolor=white cellpadding='10px' cellspacing='0px' class='tablee'>");
out.print("<tr bgcolor=red><th>Student name</th><th>Trade</th><th>Semester</th><th>Roll no</th><th>Address</th><th>City</th><th>State</th><th>Email</th><th>Phone no</th><th>Gender</th><th>Module Id</th><th>Module name</th><th>Duration</th><th>status</th></tr>");
String g;
int ii=1;
while(rs.next())
{
	if(rs.getString("status").equals("1"))
		g="Accepted";
		else
		g="Pending";
	if(ii%2!=0)
	{
out.println("<tr><td>"+rs.getString("sname")+"</td><td>"+rs.getString("trade")+"</td><td>"+rs.getString("sem")+"</td><td>"+rs.getString("rollno")+"</td><td>"+rs.getString("address")+"</td><td>"+rs.getString("city")+"</td><td>"+rs.getString("state")+"</td><td>"+rs.getString("email")+"</td><td>"+rs.getString("phone")+"</td><td>"+rs.getString("gender")+"</td><td>"+rs.getString("mid")+"</td><td>"+rs.getString("mname")+"</td><td>"+rs.getString("duration")+"</td><td>"+g+"</td></tr>");
	}
	else
	{
		out.println("<tr bgcolor=#CCFFFF><td>"+rs.getString("sname")+"</td><td>"+rs.getString("trade")+"</td><td>"+rs.getString("sem")+"</td><td>"+rs.getString("rollno")+"</td><td>"+rs.getString("address")+"</td><td>"+rs.getString("city")+"</td><td>"+rs.getString("state")+"</td><td>"+rs.getString("email")+"</td><td>"+rs.getString("phone")+"</td><td>"+rs.getString("gender")+"</td><td>"+rs.getString("mid")+"</td><td>"+rs.getString("mname")+"</td><td>"+rs.getString("duration")+"</td><td>"+g+"</td></tr>");

	}
	ii++;
	}


out.print("</table></form>");



rs.close();
con.close();
}

else
{
	out.println("<h1>No students</h1>");
	}
}

catch(Exception ex)
{
	out.println("exception"+ex);
}
%>
</div>
<%@include file="instfooter.jsp" %>