<%@page language="java" import="java.sql.*" errorPage="" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>View modules</title>
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
    <%@include file="studheader.jsp" %>

<%
try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:training");
Statement s=con.createStatement();

ResultSet qw=s.executeQuery("select count(*) from moduled,instd where moduled.instid="+request.getParameter("uid")+" and moduled.instid=instd.instid");

qw.next();
if(Integer.parseInt(qw.getString(1))!=0)
{
	qw.close();



ResultSet rs=s.executeQuery("select * from moduled,instd where moduled.instid="+request.getParameter("uid")+" and moduled.instid=instd.instid");
out.print("<table width='700' border=0 bgcolor=white cellpadding='10px' cellspacing='0px' class='tablee'>");
out.print("<tr bgcolor=red><th>ModuleId</th><th>Institute name</th><th>City</th><th>Module name</th><th>Duration</th><th>Description</th><th>Cost</th><th>Actions</th></tr>");
int ii=1;
		while(rs.next())
		{
			String g=rs.getString("mid");
			if(ii%2!=0)
			{
			out.println("<tr><td>"+g+"</td><td>"+rs.getString("instname")+"</td><td>"+rs.getString("city")+"</td><td>"+rs.getString("mname")+"</td><td>"+rs.getString("duration")+"</td><td>"+rs.getString("description")+"</td><td>"+rs.getString("cost")+"</td><td><a href="+"apply.jsp?uid="+request.getParameter("uid")+"&mid="+g+">Apply</a></td></tr>");
			}
			else
			{
							out.println("<tr bgcolor=#CCFFFF><td>"+g+"</td><td>"+rs.getString("instname")+"</td><td>"+rs.getString("city")+"</td><td>"+rs.getString("mname")+"</td><td>"+rs.getString("duration")+"</td><td>"+rs.getString("description")+"</td><td>"+rs.getString("cost")+"</td><td><a href="+"apply.jsp?uid="+request.getParameter("uid")+"&mid="+g+">Apply</a></td></tr>");

			}
ii++;		}
out.print("</table>");
rs.close();
con.close();
if(request.getParameter("q").equals("1"))
out.println("<font color=red><B>Thank you for applying. You will be confirmed within 24 hours</b></font>");
else
out.println("");
}

else
{
	out.println("<h1>No modules</h1>");
	}
}


catch(Exception ex)
{
	out.println("error"+ex);
}


%>
</div>
<%@include file="studfooter.jsp" %>
