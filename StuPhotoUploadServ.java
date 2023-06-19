
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;


/**
 * Servlet implementation class bookimageUploadServ
 */
@MultipartConfig
public class StuPhotoUploadServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StuPhotoUploadServ() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		PrintWriter printer=response.getWriter();
		String userid=request.getParameter("regno");
		
		Part file=request.getPart("image");
		String imagefilename=file.getSubmittedFileName();
		System.out.println(imagefilename);
		
		String uploadpath="images/"+imagefilename;
		System.out.println("selected image path with filename : "+uploadpath);
		
		try {
			
		
		FileOutputStream fos=new FileOutputStream(uploadpath);
		InputStream is=file.getInputStream();
		
		byte[] data=new byte[is.available()];
		is.read(data);
		fos.write(data);
		fos.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		//connecting to database
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","sukumar");
			String uploadquery="INSERT INTO STUPROFILEPHOTO VALUES(?,?)";
			PreparedStatement ps=con.prepareStatement(uploadquery);
			ps.setString(1, userid);
			ps.setString(2, imagefilename);
			int rows=ps.executeUpdate();
			if(rows>0)
			{

				printer.println("<div class='servmsg'>");
				printer.println("<h2 style='color:red'>"+"Registration failed"+"</h2>");
				printer.println("</div>");
				System.out.println("image added into database");
				RequestDispatcher rd;
				rd=request.getRequestDispatcher("bookimgupload.jsp");
				rd.forward(request,response);
				
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		
	}

}
