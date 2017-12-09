<%@page language="java" import="java.sql.*" errorPage="" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>View students</title>
<meta name="keywords" content="mini social, free download, website templates, CSS, HTML" />
<meta name="description" content="Mini Social is a free website template from templatemo.com" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet" href="css/coda-slider.css" type="text/css" media="screen" charset="utf-8" />
<link rel="stylesheet" href="table.css" type="text/css" />

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
ResultSet qw=s.executeQuery("select count(*) from studentd where statusa=1");
qw.next();
if(Integer.parseInt(qw.getString(1))!=0)
{
	qw.close();


ResultSet rs=s.executeQuery("select * from studentd where statusa=1");
out.println("<form method='post' name='frm1' action='updates.jsp?sid="+request.getParameter("sid")+"'>");
out.print("<table width='800' border=0 bgcolor=white cellpadding='10px' cellspacing='0px' class='tablee'>");
out.print("<tr bgcolor=red><th>StudentId</th><th>Student name</th><th>Trade</th><th>Semester</th><th>Roll no</th><th>Address</th><th>City</th><th>State</th><th>Email</th><th>Username</th><th>Password</th><th>Phone no</th><th>Gender</th><th colspan='2'>Actions</th></tr>");
int ii=1;
while(rs.next())
{
	
	String i=rs.getString("studid");
	
	if(ii%2!=0)
	{
	if(request.getParameter("sid")!=null && request.getParameter("sid").equals(i))
	{
out.println("<tr><td>"+i+"</td><td><input name='t1' type='text' value='"+rs.getString("sname")+"' /></td><td><input name='t2' type='text' value='"+rs.getString("trade")+"' /></td><td><input name='t3' type='text' value='"+rs.getString("sem")+"' /></td><td><input name='t4' type='text' value='"+rs.getString("rollno")+"' /></td><td><input name='t5' type='text' value='"+rs.getString("address")+"' /></td><td><input name='t6' type='text' value='"+rs.getString("city")+"' /></td><td><input name='t7' type='text' value='"+rs.getString("state")+"' /></td><td><input name='t8' type='text' value='"+rs.getString("email")+"' /></td><td><input name='t9' type='text' value='"+rs.getString("username")+"' /></td><td><input name='t10' type='text' value='"+rs.getString("passw")+"' /></td><td><input name='t11' type='text' value='"+rs.getString("phone")+"' /></td><td><input name='t12' type='text' value='"+rs.getString("gender")+"' /></td><td><input type='button' value='Update' onclick='xyz()' /></td><td><a href="+"vstud1.jsp"+">Cancel</a>"+"</td></tr>");
	}
	else	
	{
out.println("<tr><td>"+i+"</td><td>"+rs.getString("sname")+"</td><td>"+rs.getString("trade")+"</td><td>"+rs.getString("sem")+"</td><td>"+rs.getString("rollno")+"</td><td>"+rs.getString("address")+"</td><td>"+rs.getString("city")+"</td><td>"+rs.getString("state")+"</td><td>"+rs.getString("email")+"</td><td>"+rs.getString("username")+"</td><td>"+rs.getString("passw")+"</td><td>"+rs.getString("phone")+"</td><td>"+rs.getString("gender")+"</td><td><a href="+"vstud1.jsp?sid="+i+">Edit</a></td><td><a href="+"deletes.jsp?sid="+i+">Delete</a>"+"</td></tr>");
	}
	}
	else
	{
		if(request.getParameter("sid")!=null && request.getParameter("sid").equals(i))
	{
out.println("<tr bgcolor=#CCFFFF><td>"+i+"</td><td><input name='t1' type='text' value='"+rs.getString("sname")+"' /></td><td><input name='t2' type='text' value='"+rs.getString("trade")+"' /></td><td><input name='t3' type='text' value='"+rs.getString("sem")+"' /></td><td><input name='t4' type='text' value='"+rs.getString("rollno")+"' /></td><td><input name='t5' type='text' value='"+rs.getString("address")+"' /></td><td><input name='t6' type='text' value='"+rs.getString("city")+"' /></td><td><input name='t7' type='text' value='"+rs.getString("state")+"' /></td><td><input name='t8' type='text' value='"+rs.getString("email")+"' /></td><td><input name='t9' type='text' value='"+rs.getString("username")+"' /></td><td><input name='t10' type='text' value='"+rs.getString("passw")+"' /></td><td><input name='t11' type='text' value='"+rs.getString("phone")+"' /></td><td><input name='t12' type='text' value='"+rs.getString("gender")+"' /></td><td><input type='button' value='Update' onclick='xyz()' /></td><td><a href="+"vstud1.jsp"+">Cancel</a>"+"</td></tr>");
	}
	else	
	{
out.println("<tr bgcolor=#CCFFFF><td>"+i+"</td><td>"+rs.getString("sname")+"</td><td>"+rs.getString("trade")+"</td><td>"+rs.getString("sem")+"</td><td>"+rs.getString("rollno")+"</td><td>"+rs.getString("address")+"</td><td>"+rs.getString("city")+"</td><td>"+rs.getString("state")+"</td><td>"+rs.getString("email")+"</td><td>"+rs.getString("username")+"</td><td>"+rs.getString("passw")+"</td><td>"+rs.getString("phone")+"</td><td>"+rs.getString("gender")+"</td><td><a href="+"vstud1.jsp?sid="+i+">Edit</a></td><td><a href="+"deletes.jsp?sid="+i+">Delete</a>"+"</td></tr>");
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
	out.println("<h1>No students</h1>");
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
	if(document.forms[0].t1.value==""||document.forms[0].t2.value==""||document.forms[0].t3.value==""||document.forms[0].t4.value==""||document.forms[0].t5.value==""||document.forms[0].t6.value==""||document.forms[0].t7.value==""||document.forms[0].t8.value==""||document.forms[0].t9.value==""||document.forms[0].t10.value==""||document.forms[0].t11.value==""||document.forms[0].t12.value=="")
		alert("Please fill all details");
	else
		document.forms[0].submit();
}
</script>

</div>
<%@include file="admfooter.jsp" %>