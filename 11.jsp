
<html>
<script language="JavaScript">

<!-- Function to validate the form fields -->

function formvalidation()
{

var x=document.forms["detectform"]["Email"].value;
var atpos=x.indexOf("@");
var dotpos=x.lastIndexOf(".");
var y=document.forms["detectform"]["fname"].value;

if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)
  {
  alert("Not a valid e-mail address");
  }
  
if (x==null || x=="")
	{
	alert("Please do not email field leave blank");
	}

if (y==null || y=="")
	{
	alert("Please do not leave name blank");
	}
return false;
}


<!-- Function to clear the form fields -->
function cl()
{
	document.getElementById("myform").reset();
}
</script>

<style type="text/css">
input, textarea{
float:right;
margin-right:50px;
}
form{
width:500px;
float:left;
margin-left:100px;}


</style>
<body bgcolor="black">
<center><img src="contact_1.jpg" height="50%" width="70%">	</center>
<br> 
	<form id="myform" name="detectform"  align="center" method="post" action="cont_sendmail.jsp">
	<font color="White" style="margin-left:30px">Name:<input type="text" name="fname" onKeypress="if(!isNaN(String.fromCharCode(event.keyCode)))return false;" size="31" ><br><br>
		<div style="float:left; margin-left:87px">Address:</div><textarea rows="5" cols="29" style="margin-bottom:10px" name="addres"></textarea><br><br><br><br><br>
		Contact:<input type="text" name="conte" onKeypress="if(isNaN(String.fromCharCode(event.keyCode)))return false;" size="31"><br>		Email-ID:<input type="text" name="Email" size="31" onblur="formvalidation()"><br><br><br><br>
	</font>
	<input type="submit", name="Button1", value="Submit">&nbsp
	<input type="button", value="Cancel", onClick="cl()" >

</form>
</body>
</html>