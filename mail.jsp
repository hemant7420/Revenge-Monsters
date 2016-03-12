<html>
<script language="JavaScript">
function formvalidation()
{

var x=document.forms["detectform"]["Email"].value;
var atpos=x.indexOf("@");
var dotpos=x.lastIndexOf(".");
if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)
  {
  alert("Not a valid e-mail address");
  return false;
  }

 
if (x==null || x=="")
{
alert("Please do not leave blank");
}
var y=document.forms["detectform"]["fname"].value;

if (y==null || y=="")
{
alert("Please do not leave blank");
}
if (isNan(y))
{alert("Please enter alphabets only!!!");

return false;
}
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
<center><img src="contact_1.jpg" width="87%"></center><br> 
<form name="detectform" onSubmit="return formvalidation();" align="center" action="sendmail.jsp" method="post">
<font color="White">Name:<input type="text" name="fname" onKeypress="if(!isNaN(String.fromCharCode(event.keyCode)))return false;" size="31" ><br><br>
		&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspContact details:<input type="text" name="contact" onKeypress="if(isNaN(String.fromCharCode(event.keyCode)))return false;" size="31"><br><br>
		&nbsp&nbsp&nbsp&nbspAddress:<textarea rows="3" cols="29" style="margin-bottom:11px"></textarea><br><br><br><br>
		&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Email-ID:<input type="text" name="Email" size="31" id="mail"><br><br>
		&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspFeedback:<textarea rows="3" cols="29" style="margin-bottom:10px"></textarea><br><br><br><br><br>
	</font>
	<input type="submit" onChange="formvalidation()" name="Button1" value="Submit">&nbsp
	<input type="button", value="Cancel">

</form>
</body>
</html>
