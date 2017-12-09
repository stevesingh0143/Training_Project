<%@page language="java" import="java.sql.*" errorPage="" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>News</title>
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

<%@include file="admheader.jsp" %>
<form action="inews.jsp" method="post" name="frm1">
<table width="389" >
  <tr>
    <th width="119" scope="row"><b>News</b></th>
    <td width="258">
      <input type="text" name="t1" id="t1" size="40" /></td>
  </tr>
  <tr>
    <th scope="row"><b>Date</b></th>
    <td>
      <input type="text" name="t2" id="t2" size="40"/></td>
  </tr>
  <tr>
    <th colspan="2" scope="row">
    <%
	if(request.getParameter("p")!=null)
	out.println("<font color=red>News added successfully</font>");
	
	%>
    </th>
    </tr>
  <tr>
    <th colspan="2" scope="row"><input type="button" value="Add" onclick="xyz()"/></th>
    </tr>
</table>

</form>
<script language="javascript">

function xyz()
{
	if(document.forms[0].t1.value==""||document.forms[0].t2.value=="")
		alert("Please fill all details");
	else
		document.forms[0].submit();
}
</script>
</div>
<%@include file="admfooter.jsp" %>