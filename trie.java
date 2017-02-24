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
	public void prefixhelper()
	{
		
	}
	public List<String> prefix()
	{
		ArrayList<String> As=new ArrayList<>();
		return As;
	}
}
