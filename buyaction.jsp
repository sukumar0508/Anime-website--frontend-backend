<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Audiowide|Sofia|Trirong&effect=fire|neon|outline|emboss|shadow-multiple">
    <title>Document</title>
</head>
<style>
	body {
 background-image: url("buy.jpg");
 background-color: #cccccc;
}
</style>
<center><body>
    <h1 class="font-effect-fire"> THIS IS BUY SERVLET</h1>
</body></center>
<center><button style="background-color:red; border-color:blue; color:white"><span></span><a
    href="comixology.jsp">BACK</a></button>
     </center>
</html>
<%@ page import="java.sql.*"%>


<%

    try{
        
		Class.forName("oracle.jdbc.OracleDriver");
       
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","sukumar");
		out.println("SUCCESSFULLY CONNECTED\n");
        Statement st= con.createStatement();
        String bookname=request.getParameter("bname");
        String uname=(String)session.getAttribute("username");
        PreparedStatement pp = con.prepareStatement("insert into buys values(?,?)");
        pp.setString(1,uname);
        pp.setString(2,bookname);
        int f=pp.executeUpdate();
        if(f>0)
        {
            out.println("SUCCESSFULLY BUYED : ");
        }
        
	}catch(Exception ee)
	{
		ee.printStackTrace();
	}
%>
