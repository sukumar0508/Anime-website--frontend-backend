<!DOCTYPE html>
<html>
 <head>
 <title>Home-page</title>
 <link rel="stylesheet" href="comixology.css">
 
 <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Audiowide|Sofia|Trirong&effect=fire|neon|outline|emboss|shadow-multiple">
</head>
<%
    String fname=(String)session.getAttribute("username");
%>
 <body>
 <div class="banner">
 <div class="navbar">
 <img src="logoc.jpeg" class="logo">
 <ul>
 <li><i class="fa fa-Manga" style="font-size:20px;color:aliceblue"><a href="manga.jsp" class="font-effect-neon">MANGA</a></i></li>
 <li><i class="fa fa-News" style="font-size:20px;color:aliceblue"><a href="news.html" class="font-effect-neon">NEWS</a></i></li>
 <li><i class="fa fa-Premium" style="font-size:20px;color:aliceblue"><a href="premium.html" class="font-effect-neon">PREMIUM</a></i></li>
 <li><i class="fa fa-address-book-o" style="font-size:20px;color:aliceblue"><a href="about.html" class="font-effect-neon">ABOUT US</a></i></li>
 <li><i class="fa fa-address-book-o" style="font-size:20px;color:aliceblue"><a href="orders.jsp" class="font-effect-neon">MY CART</a></i></li>
 </ul>
</div>
 <div class="content">
 <h1 class="font-effect-fire"> COMIXOLOGY</h1>
 <P>Manga (漫画, [maŋga][a]) are comics or graphic novels originating from Japan. Most manga conform to a style developed in Japan in the late 19th century,[1] and the form has a long history in earlier Japanese art.<br>
 50% Discount is available for new premium customers.</P>
 </P>
 </div>
 </div>

 </body>
</html>