<%@page language="java" import="java.sql.*" errorPage="" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Change password</title>
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
    <%@include file="instheader.jsp" %>

<form action="updateip.jsp" method="post" name="frm1">
<table width="421" border="0">
  <tr>
    <th scope="row">Old password</th>
    <td><label for="t1"></label>
      <input type="password" name="t1" id="t1" /></td>
  </tr>
  <tr>
    <th scope="row">New password</th>
    <td><input type="password" name="t2" id="t2" /></td>
  </tr>
  <tr>
    <th scope="row">Confirm new password</th>
    <td><input type="password" name="t3" id="t3" /></td>
  </tr>
  <tr>
    <th colspan="2" scope="row">
    <% if(request.getParameter("p").equals("1"))
			out.println("<font color='red'>Password updated</font>" );
		else if(request.getParameter("p").equals("2"))
			out.println("<font color='red'>Old password does not match</font>");
			else
			out.println("");
%>	
		
</th>
    </tr>
  
  <tr>
    <th colspan="2" scope="row"><input type="button" value="Update" onclick="xyz()" /></th>
    </tr>
</table>


</form>
<script language="javascript">
function xyz()
{
	if(document.forms[0].t1.value==""||document.forms[0].t2.value==""||document.forms[0].t3.value=="")
		alert("Please fill all details");
	else	
	if(document.forms[0].t2.value==document.forms[0].t3.value)
		document.forms[0].submit();
	else
alert("Both new passwords don't match");
}
</script>
</div>
<%@include file="instfooter.jsp" %>
