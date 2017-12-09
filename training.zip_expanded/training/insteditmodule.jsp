<%@page language="java" import="java.sql.*" errorPage="" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Edit module</title>
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
ResultSet qw=s.executeQuery("select count(*) from moduled where instid="+session.getAttribute("uid"));
out.println("<form method='post' name='frm1' action='instumodule.jsp?mid="+request.getParameter("mid")+"'>");

qw.next();
if(Integer.parseInt(qw.getString(1))!=0)
{
	qw.close();



ResultSet rs=s.executeQuery("select * from moduled where instid="+session.getAttribute("uid"));
out.println("<form method='post' name='frm1' action='instumodule.jsp?mid="+request.getParameter("mid")+"'>");
out.print("<table width='600' border=0 bgcolor=white cellpadding='10px' cellspacing='0px' class='tablee'>");
out.print("<tr bgcolor=green><th width='66'>ModuleId</th><th width='66'>Module name</th><th width='66'>Duration</th><th width='66'>Description</th><th width='66'>Cost</th><th colspan=2>Actions</th></tr>");
int ii=1;
while(rs.next())
{
	String i=rs.getString("mid");
	if(ii%2!=0)
	{
	if(request.getParameter("mid")!=null && request.getParameter("mid").equals(i))
	{
out.println("<tr><td>"+i+"</td><td><input name='t1' type='text' size='10' value='"+rs.getString("mname")+"' /></td><td><input name='t2' type='text' size='10' value='"+rs.getString("duration")+"' /></td><td><input name='t3' type='text' size='10' value='"+rs.getString("description")+"' /></td><td><input name='t4' type='text' size='10' value='"+rs.getString("cost")+"' /></td><td><input type='button' value='Update' onclick='xyz()' /></td><td><a href="+"insteditmodule.jsp"+">Cancel</a>"+"</td></tr>");
	}
	else	
	{
out.println("<tr><td>"+i+"</td><td>"+rs.getString("mname")+"</td><td>"+rs.getString("duration")+"</td><td>"+rs.getString("description")+"</td><td>"+rs.getString("cost")+"</td><td><a href="+"insteditmodule.jsp?mid="+i+">Edit</a></td><td><a href="+"instdeletemodule.jsp?mid="+i+">Delete</a>"+"</td></tr>");
	}
	}
	else
	{
		if(request.getParameter("mid")!=null && request.getParameter("mid").equals(i))
	{
out.println("<tr bgcolor=#CCFFFF><td>"+i+"</td><td><input name='t1' type='text' size='10' value='"+rs.getString("mname")+"' /></td><td><input name='t2' type='text' size='10' value='"+rs.getString("duration")+"' /></td><td><input name='t3' type='text' size='10' value='"+rs.getString("description")+"' /></td><td><input name='t4' type='text' size='10' value='"+rs.getString("cost")+"' /></td><td><input type='button' value='Update' onclick='xyz()' /></td><td><a href="+"insteditmodule.jsp"+">Cancel</a>"+"</td></tr>");
	}
	else	
	{
out.println("<tr bgcolor=#CCFFFF><td>"+i+"</td><td>"+rs.getString("mname")+"</td><td>"+rs.getString("duration")+"</td><td>"+rs.getString("description")+"</td><td>"+rs.getString("cost")+"</td><td><a href="+"insteditmodule.jsp?mid="+i+">Edit</a></td><td><a href="+"instdeletemodule.jsp?mid="+i+">Delete</a>"+"</td></tr>");
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
	out.println("<h1>No modules</h1>");
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
	if(document.forms[0].t1.value==""||document.forms[0].t2.value==""||document.forms[0].t3.value==""||document.forms[0].t4.value=="")
		alert("Please fill all details");
	else
		document.forms[0].submit();
}
</script>
</div>
<%@include file="instfooter.jsp" %>