<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>New Arrivals</title>
</head>
<style>
    .main-bar {
        text-align: center;
        background-color: rgb(251, 109, 227);

    }

    .menu li {
        display: inline-block;
        padding-top: 20px;
        padding-left: 60px;
        padding-bottom: 20px;
        font-size: 20px;
        color: white;
    }

    * {
        margin: 0px;
        padding: 0px;
        box-sizing: border-box;
        font-family: sans-serif;
    }

    .menu li a {
        text-decoration: none;
        color: white;
    }

    .menu li a:hover {
        color: #11030a;
    }

    footer {
        position: fixed;
        bottom: 0;
        width: 100%;
        height: 50px;
        text-align: center;
        color: rgb(255, 255, 255);
        background-color: rgb(99, 36, 183);
        font-size: 20px;
    }

    .footer-links a {
        text-decoration: none;
        color: white;
    }

    .footer-links a:hover {
        color: red;
    }

    .arrivals {
        width: 100%;
        height: 100vh;
        margin-left: 33px;
        padding-bottom: 900px;
    }

    .arrivals h1 {
        font-size: 50px;
        text-align: center;
        margin-bottom: 33px;
    }

    .arrivals .arrivals_box {
        width: 92%;
        display: grid;
        grid-template-columns: 1fr 1fr 1fr 1fr 1fr;
        grid-gap: 25px 0;
        
    }

    .arrivals .arrivals_box .arrivals_card {
        width: 240px;
        height: 320px;
        text-align: center;
        padding: 5px;
        border: 1px solid lightgreen;
        margin: auto 20px;
    }

    .arrivals .arrivals_box .arrivals_card:hover {
        box-shadow: 0 0 5-x #F56EB3;
    }

    .arrivals .arrivals_box .arrivals_card .arrivals_img {
        width: 140px;
        height: 200px;
        margin: 0 auto;
        cursor: pointer;
        box-shadow: rgb(63, 61, 61);
        overflow: hidden;
    }

    .arrivals .arrivals_box .arrivals_card .arrivals_img img {
        width: 100%;
        height: 100%;
        object-fit: cover;
        object-position: center;
    }

    .arrivals .arrivals_box .arrivals_card:hover .arrivals_img img {
        transform: scale(1.1);
    }

    .arrivals .arrivals_box .arrivals_card .arrivals_tag p {
        font-family: sans-serif;
        font-size: 12px;
        margin: 10px 0px;
    }

    .arrivals .arrivals_box .arrivals_card .arrivals_tag .arrivals_btn {
        padding: 0px 0px;
        border: 2px solid lightblue;
        text-decoration: none;
        color: #000;
    }
 button{
    width: 200px;
    padding: 0px 0;
    text-align: center;
    margin: 20px 10px;
    border-radius: 25px;
    font-weight: bold;
    border: 2px solid #009688;
    background: transparent;
    color: DC143C;
    cursor: pointer;
    position: relative;
    overflow: hidden;
   }

</style>
 
<body>
    <div class="arrivals">
         <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia&effect=neon|outline|emboss|shadow-multiple">
<style>
body {
  font-family: "Sofia", sans-serif;
  font-size: 30px;
}
</style>
</head>
<%
    String fname=(String)session.getAttribute("username");
%>
<body>

