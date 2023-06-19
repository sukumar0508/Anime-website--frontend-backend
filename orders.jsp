<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <h1>this is cart</h1>
    <%@ page import="java.sql.*"%>

    <%

    try{
        
		Class.forName("oracle.jdbc.OracleDriver");
    
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","sukumar");
        Statement st= con.createStatement();
        
        String uname=(String)session.getAttribute("user");
        ResultSet rs=st.executeQuery("select b.bookname,e.photofilename from stuprofilephoto e,buys b where e.sturegno=b.bookname and b.email like '"+uname+"'");
        
        while(rs.next())
        {
            
            %>
            
                            <img src="images/<%=rs.getString("photofilename")%>"/ width="200px" height="250">
                       
                            <p><%out.println(rs.getString(1));%></p>
                            <a href="" class="arrivals_btn">Learn More</a>
                            <a href="#" class="arrivals_btn">$20</a>
                        
            <%
            //out.println(rs.getString(1)+"<br><br><br>");
        }
        
        
	}catch(Exception ee)
	{
		out.println(ee);
	}
%>

</body>
</html>