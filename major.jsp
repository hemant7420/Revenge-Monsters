<%! static int hit=0; %>
<%
hit++;
%>
<html>
<head>
<title>Expensive Cars</title>
<link href="style.css" rel="stylesheet" type="text/css" />
</head>
<script>
function onAl()
{
	var dt=new Date();
	alert("You are visitor number "+ <%=hit%> +" on "+dt) ;
 	myname();
	cookie();
}

function myname()
{
var x;

 person=prompt("Please enter your name"," ");

if (person!=null)
  {
  x="Hello " + person;
  document.getElementById("demo").innerHTML=x;
  }
}

function cookie()
{
var r=confirm("Press OK to save Cookies");
if (r==true)
  {
  	var dt=new Date();
  document.cookie="Cookie has been created by "+person+" on "+ dt;
  }
else
  {
  alert("Thank You");  
  }
}

</script>

<body background="background.jpg" onLoad="onAl()" style=" overflow-x: hidden; -webkit-background-size:cover;">

	<div style="background:#000000">
	<center style="margin-top: -4em;"><p style="font:bold italic 50px Times New Roman; margin-top: 66px; color:white;">REVENGE MOSTERS!!!</p>
		<p style=" font:bold italic 20px Times New Roman; color:white; margin-top:-37px; margin-left:18em;">
		Vehicles  with a class...

				</p><p></p></center>	</div>
<p id="demo" style="color:white; font-family:papyrus; font-size:22px;"></p>
<div  class=".title" >
<ul  style="margin-left:24em">

<li><a href="major.jsp">Home&nbsp;&nbsp;&nbsp;|</a></li>
				<li>Categories&nbsp;&nbsp;&nbsp;|</a>
				
<ul class="option_box" style="text-align:left; font-size:22px">

<li><a href="car.html" target="abc">Cars&nbsp;</a>
<li><a href="bike.jsp" target="abc">Bikes</a></li>

</ul>
</li>

<li style="margin-left:-40px"><a href="11.jsp" target="abc">&nbsp&nbsp&nbspContact&nbsp;Us&nbsp;&nbsp;&nbsp;|</a></li>

<li style="margin-left:-22px"><a href="Feedback/Feedback.jsp" target="abc">Feedback&nbsp;&nbsp;&nbsp;</a></li>
</ul>
	</div></center><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		<center><iframe src="frame1.html" height="79%" width="55%"  style="margin-left: 5em; border-color:white;margin-top:-427px;"frameborder="1" name="abc"></iframe></center>
	<div class="title" style="position:relative; float:left;">
			<span style=" font:bold italic 18px times new roman; color:#ddd; line-height:48px;"> <center>Developed by Hemant Singhi</center> </span> 
		</div></body>
</html>