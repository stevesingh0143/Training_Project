<%@page language="java" import="java.sql.*" errorPage="" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Reviews</title>
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

ResultSet qw=s.executeQuery("select count(*) from review,studentd where instid="+session.getAttribute("uid")+" and review.studid=studentd.studid");

qw.next();
if(Integer.parseInt(qw.getString(1))!=0)
{
	qw.close();


ResultSet rs=s.executeQuery("select reid,review,sname,rating from review,studentd where instid="+session.getAttribute("uid")+" and review.studid=studentd.studid");
out.print("<table width='700' border=0 bgcolor=white cellpadding='10px' cellspacing='0px' class='tablee'>");
  out.print("<tr bgcolor=red><th>Review id</th><th>Review</th><th>Rating</th><th>Student name</th></tr>");
  int ii=1;
while(rs.next())
{
	int i=Integer.parseInt(rs.getString("reid"));
	if(ii%2!=0)
	{
	out.println("<tr><td>"+i+"</td><td>"+rs.getString("review")+"</td><td>"+rs.getString("rating")+"</td><td>"+rs.getString("sname")+"</td></tr>");
	}
	else
	{
	out.println("<tr bgcolor=#CCFFFF><td>"+i+"</td><td>"+rs.getString("review")+"</td><td>"+rs.getString("rating")+"</td><td>"+rs.getString("sname")+"</td></tr>");

	}
	ii++;
}
out.print("</table>");

rs.close();
con.close();
}

else
{
	out.println("<h1>No reviews</h1>");
	}
}

catch(Exception ex)
{
	out.println("exception"+ex);
}

%>
</div>
<%@include file="instfooter.jsp" %>