<h1 class="font-effect-neon">TOP TRENDING</h1>

        <div class="arrivals_box">

            <div class="arrivals_card">
                <div class="arrivals_img">
                    <img src="m1.jpg">
                </div>
                <div class="arrivals_tag">
                    <p>>World Trigger</p>
                    <a href="#" class="arrivals_btn">Add-Cart🛒</a>
                    <a href="https://mangaplus.shueisha.co.jp/viewer/1000549" class="arrivals_btn">Read</a>
                </div>
            </div>

            <div class="arrivals_card">
                <div class="arrivals_img">
                    <img src="m2.jpg">
                </div>
                <div class="arrivals_tag">
                    <p>> ZipMan</p>
                    <a href="#" class="arrivals_btn">Add-Cart🛒</a>
                    <a href="https://mangaplus.shueisha.co.jp/viewer/1006136" class="arrivals_btn">Read</a>
                </div>
            </div>

            <div class="arrivals_card">
                <div class="arrivals_img">
                    <img src="m3.jpg">
                </div>
                <div class="arrivals_tag">
                    <p>> Demon Slayer</p>
                    <a href="#" class="arrivals_btn">Add-Cart🛒</a>
                    <a href="https://mangaplus.shueisha.co.jp/viewer/1000303" class="arrivals_btn">Read</a>
                </div>
            </div>

            <div class="arrivals_card">
                <div class="arrivals_img">
                    <img src="m5.jpg">
                </div>
                <div class="arrivals_tag">
                    <p>> Boruto</p>
                    <a href="#" class="arrivals_btn">Add-Cart🛒</a>
                    <a href="https://mangaplus.shueisha.co.jp/viewer/1000230" class="arrivals_btn">Read</a>
                </div>
            </div>
            <div class="arrivals_card">
                <div class="arrivals_img">
                    <img src="m4.jpg">
                </div>
                <div class="arrivals_tag">
                    <p> > Blue Flag</p>
                    <a href="#" class="arrivals_btn">Add-Cart🛒</a>
                    <a href="https://mangaplus.shueisha.co.jp/viewer/1000935" class="arrivals_btn">Read</a>
                </div>
            </div>
            <div class="arrivals_card">
                <div class="arrivals_img">
                    <img src="m6.jpg">
                </div>
                <div class="arrivals_tag">
                    <p> > Dragon Ball</p>
                    <a href="#" class="arrivals_btn">Add-Cart🛒</a>
                    <a href="https://mangaplus.shueisha.co.jp/viewer/1000762" class="arrivals_btn">Read</a>
                </div>
            </div>
            <div class="arrivals_card">
                <div class="arrivals_img">
                    <img src="m7.jpg">
                </div>
                <div class="arrivals_tag">
                    <p>> King's Game: Origin</p>
                    <a href="#" class="arrivals_btn">Add-Cart🛒</a>
                    <a href="https://www.crunchyroll.com/comics/manga/kings-game-origin/volumes" class="arrivals_btn">Read</a>
                </div>
            </div>
            <div class="arrivals_card">
                <div class="arrivals_img">
                    <img src="m8.jpg">
                </div>
                <div class="arrivals_tag">
                    <p>>the last saiyuki</p>
                    <a href="#" class="arrivals_btn">Add-Cart🛒</a>
                    <a href="https://mangaplus.shueisha.co.jp/viewer/1001686" class="arrivals_btn">Read</a>
                </div>
            </div>

            <div class="arrivals_card">
                <div class="arrivals_img">
                    <img src="m9.jpg">
                </div>
                <div class="arrivals_tag">
                    <p>> Tsukimichi: Moonlit Fantasy</p>
                    <a href="#" class="arrivals_btn">Add-Cart🛒</a>
                    <a href="https://www.crunchyroll.com/comics/manga/tsukimichi-moonlit-fantasy/volumes" class="arrivals_btn">Read</a>
                </div>
            </div>
             <div class="arrivals_card">
                <div class="arrivals_img">
                    <img src="m10.jpg">
                </div>
                <div class="arrivals_tag">
                    <p>One Piece</p>
                    <a href="" class="arrivals_btn">Add-Cart🛒</a>
                    <a href="https://mangaplus.shueisha.co.jp/viewer/1000486"class="arrivals_btn">Read</a>
                </div>
            </div>
		 <div class="arrivals_card">
                <div class="arrivals_img">
                    <img src="m11.jpg">
                </div>
                <div class="arrivals_tag">
                    <p>Boruto: Naruto Next Generations</p>
                    <a href="" class="arrivals_btn">Add-Cart🛒</a>
                    <a href="https://mangaplus.shueisha.co.jp/viewer/1000230" class="arrivals_btn">Read</a>
                </div>
            </div>
		 <div class="arrivals_card">
                <div class="arrivals_img">
                    <img src="m12.jpg">
                </div>
                <div class="arrivals_tag">
                    <p>jujutsu kaisen</p>
                    <a href="#" class="arrivals_btn">Add-Cart🛒</a>
                    <a href="https://mangaplus.shueisha.co.jp/viewer/1001279" class="arrivals_btn">Read</a>
                </div>
            </div>
		 <div class="arrivals_card">
                <div class="arrivals_img">
                    <img src="m17.jpg">
                </div>
                <div class="arrivals_tag">
                    <p>ONI:Road to be mithiest </p>
                    <a href="" class="arrivals_btn">Add-Cart🛒</a>
                    <a href="https://mangaplus.shueisha.co.jp/viewer/1015932" class="arrivals_btn">Read</a>
                </div>
            </div>
		 <div class="arrivals_card">
                <div class="arrivals_img">
                    <img src="m16.jpg">
                </div>
                <div class="arrivals_tag">
                    <p>Mashle:Magic And Muscles</p>
                    <a href="#" class="arrivals_btn">Add-Cart🛒</a>
                    <a href="https://mangaplus.shueisha.co.jp/viewer/1006359" class="arrivals_btn">Read</a>
                </div>
            </div>
		 <div class="arrivals_card">
                <div class="arrivals_img">
                    <img src="m14.jpg">
                </div>
                <div class="arrivals_tag">
                    <p>Tokyo Shinobi squad</p>
                    <a href="#" class="arrivals_btn">Add-Cart🛒</a>
                    <a href="https://mangaplus.shueisha.co.jp/viewer/1003120" class="arrivals_btn">Read</a>
                </div>
            </div>

            <div class="arrivals_card">
                <div class="arrivals_img">
                    <img src="m15.jpg">
                </div>
                <div class="arrivals_tag">
                    <p>Vibration Man</p>
                    <a href="#" class="arrivals_btn">Add-Cart🛒</a>
                    <a href="https://mangaplus.shueisha.co.jp/viewer/1016728" class="arrivals_btn">Read</a>
                </div>
            </div>
        </div>
		
    </div><br><br><br><br><br><br>

	<center><a
