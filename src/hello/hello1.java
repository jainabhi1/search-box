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
import java.net.*;
import java.io.*;


@WebServlet(name = "Foo2", urlPatterns = {"/foo1"})
public class hello1 extends HttpServlet 
{
	private static final long serialVersionUID = 2L;
	Context_box c;
	mainbk b;
	public hello1() throws IOException {
		super();
		try
		{	
			b = new mainbk();
			c = new Context_box();
		}
		catch(Exception e)
		{
			
		}
        System.out.println("yoyoyoy");
    }
	void show1(HttpServletRequest request, HttpServletResponse response, 
			ArrayList<Pair<String,ArrayList<String> > > r5)
	throws IOException
	{
		int flag = 0;
		for(Pair<String,ArrayList<String> > pp:r5)
		{
/////////////////////////////////////////////			if(pp.getSecond().size() != 0)
			//	response.getWriter().println("showing results for " + pp.getFirst() + "---------------");
			for(String ss : pp.getSecond())
			{
				String xx;
				xx = "<li><a href=\"/"+ ss + "\">" +ss+ "</a></li>";
				response.getWriter().write(ss+' ');
				flag = 1;
				
			}
	
		}
		if(flag == 0)
		{
			response.getWriter().write("noresult");
		}
		
	}
	void show(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		
		try
		{
			String search = request.getParameter("text");
			System.out.println(search);
			search = search.toLowerCase();
			//System.out.println(request.getParameter("type"));
			String str = request.getParameter("type");
			if(str.equals("sb"))
			{
				URL oracle = new URL("http://192.168.43.124:8080/ss/sss?text="+search);
		        URLConnection yc = oracle.openConnection();
		        BufferedReader in = new BufferedReader(new InputStreamReader(
		                                yc.getInputStream()));
		        String inputLine;
		        if((inputLine = in.readLine()) == null) 
		        {	
		        	//System.out.println("dc");
		        	ArrayList<String> as = b.search(search);
		        	if(as.size() == 0)
		        	{
		        		response.getWriter().println("NO Resuls");
		        	}
		        	else
		        	{
		        		String str1 = "http://192.168.43.156:8080/Instant_Search/foo2?text="+(String)as.get(0);
		        		response.sendRedirect(str1);
		        	}
		        }
		        else
		        {
		        	String str1 = "http://192.168.43.156:8080/Instant_Search/foo2?text="+search;
		        	response.sendRedirect(str1);
		        }
			}
			else
			{
				ArrayList<Pair<String,ArrayList<String> > > r5 = c.mainsearch2(search);
				show1(request,response,r5);
			}
							
		}
		catch(Exception e)
		{
			
		}
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		response.addHeader("Access-Control-Allow-Origin", "*");
		show(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
}
