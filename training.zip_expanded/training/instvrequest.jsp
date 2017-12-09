<%@page language="java" import="java.sql.*" errorPage="" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>View requests</title>
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

ResultSet qw=s.executeQuery("select count(*) from trequest,moduled,studentd where trequest.instid="+session.getAttribute("uid")+"and status=0 and trequest.mid=moduled.mid and trequest.studid=studentd.studid");

qw.next();
int a=Integer.parseInt(qw.getString(1));
if(a!=0)

{
	
	qw.close();


ResultSet rs=s.executeQuery("select * from trequest,moduled,studentd where trequest.instid="+session.getAttribute("uid")+"and status=0 and moduled.mid=trequest.mid and studentd.studid=trequest.studid");
int ii=1;
out.print("<table width='700' border=0 bgcolor=white cellpadding='10px' cellspacing='0px' class='tablee'>");
out.print("<tr bgcolor=red><th>Student name</th><th>Trade</th><th>Sem</th><th>City</th><th>Contact no</th><th>Email</th><th>Module id</th><th>Module name</th><th>Duration</th><th>Action</th></tr>");
while(rs.next())
{
	String sid=rs.getString("studid");
	String mid=rs.getString("mid");
	if(ii%2!=0)
	{
out.println("<tr><td>"+rs.getString("sname")+"</td><td>"+rs.getString("trade")+"</td><td>"+rs.getString("sem")+"</td><td>"+rs.getString("city")+"</td><td>"+rs.getString("phone")+"</td><td>"+rs.getString("email")+"</td><td>"+mid+"</td><td>"+rs.getString("mname")+"</td><td>"+rs.getString("duration")+"</td><td><a href="+"univconfirms.jsp?sid="+sid+"&mid="+mid+">Confirm</a></td></tr>");
	}
	else
	{
		out.println("<tr bgcolor=#CCFFFF><td>"+rs.getString("sname")+"</td><td>"+rs.getString("trade")+"</td><td>"+rs.getString("sem")+"</td><td>"+rs.getString("city")+"</td><td>"+rs.getString("phone")+"</td><td>"+rs.getString("email")+"</td><td>"+mid+"</td><td>"+rs.getString("mname")+"</td><td>"+rs.getString("duration")+"</td><td><a href="+"univconfirms.jsp?sid="+sid+"&mid="+mid+">Confirm</a></td></tr>");

	}
	ii++;
}
out.print("</table>");



rs.close();
con.close();
}
else
{
	out.println("<h1>No new requests</h1>");
	}
}

catch(Exception ex)
{
	out.println("exception"+ex);
}
%>

</div>

<%@include file="instfooter.jsp" %>