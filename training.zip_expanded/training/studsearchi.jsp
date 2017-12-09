<%@page language="java" import="java.sql.*" errorPage="" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Search</title>
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


<form name="frm1" method="post" action="studsearchii.jsp">
<table width="500" >
<tr>
<td width="144">
<input name="b1" type="radio" value="instname" />
NAME</td>
<td width="170">
<input name="b1" type="radio" value="city" />
LOCATION</td>
<td width="164"><input name="b1" type="radio" value="ratings" />
RATINGS</td>
</tr>
<tr>
<td colspan="3" >
</td>
</tr>
<tr>
<td colspan="3" >
</td>
</tr>
<tr>
<td colspan="3" >
</td>
</tr>

<tr>
  <td colspan=2 align="center"><input name="t1" type="text" size="50"  /></td>
  <td align="center">
  <input name="b2" type="button" value="Search" onclick="xyz()"/></td>
  </tr>
  <tr>
  <td colspan="2">
  <%
  if(request.getParameter("p")!=null)
  out.println("<font color=red>No such entry</font>");
  %>
  </td></tr>
  </table>
</form>
<script language="javascript">

function xyz()
{
	if(document.forms[0].t1.value=="")
		alert("Please fill all details");
	else
		document.forms[0].submit();
}
</script>

</div>
<%@include file="studfooter.jsp" %>
