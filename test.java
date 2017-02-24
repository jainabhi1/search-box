package hello;
import java.io.*;
import java.util.*;
import org.apache.commons.exec.*;
import java.nio.file.*;
public class test {
	public static void main(String [] args) throws IOException,InterruptedException
	{
		HashMap<String,Set<String> > hm=new HashMap<>();
		trie t=new trie();
		try
		{
		String line = "/bin/sh /home/abhishek/try.sh";
		CommandLine commandLine = CommandLine.parse(line);
		DefaultExecutor executor = new DefaultExecutor();
		executor.setExitValue(1);
		int exitValue = executor.execute(commandLine);
	//	System.out.println(exitValue);
		}
		catch(Exception e)
		{
			//System.out.println("hello");
		}
		File file=new File("/home/abhishek/workspace/hello/hello2.txt");
		String encoding ="UTF-8";
		BufferedReader reader=new BufferedReader(new InputStreamReader(
		new FileInputStream (file), encoding));
		String line="";
		while((line=reader.readLine())!=null)
		{
			//System.out.println(line);
			Path p = Paths.get(line);
			String r=p.getFileName().toString();
			t.add(r);
			if(hm.get(r)==null)
			{
				hm.put(r, new HashSet<>());
			}
			hm.get(r).add(line);
		}
		reader.close();
		BufferedReader br=new BufferedReader(new InputStreamReader(System.in));
		String s=br.readLine();
		ArrayList<String> As=t.prefix(s);
		if(As.isEmpty())
			System.out.println("no file found");
		else
		{
			for(int i=0;i<As.size();i++)
			{
				String r=As.get(i);
				if(hm.get(r)!=null)
				{
					Set<String> boo=hm.get(r);
					for(String ss:boo)
					{
						System.out.println(ss);
					}
				}
			}
			
		}
		
	}
}
