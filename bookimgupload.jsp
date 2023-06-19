<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>COMICS PHOTO UPLOADING</title>
<link rel="stylesheet" href="stuimageaddstyle.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Audiowide|Sofia|Trirong&effect=fire|neon|outline|emboss|shadow-multiple">

</head>
<style>
	body {
 background-image: url("ADMIN.jpg");
 background-color: #cccccc;
}
</style>
<body>
	<center>
<div class="imgupload">
<h1 class="font-effect-fire"> COMICS ADMIN</h1>
<div class="imguploadbox">
<form action="StuPhotoUploadServ" method="post" enctype="multipart/form-data">
	<div class="box">
        <div class="head">
            <h2 class="font-effect-fire"> Upload Book</h2>
        </div>
		<h3 class="font-effect-fire"> Enter Book Name</h3>
	<input type="text" name="regno">
	<br>
	<h3 class="font-effect-fire"> select book :</h3>
	<input type="file" name="image" >
	<input type="submit" value="upload">
	</div>
	
	<div class="suctext" id="su">
	
	
	</div>
</form>
</div>
</div>
</center>

</body>
</html>