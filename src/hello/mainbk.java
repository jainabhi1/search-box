package hello;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.*;

class nodebk{
	String str;
	HashMap<Integer , nodebk> child;
	public nodebk()
	{
		str="";
		child=new HashMap<>();
	}
	public nodebk(String s)
	{
		str=s;
		child=new HashMap<>();
	}
}
class edit_distance{

	int dp[][];
	int l1,l2,i,j;
	public edit_distance()
	{
		dp=new int[300][300];
	}
	public int edit(String s1,String s2)
	{
		try
		 {
		 		l1=s1.length();
		 		 l2=s2.length();
		 		 for (i=0;i<=l1;i++)
		         	dp[i][0]=i;
		          for (j=0;j<=l2;j++)
		         	dp[0][j]=j;
		   		for(i=1;i<=l1;i++)
		     	{
		       	  for(j=1;j<=l2;j++)
		      	  	{
		      	       if(s1.charAt(i-1)!=s2.charAt(j-1))
		         	    {
		             	    dp[i][j]=Math.min(1+dp[i-1][j],Math.min(1+dp[i][j-1],1+dp[i-1][j-1]));
		             	}
		             	else
		              	   dp[i][j]=dp[i-1][j-1];
		        	}
		    	}
		    	return dp[l1][l2];
		    }
		    catch(Exception e)
			{
				return -1;
			}
	}
}
class BKTree{
	private nodebk root;
	edit_distance dis;
	public BKTree()
	{
		root=new nodebk();
		dis=new edit_distance();
	}
	public void insert(String s)
	{
		try
		{
			if(root.str==""){
					root.str=s;
				}
				else
				{
					nodebk temp=root;
					int dist=dis.edit(temp.str,s);
					while(temp.child.containsKey(dist)){
						temp=temp.child.get(dist);
						dist=dis.edit(temp.str,s);
					}
					temp.child.put(dist,new nodebk(s));
				}
		}
		catch(Exception e)
			{

			}
	}
	
	public void getlist(nodebk temp,ArrayList<String> list,String s)
	{
		int dist=dis.edit(temp.str,s);
		//System.out.print(temp.str+ " ::");
		if(dist<=4)
			list.add(temp.str);
		int l_limit=(dist-4);
		if(l_limit<0)
			l_limit=0;
		int u_limit=dist+4;
		//System.out.println(l_limit + " " + u_limit);
		// for (int key : temp.child.keySet()) 


		for (int key=l_limit;key<=u_limit;key++) {
			if(temp.child.containsKey(key))
			{	
				getlist(temp.child.get(key),list,s);
			}
		}
	}
	public ArrayList<String> find(String s)
	{
		ArrayList<String> list = new ArrayList<>();
		getlist(root,list,s);
		return list;
	}
}

public class mainbk{
	BKTree bk=new BKTree();
	ArrayList<String> lis = new ArrayList<>();
	mainbk() throws IOException
	{
		File file=new File("/home/abhi/workspace1/hello/WebContent/text_file_names.txt");
		String encoding ="UTF-8";
		BufferedReader reader = new BufferedReader(new InputStreamReader(
		new FileInputStream (file), encoding));
		String line="";
		while((line=reader.readLine())!=null)
		{
			//System.out.println(line);
			try
			{
				bk.insert(line);
			}
			catch(Exception e)
			{

			}

		}
	}
	ArrayList<String> search(String str)
	{
		lis=bk.find(str);
		//System.out.println(lis);
		return lis;
	}
	
}	
