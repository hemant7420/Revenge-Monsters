<html>
<body bgcolor="lightblue">

    <%@ page errorPage="Feedback.jsp" %>
    <jsp:useBean id="foo" scope="request" class="error.Smart" />
    <%

        if ((request.getParameter("fname") == null) ||(request.getParameter("cont") == null) ) 
        {
    %>
    <%@ include file="error.html" %>
    <%
        } 
        else {
        	window.alert("All fields are duly filled!!!");
        %>


          }
   </body>
</html>
