<%@page language="java" import="java.sql.*" errorPage="" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Apply</title>
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
ResultSet rs=s.executeQuery("select count(*) from trequest where studid="+session.getAttribute("id"));
rs.next();
	if(Integer.parseInt(rs.getString(1))!=0)
	{
		rs.close();
		out.println("<font color=red><b> YOU HAVE ALREADY APPLIED FOR A MODULE.. </b></font><br /><br />");
		
		ResultSet q=s.executeQuery("select * from trequest,moduled,instd where trequest.studid="+session.getAttribute("id")+" and instd.instid=trequest.instid and trequest.mid=moduled.mid");
	out.print("<table width='700' border=0 bgcolor=white cellpadding='10px' cellspacing='0px' class='tablee'>");
  out.print("<tr bgcolor=red><th>Institute Name</th><th>Module name</th><th>Module id</th><th>Duration</th><th>Action</th></tr>");
  
  
while(q.next())
{

	out.println("<tr><td>"+q.getString("instname")+"</td><td>"+q.getString("mname")+"</td><td>"+q.getString("mid")+"</td><td>"+q.getString("duration")+"</td><td><a href="+"studcancelmodule.jsp"+">Cancel module request</a></td></tr>");
}
out.print("</table>");
	q.close();
	con.close();
	}

else
{
	rs.close();
	s.execute("insert into trequest(studid,instid,mid) values("+session.getAttribute("id")+","+request.getParameter("uid")+","+request.getParameter("mid")+")");
	response.sendRedirect("studvmodule.jsp?uid="+request.getParameter("uid")+"&q=1");
	con.close();
}
}
catch(Exception ex)
		{
			out.println("error"+ex);
		}

%>
	
</div>
<%@include file="studfooter.jsp" %>
