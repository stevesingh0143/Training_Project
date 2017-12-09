<%@page language="java" import="java.sql.*" errorPage="" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>View institues</title>
<meta name="keywords" content="mini social, free download, website templates, CSS, HTML" />
<meta name="description" content="Mini Social is a free website template from templatemo.com" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet" href="css/coda-slider.css" type="text/css" media="screen" charset="utf-8" />
<link rel="stylesheet" href="table.css" type="text/css"/>

<script src="js/jquery-1.2.6.js" type="text/javascript"></script>
<script src="js/jquery.scrollTo-1.3.3.js" type="text/javascript"></script>
<script src="js/jquery.localscroll-1.2.5.js" type="text/javascript" charset="utf-8"></script>

<script src="js/coda-slider.js" type="text/javascript" charset="utf-8"></script>
<script src="js/jquery.easing.1.3.js" type="text/javascript" charset="utf-8"></script>
</head>

<%@include file="admheader.jsp" %>

<%
try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:training");
Statement s=con.createStatement();
ResultSet qw=s.executeQuery("select count(*) from instd where status=1");
qw.next();
if(Integer.parseInt(qw.getString(1))!=0)
{
	qw.close();


ResultSet rs=s.executeQuery("select * from instd where status=1");
out.println("<form method='post' name='frm1' action='updatei.jsp?uid="+request.getParameter("uid")+"'>");
out.print("<table width='700' border=0 bgcolor=white cellpadding='10px' cellspacing='0px' class='tablee'>");
out.print("<tr bgcolor=red><th>InstituteId</th><th>Insitute name</th><th>Address</th><th>City</th><th>State</th><th>Website</th><th>phoneno</th><th>Email</th><th>Password</th><th>Ratings</th><th colspan='3'>Actions</th></tr>");
int ii=1;
while(rs.next())
{
	String g=rs.getString("website");
	
	String i=rs.getString("instid");
	if(ii%2!=0)
	{
	if(request.getParameter("uid")!=null && request.getParameter("uid").equals(i))
	{
out.println("<tr><td>"+i+"</td><td><input name='t1' type='text' value='"+rs.getString("instname")+"' /></td><td><input name='t2' type='text' value='"+rs.getString("address")+"' /></td><td><input name='t3' type='text' value='"+rs.getString("city")+"' /></td><td><input name='t4' type='text' value='"+rs.getString("state")+"' /></td><td><input name='t5' type='text' value='"+g+"' /></td><td><input name='t6' type='text' value='"+rs.getString("phoneno")+"' /></td><td><input name='t7' type='text' value='"+rs.getString("email")+"' /></td><td><input name='t8' type='text' value='"+rs.getString("passw")+"' /></td><td><input name='t9' type='text' value='"+rs.getString("ratings")+"' /></td><td><input type='button' value='Update' onclick='xyz()' /></td><td><b><a href="+"vinst1.jsp"+">Cancel</a>"+"</td></font></tr>");
	}
	else	
	{
out.println("<tr><b><td>"+i+"</td><td>"+rs.getString("instname")+"</td><td>"+rs.getString("address")+"</td><td>"+rs.getString("city")+"</td><td>"+rs.getString("state")+"</td><td><b><a href="+g+">"+g+"</a>"+"</td><td>"+rs.getString("phoneno")+"</td><td>"+rs.getString("email")+"</td><td>"+rs.getString("passw")+"</td><td>"+rs.getString("ratings")+"</td><td><b><a href="+"vinst1.jsp?uid="+i+">Edit</a></td><td><b><a href="+"deletei.jsp?uid="+i+">Delete</a>"+"</td><td><b><a href="+"avmodules.jsp?uid="+i+">Modules Offered</a></td></font></tr>");
	}
	}
	else
	{
			if(request.getParameter("uid")!=null && request.getParameter("uid").equals(i))
	{
out.println("<tr bgcolor=#CCFFFF><td>"+i+"</td><td><input name='t1' type='text' value='"+rs.getString("instname")+"' /></td><td><input name='t2' type='text' value='"+rs.getString("address")+"' /></td><td><input name='t3' type='text' value='"+rs.getString("city")+"' /></td><td><input name='t4' type='text' value='"+rs.getString("state")+"' /></td><td><input name='t5' type='text' value='"+g+"' /></td><td><input name='t6' type='text' value='"+rs.getString("phoneno")+"' /></td><td><input name='t7' type='text' value='"+rs.getString("email")+"' /></td><td><input name='t8' type='text' value='"+rs.getString("passw")+"' /></td><td><input name='t9' type='text' value='"+rs.getString("ratings")+"' /></td><td><input type='button' value='Update' onclick='xyz()' /></td><td><b><a href="+"vinst1.jsp"+">Cancel</a>"+"</td></font></tr>");
	}
	else	
	{
out.println("<tr bgcolor=#CCFFFF><b><td>"+i+"</td><td>"+rs.getString("instname")+"</td><td>"+rs.getString("address")+"</td><td>"+rs.getString("city")+"</td><td>"+rs.getString("state")+"</td><td><b><a href="+g+">"+g+"</a>"+"</td><td>"+rs.getString("phoneno")+"</td><td>"+rs.getString("email")+"</td><td>"+rs.getString("passw")+"</td><td>"+rs.getString("ratings")+"</td><td><b><a href="+"vinst1.jsp?uid="+i+">Edit</a></td><td><b><a href="+"deletei.jsp?uid="+i+">Delete</a>"+"</td><td><b><a href="+"avmodules.jsp?uid="+i+">Modules Offered</a></td></font></tr>");
	}
		
	}
	
	
	
	ii++;
	
}
out.print("</table></form>");



rs.close();
con.close();
}
else
{
	out.println("<h1>No institutes</h1>");
	}
}

catch(Exception ex)
{
	out.println("exception"+ex);
}
%>
<script language="javascript">

function xyz()
{
	if(document.forms[0].t1.value==""||document.forms[0].t2.value==""||document.forms[0].t3.value==""||document.forms[0].t4.value==""||document.forms[0].t5.value==""||document.forms[0].t6.value==""||document.forms[0].t7.value==""||document.forms[0].t8.value==""||document.forms[0].t9.value=="")
		alert("Please fill all details");
	else
		document.forms[0].submit();
}
</script>

</div>
<%@include file="admfooter.jsp" %>