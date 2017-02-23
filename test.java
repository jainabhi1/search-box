package hello;
import java.io.*;
public class test {
	public static void main(String [] args) throws IOException,InterruptedException
	{
		String command ="sudo find /home/abhishek -name \"*.txt\"";
		
		Process proc =Runtime.getRuntime().exec(command);
		
		BufferedReader reader =  new BufferedReader(new InputStreamReader(proc.getInputStream()));
		
		String line="";
		
		while((line = reader.readLine())!=null)
		{
			System.out.println(line);
		}
		
		proc.waitFor();
	}
}
