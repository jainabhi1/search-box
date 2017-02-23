package hello;
import java.io.*;
public class hbh {
	static String s="";
	public static void listFilesForFolder(final File folder) {
		
	    for (final File fileEntry : folder.listFiles()) {
	        if (fileEntry.isDirectory()) {
	           // listFilesForFolder(fileEntry);
	        } else {
	        	
	        	//string t="([a-zA-Z0-9\s_\\.\-:])+(.txt)$";
	        	String r=fileEntry.getName()+'\n';
	        	System.out.println(fileEntry.getAbsolutePath());
	        	//System.out.print(r);
	            s+=r;
	        }
	    }
	}
	public static void main(String [] args)
	{
		//final File folder=new File("/home/abhishek");
		//listFilesForFolder(folder);
		//System.out.println(s);
		
	}
}
