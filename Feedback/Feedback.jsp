<%@ page import="java.sql.*" %>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>Rating</title>
	
</head>


<script>
function cl()
{
	document.getElementById("myform").reset();
}

function validation()
{
var x=document.forms["detectform"]["fname"].value;

var y=document.forms["detectform"]["cont"].value;


var z=document.forms["detectform"]["Email"].value;

if(x==""||x==null)
{
alert("Please do not name leave blank");
}

var atpos=x.indexOf("@");
var dotpos=x.lastIndexOf(".");
if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)
  {
  alert("Not a valid e-mail address");
  }

if(y=="" || y==null) 
{alert("Please do not contact leave blank");	
}
if(z=="" ||z==null){alert("Please do not email leave blank");	
}return false;}

</script>

<body bgcolor="black">




<center>
<img src="feedback.jpg" width="70%" height="10%"></center>
<form id="myform" name="detectform"  align="center" method="post" action="sendmail.jsp">
	<font color="White" >Name:<input type="text"  id="fname"  name="fname"  onKeypress="if(!isNaN(String.fromCharCode(event.keyCode)))return false; size="31"  ><br><br>
		Contact:<input type="text" name="cont" onKeypress="if(!isNaN(String.fromCharCode(event.keyCode)))return false; style="margin-left:8px"  size="31"><br><br>
		Email-ID:<input type="text" name="Email" size="31"><br><br>
	</font>
		<p style="color:white;font-family:papyrus">Please rate this Page:</p>
	<div style="align:center">
	<fieldset class="rating">		
		<input type="radio" name="stars" id="4_stars" value="4" >
		<label class="stars" for="4_stars">4 stars</label>
		<input type="radio" name="stars" id="3_stars" value="3" >
		<label class="stars" for="3_stars">3 stars</label>
		<input type="radio" name="stars" id="2_stars" value="2" >
		<label class="stars" for="2_stars">2 stars</label>
		<input type="radio" name="stars" id="1_stars" value="1" >
		<label class="stars" for="1_stars">1 star</label>
		<input type="radio" name="stars" id="0_stars" value="0" required>
		<label class="stars" for="0_stars">0 star</label>
		<span  class="label"> Rating: </span>
	</fieldset></div><br>
	<input type="submit", name="Button1", value="Submit">&nbsp
	<input type="button", value="Cancel" onclick="cl()">

</form>

</body>
</html>