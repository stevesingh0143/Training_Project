<body>

<%
if(session.getAttribute("nm")==null)
response.sendRedirect("univlogin.jsp?p=null");

%>
<div id="slider">
	
<div id="templatemo_sidebar">
    	<div id="templatemo_header"><p><h1>TRAINING GUIDE</h1></p></div> <!-- end of header -->
        
        <ul class="navigation">
            <li><a href="insthome.jsp">Home</a></li>
                    <li><a href="instvrequest.jsp">New requests</a></li>
<li><a href="instviewstud.jsp">Students</a></li>
<li><a href="module.jsp?p=null">Add module</a></li>
<li><a href="insteditmodule.jsp">Edit module</a></li>
<li><a href="instreview.jsp">Reviews</a></li>
<li><a href="cpwi.jsp?p=null">Change password</a></li>
<li><a href="edit.jsp">Edit profile</a></li>
<li><a href="logouti.jsp">Logout</a></li>
        </ul>
    </div><!-- end of sidebar -->

	<div id="templatemo_main">
    	
         <p>
        <h1> <br /><br /><br /><font color="#FFFFFF">WELCOME<%out.print(" "+ session.getAttribute("nm"));%></font></h1></p>
        <div id="content" style="padding:30px;">
        