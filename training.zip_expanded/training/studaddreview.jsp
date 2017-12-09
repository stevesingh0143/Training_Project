<%@page language="java" import="java.sql.*" errorPage="" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Add review</title>
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


<form method="post" name="frm1" action="studareview.jsp">
<table width="509" border="0">
  <tr>
    <th width="198" scope="row">SELECT INSTITUTE</th>
    <td width="301">
    <select name="menu1">
    
    <%try
	{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:training");
Statement s=con.createStatement();
ResultSet rs=s.executeQuery("select * from instd");
while(rs.next())
out.println("<option>"+rs.getString("instname")+"</option>");
 rs.close();
 con.close();
	}
	catch(Exception ex)
	{
		out.println("error"+ex);
	}
	%>
    </select>
    
    </td>
  </tr>
  <tr>
    <th scope="row">ADD YOUR REVIEW</th>
    <td><label for="t1"></label>
      <label for="t2"></label>
      <textarea name="t1" id="t1" cols="45" rows="5"></textarea></td>
  </tr>
  <tr>
    <th scope="row">RATING(0-5)</th>
    <td><label for="t2"></label>
      <input type="text" name="t2" id="t2" /></td>
  </tr>
  <tr>
    <th colspan="2" scope="row">
    <%
		if(request.getParameter("p").equals("1"))
	out.println("<font color=red>Thank you for submitting your review</font>");
	else
	out.print("");

	%></th>
    </tr>
  <tr>
    <th colspan="2" scope="row"><input type="button" value="Submit" onclick="xyz()" /></th>
    </tr>
</table>


</form>

<script language="javascript">

function xyz()
{
	if(document.forms[0].t1.value==""||document.forms[0].t2.value==""||document.forms[0].menu1.value=="")
		alert("Please fill all details");
	else
		document.forms[0].submit();
}
</script>
</div>
<%@include file="studfooter.jsp" %>
