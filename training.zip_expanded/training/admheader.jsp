
<body>

<%
if(session.getAttribute("aid")==null)
response.sendRedirect("adminlogin.jsp");
%>
<div id="slider">
	
<div id="templatemo_sidebar">
    	<div id="templatemo_header"><p><h1>TRAINING GUIDE</h1></p></div> <!-- end of header -->
        
        <ul class="navigation">
            <li><a href="admhome.jsp">Home</a></li>
                    <li><a href="request.jsp">New requests</a></li>
                    <li><a href="vinst1.jsp">Universities</a></li>
                    <li><a href="vstud1.jsp">Students</a></li>
                    
                    <li><a href="vreview.jsp">Review</a></li>
                    <li><a href="cpwa.jsp?p=null">Change password</a></li>
                    <li><a href="logouta.jsp">Logout</a></li>
        </ul>
    </div><!-- end of sidebar -->

	<div id="templatemo_main">
    	
        <p>
        <h1> <br /><br /><br /><font color="#FFFFFF">WELCOME<%out.print(" "+ session.getAttribute("aname"));%></font></h1></p>
        <div id="content" style="padding:30px;">
        