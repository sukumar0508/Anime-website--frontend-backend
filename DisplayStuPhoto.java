import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import java.io.*;
import java.sql.*;


/**
 * Servlet implementation class DisplayStuPhoto
 */
public class DisplayStuPhoto extends HttpServlet {
	private static final long serialVersionUID = 1L;


	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		System.out.println("serv");
		String imageid=request.getParameter("stuphotoregno");
		
		String imgdbid=null;;
		String imgdbfilename = null;
		//connecting to database
		try {
			
			Class.forName("oracle.jdbc.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","sukumar");
			String imgquery="SELECT * FROM STUPROFILEPHOTO";
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery(imgquery);
			while(rs.next())
			{
				if(rs.getString("StuRegNo").equals(imageid))
				{
					imgdbid=rs.getString("StuRegNo");
					imgdbfilename=rs.getString("photofilename");
				}
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		RequestDispatcher rd;
		request.setAttribute("id",imgdbid);
		request.setAttribute("img",imgdbfilename);
		rd=request.getRequestDispatcher("StuImageDisplay.jsp");
		rd.forward(request,response);
	}
	

}
