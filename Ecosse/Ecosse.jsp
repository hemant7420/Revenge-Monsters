<html>
<head>
<script>

var i = 1;
window.onload = setInterval(change, 4000);

function change(){
	
	i = (i)%2;
	i++;
	document.getElementById("slideshow").src = i + '.jpg';
}
</script>
</script>
</head>
<body>
<div class="slider" style="height:404px;position:relative; width:717px;">
<img src="1.jpg" id="slideshow" height="142%" width="106%" align="centre">
</div>
</body>
</html>
