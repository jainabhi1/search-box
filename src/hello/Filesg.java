package hello;
import org.apache.commons.exec.*;
import java.io.*;
public class Filesg
{
	public Filesg()
	{
		try
		{
			String line = "sh /home/abhi/workspace1/hello/WebContent/new.sh";
			CommandLine commandLine = CommandLine.parse(line);
			DefaultExecutor executor = new DefaultExecutor();
			executor.setExitValue(1);
			int exitValue = executor.execute(commandLine);
		}
		catch(Exception e)
		{
			//System.out.println("hello");
		}
	}
	public static void main(String[] args)
	{
		Filesg f = new Filesg();
	}
}