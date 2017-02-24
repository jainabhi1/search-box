package hello;
import java.util.*;
public class trie {
	private node root;
	public trie()
	{
		root=new node();
	}
	public void add(String str)
	{
		int l=str.length();
		node temp=root;
		for(int i=0;i<l;i++)
		{
			if(temp.children.containsKey(str.charAt(i))!=true)
			{
				temp.children.put(str.charAt(i), new node());
			}
			temp=temp.children.get(str.charAt(i));
		}
		temp.leaf=true;
	}
	public boolean search(String str)
	{
		int l=str.length();
		node temp=root;
		for(int i=0;i<l;i++)
		{
			if(temp.children.containsKey(str.charAt(i)))
			{
				temp=temp.children.get(str.charAt(i));
			}
			else
				return false;
		}
		if(temp.leaf==true)
			return  true;
		else
			return false;
	}
	public void prefixhelper(node temp,ArrayList<String> As,String s)
	{
		if(temp.leaf==true)
		{
			if(s!="")
				As.add(s);
			s=s.substring(0,s.length()-1);
			return;
		}
		for(int i=0;i<256;i++)
		{
			if(temp.children.get((char)i)!=null)
			{
				prefixhelper(temp.children.get((char)i),As,s+(char)(i));
			}
		}
	}
	public ArrayList<String> prefix(String str)
	{
		ArrayList<String> As=new ArrayList<>();
		node temp=root;
		
		for(int i=0;i<str.length();i++)
		{
			if(temp.children.get(str.charAt(i))!=null)
				temp=temp.children.get(str.charAt(i));
			else
			{
				return As;
			}
		}
		if(temp==root)
			return As;
		prefixhelper(temp,As,str);
		return As;
	}
}
