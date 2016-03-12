
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%	
Class.forName ("sun.jdbc.odbc.JdbcOdbcDriver"); 		    
		Connection  conn=null; 	
conn = DriverManager.getConnection("jdbc:odbc:Feed", "", "");  
out.println ("Database Connected.");

	Statement   stm  =  conn.createStatement ( );
	String na=request.getParameter("fname");
	String  nu   	=   request.getParameter ("cont");
	    	String em=request.getParameter("Email");
	    	String rat=request.getParameter("stars");
	static	int i=1;
String j= Integer.toString(i);
	 String s="INSERT INTO feedback (Sr_No, C_Name, Contact, Email_ID, Rating) VALUES ('"+j+"','"+na+"','"+nu+"','"+em+"', '"+rat+"');";  
	stm.executeUpdate(s);
	i=i++;
%>
 	<%
	String result;
	String x=request.getParameter("Email");
	String from = "hemant.singhi@aurouniversity.edu.in";
	final String username = "hemant.singhi@aurouniversity.edu.in";
	final String password = "xii-c7420";

	Properties props = new Properties();
	props.put("mail.smtp.auth", "true");
	props.put("mail.smtp.starttls.enable", "true");
	props.put("mail.smtp.host", "smtp.gmail.com");
	props.put("mail.smtp.port", "25");

	//Get the Session object.
	Session mailSession = Session.getInstance(props,
			new javax.mail.Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication(username,password);
				}
			});

	try {
		// Create a default MimeMessage object.
		Message message = new MimeMessage(mailSession);

		// Set From: header field of the header.
		message.setFrom(new InternetAddress(from));

		// Set To: header field of the header.
		message.setRecipients(Message.RecipientType.TO,
				InternetAddress.parse(x));

		// Set Subject: header field
		message.setSubject("Contact Confirmation");

		// Now set the actual message
		message.setText("Hello, Contact details recieved ");

		// Send message
		Transport.send(message);

	
	} catch (MessagingException e) {
		e.printStackTrace();
		result = "Error: unable to send message....";

	}
%>
<html>
<head>
<title>Send Email using JSP</title>
<script>
function onal()
{
	alert("You are being redirected");
	
	<%
   // New location to be redirected
//window.open("11.jsp");

    %>
 
 
}
</script>
</head>
<body onLoad="onal()">
 </body>
</html>
