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
	public hello1() {
		super();
		sbox = new search_box();
        // TODO Auto-generated constructor stub
    }
	void show(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		try
		{
			String search = request.getParameter("text");
			System.out.println(search);
			ArrayList<String> r4 = sbox.search(search);
			response.setContentType("text/html");
			//response.sendRedirect("boo1.html");
			response.getWriter().println("<ul>Result</ul>");
			for(String s:r4)
			{
				//System.out.println(s);
				String x[] = s.split(";");
				//System.out.println(x[1]);
				String xx = "<li><a href=\""+ x[1] + "\" target=\"_blank\">" + x[0]+":"+x[1] + "</a></li>";
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
		// TODO Auto-generated method stub
		//RequestDispatcher view = request.getRequestDispatcher("boo.html");
		//view.forward(request, response);
		show(request, response);
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
}