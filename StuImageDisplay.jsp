<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>STUDENT IMAGE DISPLAYING</title>
<link rel="stylesheet" href="stuimagedisplaystyle.css">
</head>
<body>
<!-- 
<h1 style='color:red' align='center'>STUDENT IMAGE DISPLAY</h1>
<div align="center">
<form action="DisplayStuPhoto" method="post">
	Enter Student Registraion No:
	<input type="text" name="stuphotoregno">
	<input type="submit" value="Display Profile">
</form>
</div>
 -->

	<div class="dishead">
<h1 >STUDENT IMAGE DISPLAY</h1>
</div>
<div class="imgdisp">
<form action="DisplayStuPhoto" method="post">
	<h3>Enter Student Registraion No:</h3>
	<input type="text" name="stuphotoregno">
	<input type="submit" value="Display Profile">
</form>
</div>
<hr>


<%
String stuimgfilename=(String)request.getAttribute("img");
String stuimgid=(String)request.getAttribute("id");
%>
<div class="dbimgdisp">
	<table border="5px">
		<tr>
			<th>Student Reg No </th>
			<th>Profile Photo </th>
		</tr>
		
		<%
		if(stuimgfilename!=""&&stuimgid!="")
		{
		%>
		<tr>
			<td align='center'><%=stuimgid %></td>
			<td align='center'>
  <img src="images/<%=stuimgfilename%>"/ width="200px" height="250">
  
</td>
		</tr>
		
		<%
		}
		%>
			
	</table>
</div>

</body>
</html>