<%@page language="java" import="java.sql.*" errorPage="" %>

<!DOCTYPE html>
<!--[if lt IE 7]> <html class="lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]> <html class="lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]> <html class="lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="en"> <!--<![endif]-->
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>Login Form</title>
  <link rel="stylesheet" href="csslog/style.css">
  <!--[if lt IE 9]><script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
</head>
<body>
  <section class="container">
    <div class="login">
      <h1>Login to Training Guide</h1>
      <form method="post" action="logins.jsp">
        <p><input type="text" name="t1" value="" placeholder="Username"></p>
        <p><input type="password" name="t2" value="" placeholder="Password"></p>
        
        <p class="submit"><input type="button" name="b1" value="Login" onClick="xyz()"></p>
        <p>
         <%
	if(request.getParameter("p").equals("1"))
	out.print("<font color=dark green>Invalid username/password</font>");
	else if(request.getParameter("p").equals("2"))
	out.print("<font color=dark green>Conformation pending</font>");
	else out.print("");
	
	%>
        </p>
      </form>
    </div>

    <div class="login-help">
      <p>New user?? <a href="registers.jsp?p=null">Click here to signup</a>.</p>
    </div>
  </section>
  
  <script language="javascript">

function xyz()
{
	var u=document.forms[0].t1.value;
	var p=document.forms[0].t2.value;
	if(u==""||p=="")
		alert("Please fill all details");
	else if(u.indexOf(",")!=-1 || u.indexOf("=")!=-1)
	
		alert("Invalid username or password");
	
		else if(p.indexOf(",")!=-1 || p.indexOf("=")!=-1)
	
		alert("Invalid username or password");
	
	else
		document.forms[0].submit();
}
</script>

</body>
</html>
