package hello;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "Foo2", urlPatterns = {"/foo1"})
public class hello1 extends HttpServlet 
{
	private static final long serialVersionUID = 2L;
	search_box sbox;
	Context_box c;
	mainbk b;
	public hello1() throws IOException {
		super();
		sbox = new search_box();
		c = new Context_box();
		b = new mainbk();
        System.out.println("yoyoyoy");
    }
	void show(HttpServletRequest request, HttpServletResponse response , ArrayList<String> r4,
			ArrayList<Pair<String,ArrayList<String> > > r5) throws IOException
	{
		Set<String> se = new HashSet<String>();
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
		
		for(Pair<String,ArrayList<String> > pp:r5)
		{
			//System.out.println(s);
		//	String x[] = s.split(":");
			//System.out.println(x[1]);
		//	if(pp.getSecond().size() != 0)
				response.getWriter().println("showing results for " + pp.getFirst() + "---------------");
			for(String ss : pp.getSecond())
			{
				String xx;
				//if(se.contains(ss) == false)
				//{	
					xx = "<li><a href=\"/"+ ss + "\">" +ss+ "</a></li>";
					response.getWriter().println(xx);
					//se.add(ss);
				//}
				//System.out.println(s);
			}
	
		}
		
	}
	void show(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		
		try
		{
			String search = request.getParameter("text");
			System.out.println(search);
			search = search.toLowerCase();
			ArrayList<String> r4 = sbox.search(search);
			ArrayList<Pair<String,ArrayList<String> > > r5 = c.mainsearch2(search);
			response.setContentType("text/html");
			//response.sendRedirect("boo1.html");
			if(r4.size() ==0 && r5.size() == 0)
			{
				ArrayList<String> as = b.search(search);
				if(as.size() == 0)
				{
					response.getWriter().println("no results");
				}
				else
				{
					for(String s : as)
					{
						response.getWriter().println("showing results for " + s + "\n");
						r4 = sbox.search(s);
						r5 = c.mainsearch2(s);
						show(request,response,r4,r5);
					}
				}
			}
			else
			{
				show(request,response,r4,r5);
			}
			
		}
		catch(Exception e)
		{
			
		}
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		show(request, response);
		//String json = new Gson(); 
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
}
