package hello;

import java.io.*;
import java.net.*;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collections;  

/**
 * Servlet implementation class foo2
 */
@WebServlet("/foo2")
public class foo2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public foo2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		response.setContentType("text/html");
		response.addHeader("Access-Control-Allow-Origin", "*");
		String query = request.getParameter("text");
		URL oracle = new URL("http://192.168.43.124:8080/ss/sss?text=" + query);
        URLConnection yc = oracle.openConnection();
        BufferedReader in = new BufferedReader(new InputStreamReader(
                                yc.getInputStream()));
        
        ArrayList<String> result1 = new ArrayList<String>();
        String inputLine;
        int x = 0;
        while ((inputLine = in.readLine()) != null) 
            { 
        	result1.add(inputLine);
        	
            }
      System.out.println(result1.get(0) + " " + x);
        ArrayList <myPair> priority =
                new ArrayList <myPair> ();
      
        sample obsample = new sample();
        priority = obsample.get_sorted(result1);
       
       for(myPair p : priority)
        	response.getWriter().write(p.getFirst() + ' ');
        in.close();
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