href="comixology.jsp">BACK</a></button></center>
</body><br><br><br><br>

<%
  
      try{
          
          Class.forName("oracle.jdbc.OracleDriver");
         
          Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","sukumar");
        
          Statement st= con.createStatement();
         //st.executeUpdate("delete from STUPROFILEPHOTO");
         //st.execute("commit");
          ResultSet rs = st.executeQuery("SELECT * FROM STUPROFILEPHOTO ");
          
          while(rs.next())
          {

            %>
            <!-- <div class="arrivals_card"  > -->
                <!-- <table border="5px">
                    
                    <tr>
                        <td align='center'><%=rs.getString(1)%></td>
                    </tr>
                    <tr>
                        <td align='center'><img src="images/<%=rs.getString(2)%>"/ width="200px" height="250">
                    </tr> -->
                <!-- <h3><%=rs.getString(1)%></h3>
                <img src="images/<%=rs.getString(2)%>"/ width="200px" height="250"> -->
                <div class="newarr">
                    <div class="newarrimg">
                        <img src="images/<%=rs.getString(2)%>"/ width="200px" height="250">
                    </div>
                    <div class="newarrtag">
                        <!-- <p><%=rs.getString(1)%></p> -->
                    <form name="myform" action="buyaction.jsp" method="post">    
                        <!-- <a href="#" class="arrivals_btn">Learn More</a> -->
                        <input type="text" style="border: none; outline: none;" name="bname" readonly value="<%=rs.getString(1)%>">
                        <!-- <input type="submit" class="" value="Learn More">                  -->
                        <input type="submit" class="login__button" value="Buy">                 
                        <!-- <a href="#" class="arrivals_btn" >Buy</a> -->
                    </form>  
                    </div>
                </div>
            
                    
                    
                    <%
         }
                    %>
                        
                </table>
            </div>





          <%
          }catch(Exception ee)
          {
              ee.printStackTrace();
          }
        %>
        <br><br><br><br><br>


    <footer>
        <span> &copy; comixology, 2023 All rights reserved </span>
        <div class="footer-links">
            <a href="contact.html">Contact Us</a>
            &nbsp;&nbsp;|&nbsp;&nbsp;
            <a href="terms.html">Terms &amp; Conditions</a>
            &nbsp;&nbsp;|&nbsp;&nbsp;
            <a href="about.html">About Us</a>
        </div>
    </footer>
    </footer>
</html>