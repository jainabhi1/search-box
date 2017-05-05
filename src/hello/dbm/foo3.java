package hello;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class foo3
 */
@WebServlet("/foo3")
public class foo3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	public Connection con; 
    public foo3() {
        super();
        

		try{  
			Class.forName("com.mysql.jdbc.Driver");  
			con=DriverManager.getConnection(  
			"jdbc:mysql://localhost:3306/PriorityDB","root","jiit@62");  
			
			
		}
		catch(Exception e)
		{
			
		}
        
        
        
        // TODO Auto-generated constructor stub
    }
           
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try
		{
		Statement stmt=con.createStatement();  
		String kesri = request.getParameter("query");
		
		String st = "SELECT * from maintable WHERE Path = '" + kesri + "'";
		ResultSet rs = stmt.executeQuery(st);
		int x = 0;
		while(rs.next())
		{
			x = rs.getInt("Score") + 1;
		}
		
		
		String s = "UPDATE maintable SET Score = '" + x + "'WHERE Path = '" + kesri + "'";
		stmt.executeUpdate(s);
		}
		catch(Exception e)
		{
		System.out.println(e);	
		}
		
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
