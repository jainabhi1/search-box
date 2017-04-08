package hello;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "Foo2", urlPatterns = {"/foo1"})
public class hello1 extends HttpServlet 
{
	private static final long serialVersionUID = 2L;
	search_box sbox;
	Context_box c;
	//Filesg fg;
	public hello1() {
		super();
		sbox = new search_box();
		//fg = new Filesg();
		c = new Context_box();
        System.out.println("yoyoyoy");
    }
	void show(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		try
		{
			String search = request.getParameter("text");
			System.out.println(search);
			ArrayList<String> r4 = c.search(search);
			response.setContentType("text/html");
			//response.sendRedirect("boo1.html");
			response.getWriter().println("<ul>Result</ul>");
			for(String s:r4)
			{
				//System.out.println(s);
			//	String x[] = s.split(":");
				//System.out.println(x[1]);
				String xx = "<li><a href=\"/"+ s + "\">" +s+ "</a></li>";
				//System.out.println(xx);
				response.getWriter().println(xx);
				//System.out.println(s);
			}
		}
		catch(Exception e)
		{
			
		}
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		show(request, response);
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
}