<body>

<%
if(session.getAttribute("nm")==null)
response.sendRedirect("studlogin.jsp?p=null");%>

<div id="slider">
	
<div id="templatemo_sidebar">
    	<div id="templatemo_header"><p><h1>TRAINING GUIDE</h1></p></div> <!-- end of header -->
        
        <ul class="navigation">
            <li><a href="studhome.jsp">Home</a></li>
            <li><a href="studvinst.jsp">View all institutes</a></li>
<li><a href="studsearchi.jsp">Search institutes</a></li>
<li><a href="studsearchm.jsp">Search module</a></li>
<li><a href="studaddreview.jsp?p=null">Add review</a></li>
<li><a href="studedit.jsp">Edit profile</a></li>
<li><a href="cpws.jsp?p=null">Change password</a></li>
<li><a href="studvapplied.jsp">Currently applied to?</a></li>

<li><a href="logouts.jsp">Logout</a></li>

        </ul>
    </div><!-- end of sidebar -->

	<div id="templatemo_main">
    	
         <p>
        <h1> <br /><br /><br /><font color="#FFFFFF">WELCOME<%out.print(" "+ session.getAttribute("nm"));%></font></h1></p>
        <div id="content" style="padding:30px;">
        