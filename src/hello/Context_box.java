package hello;
import java.util.*;
import java.io.*;
public class Context_box {
	private HashMap<String,Boolean> hm = new HashMap<String,Boolean>();
	private HashMap<String,HashSet<String> > hm1 = new HashMap<String,HashSet<String> >();
	public Context_box()
	{
		try
		{
			
			FileReader in = new FileReader("/home/abhi/Desktop/stopwords.txt");
			BufferedReader br = new BufferedReader(in);
			String line = "";
			while((line = br.readLine()) != null )
			{
				//System.out.println(line);
				hm.put(line,true);
			}
			in = new FileReader("/home/abhi/workspace1/hello/WebContent/text_files.txt");
			br = new BufferedReader(in);
			int count = 0;
			while((line = br.readLine()) != null )
			{
				FileReader in1 = new FileReader("/home/abhi/workspace1/hello/WebContent/"+line);
				BufferedReader br1 = new BufferedReader(in1);
				String line1 = "";
				while((line1 = br1.readLine()) != null )
				{
					String tokens[] = line1.split(" ");
					int size = tokens.length;
					//System.out.println(size);
					for(int i=0; i < size; i++)
					{
						if(hm.containsKey(tokens[i]) == false )
						{
							if(hm1.containsKey(tokens[i]) == false)
							{
								hm1.put(tokens[i],new HashSet<String>() );
								hm1.get(tokens[i]).add(line);
								count++;
							}
							else
							{
								hm1.get(tokens[i]).add(line);
							}
							
						}
						//System.out.println(tokens[i]);
					}
				}
				
			}
			
			System.out.println(count);

		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}
	ArrayList<String> search(String str) 
	{
		ArrayList<String> As = new ArrayList<String>();
		try
		{
			HashSet hs = hm1.get(str);
			for(Object o : hs)
			{
				As.add("hello/"+(String)o);
			}
		}
		catch(Exception e)
		{
			
		}
		return As;
	}
	public static void main(String[] args)
	{
		//"hello"
		Context_box c = new Context_box();
		System.out.println("uououo");
		ArrayList as = c.search("hello");
		for(Object o : as)
		{
			System.out.println((String)o);
		}
	}
}
