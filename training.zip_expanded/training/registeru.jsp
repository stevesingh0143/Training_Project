<%@page language="java" import="java.sql.*" errorPage="" %>

<!DOCTYPE html>
<!--[if lt IE 7]> <html class="lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]> <html class="lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]> <html class="lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="en"> <!--<![endif]-->
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>Register Form</title>
  <link rel="stylesheet" href="csslog/style.css">
  <!--[if lt IE 9]><script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
</head>
<body>
 <section class="container" align="center">
 <font size="+3"><b>REGISTER YOUR COMPANY</b></font><br />
    <div class="login" style="width:600px;">
<form action="instregister.jsp" method="post" name="frm1">
  <table width="450" border="0">
    <tr>
      <th width="161" scope="row">COMPANY NAME</th>
      <td width="203"><label for="t1"></label>
      <input type="text" name="t1" id="t1" /></td>
    </tr>
    <tr>
      <th scope="row">ADDRESS</th>
      <td><label for="t2"></label>
      <input type="text" name="t2" id="t2" /></td>
    </tr>
    <tr>
      <th scope="row">CITY</th>
      <td><label for="t3"></label>
      <input type="text" name="t3" id="t3" /></td>
    </tr>
    <tr>
      <th scope="row">STATE</th>
      <td><label for="t4"></label>
      <input type="text" name="t4" id="t4" /></td>
    </tr>
    <tr>
      <th scope="row">EMAIL (Username)</th>
      <td><label for="t5"></label>
      <input type="text" name="t5" id="t5" /></td>
    </tr>
    <tr>
      <th scope="row">PASSWORD</th>
      <td><label for="t6"></label>
      <input type="password" name="t6" id="t6" /></td>
    </tr>
    <tr>
      <th scope="row">CONTACT NO</th>
      <td><label for="t7"></label>
      <input type="text" name="t7" id="t7" /></td>
    </tr>
    <tr>
      <th scope="row">WEBSITE</th>
      <td><label for="t8"></label>
      <input type="text" name="t8" id="t8" /></td>
    </tr>
    <tr>
      <th colspan="2" scope="row">
      <%
	  if(request.getParameter("p").equals("1"))
	 out.println("<font color='red'>Email already exists. Please try a different email</font>" );
		else if(request.getParameter("p").equals("2"))
			out.println("<font color='red'>Thank you for registering. You will be confirmed within 24 hours</font>");
			else
			out.println("");
	  %>
      </th>
    </tr>
    <tr>
      <th colspan="2" scope="row"><input type="button" value="Signup" onclick="xyz()"/></th>
    </tr>
  </table>


</form>
</div></section>
<script language="javascript">
function xyz()
{
	if(document.forms[0].t1.value==""||document.forms[0].t2.value==""||document.forms[0].t3.value==""||document.forms[0].t4.value==""||document.forms[0].t5.value==""||document.forms[0].t6.value==""||document.forms[0].t7.value==""||document.forms[0].t8.value=="")
		alert("Please fill all details");
		else
			document.forms[0].submit();
	}
</script>

</body>
</html>