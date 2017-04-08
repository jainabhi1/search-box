package hello;

//package hello;
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
class Pair<T,V>
{
	private T first;
	private V second;
	Pair(T first,V second)
	{
		this.first=first;
		this.second=second;
	}
	T getFirst()
	{
		return first;
	}
	V getSecond()
	{
		return second;
	}
	void setSecond(V obj1)
	{
		second=obj1;
	}
}
class node {
	HashMap<Character,node> children;
	boolean leaf;
	public node()
	{
		children = new HashMap<>();
		leaf = false;
	}
	
}
class trie {
	private node root;
	public trie()
	{
		root = new node();
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
	//ArrayList pp = new ArrayList<Character>();
	public void prefixhelper(node temp,ArrayList<String> As,String s)
	{
		//System.out.println(s);
		if(temp.leaf == true)
		{

			if(s != "")
				As.add(s/*temp.list*/);
			
			if(temp.children.size() == 0)
			{
				if(s.length() > 0)
					s = s.substring(0,s.length()-1);
				return;
			}
		}
		//System.out.println("hello");
		for(int i=0;i<256;i++)
		{
			if(temp.children.get((char)i)!=null)
			{
				//pp.add((char)i);
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
			try
			{
				//Character c=new Character(str.charAt(i));
				//pp.add(c);
				if(temp.children.get(str.charAt(i))!=null)
					temp=temp.children.get(str.charAt(i));
				else
				{
					return As;
				}
			}
			catch(Exception e)
			{

			}
		}
		if(temp==root)
			return As;
		//System.out.println(pp.toString());
		prefixhelper(temp,As,str);
		return As;
	}
}
class HMap<T,U> {
	private int size;
	private int no_of_keys;
	private ArrayList [] as;
	public HMap()
	{
		size = 64;
		no_of_keys = 0;
		as = new ArrayList[size];
		for( int i=0; i<size ; i++)
		{
			as[i] = new ArrayList< Pair<T,U> >();
		}
	}

	private int Index(T obj)
	{
		return (obj.hashCode() & 0xfffffff)%(size-1);
	}

	private Pair<T,U> search(T obj1)
	{
		int index = Index(obj1);
		ArrayList las = as[index];
		if(las.size() == 0)
			return null;
		for(Object obj : las)
		{
			Pair p = (Pair<T,U>)obj;
			if(p.getFirst().hashCode() == obj1.hashCode() )
			{
				return p;
			}
		}
		return null;
	}

	private void TableDouble()
	{
		ArrayList pas = new ArrayList < Pair<T,U> > ();
		for(int i=0; i<size; i++)
		{
			for(int j=0; j<as[i].size(); j++)
			{
				pas.add((Pair<T,U>)as[i].get(j));
			}
		}
		size = size*2;
		as = new ArrayList[size];
		for(int i=0; i<size; i++)
		{
			as[i] = new ArrayList< Pair<T,U> >();
		}
		no_of_keys=0;
		for(int i=0; i<pas.size(); i++)
		{
			Pair p = (Pair<T,U>)pas.get(i);
			insert((T)p.getFirst(),(U)p.getSecond());
		}

	}

	private void TableShrink()
	{
		ArrayList pas = new ArrayList < Pair<T,U> > ();
		for(int i=0; i<size; i++)
		{
			for(int j=0; j<as[i].size(); j++)
			{
				pas.add((Pair<T,U>)as[i].get(j));
			}
		}
		as = new ArrayList[size/2];
		for(int i=0; i<size/2; i++)
		{
			as[i] = new ArrayList< Pair<T,U> >();
		}
		size = size/2;
		no_of_keys=0;
		for(int i=0; i<pas.size(); i++)
		{
			Pair p = (Pair<T,U>)pas.get(i);
			insert((T)p.getFirst(),(U)p.getSecond());
		}
	}

	public boolean containsKey(T obj1)
	{
		Pair s = search(obj1);
		if(s == null)
			return false;
		return true;
	}

	public U getValue(T obj1)
	{
		Pair s = search(obj1);
		return (U)s.getSecond(); 
	}

	public void insert(T obj1,U obj2)
	{
		int i = Index(obj1);
		Pair p = new Pair<T,U>(obj1,obj2);
		if(containsKey(obj1) == true)
		{
			Pair s= (Pair<T,U>)search(obj1);
			s.setSecond(obj2);
		}
		else
		{
			no_of_keys++;
			as[i].add(p);
			if(no_of_keys == size)
			{
				TableDouble();
			}
		}
	}

	public void remove(T obj1)
	{
		if(containsKey(obj1) == false)
			return;
		int ii = Index(obj1);
		int indel = -1;
		for(int i=0; i<as[ii].size(); i++)
		{
			Pair p = (Pair<T,U>)as[ii].get(i);
			if(p.getFirst().hashCode() == obj1.hashCode())
			{
				indel = i;
				break;
			}
		}
		if(indel == -1)
			return;
		as[ii].remove(indel);
		no_of_keys--;
		if(no_of_keys <= size/4 && size > 64)
			TableShrink();
	}

	public int size()
	{
		return no_of_keys;
	}
	
}
public class search_box
{
	private HMap hm;
	private trie t;
	public search_box()
	{
		 hm = new HMap<String,String>();
		 t = new trie();
		//HMap hm =new HMap<Integer,Integer>();
		try
		{
				File file=new File("/home/abhi/workspace1/hello/WebContent/text_files.txt");
				String encoding ="UTF-8";
				BufferedReader reader = new BufferedReader(new InputStreamReader(
				new FileInputStream (file), encoding));
				String line="";
				int count=0;
				while((line=reader.readLine())!=null)
				{
					//System.out.println(line);
					try
					{
					Path p = Paths.get(line);
					String r=p.getFileName().toString();
					hm.insert(r, line);
					//System.out.println(r);
					}
					catch(Exception e)
					{

					}
					//hm.insert(r, line);
					
				}
				file=new File("/home/abhi/workspace1/hello/WebContent/text_files_names.txt");
				reader=new BufferedReader(new InputStreamReader(
				new FileInputStream (file), encoding));
				while((line=reader.readLine())!=null)
				{
					
					try
					{
						t.add(line);
					}
					catch(Exception e)
					{
						//System.out.println(line);
					}
					//hm.insert(r, line);
					
				}
		}
		catch(Exception e)
		{

		}
		
	}
	ArrayList<String> search(String str)
	{
		ArrayList<String> result1 = new ArrayList<String>();
		ArrayList<String> result2 = new ArrayList<String>();
		result1 = t.prefix(str);
		for(Object o : result1)
		{
			try
			{
				String qq = (String)o;
				String pp = (String)hm.getValue(qq);
				result2.add(qq+":"+"hello/"+pp);
			}
			catch(Exception e)
			{

			}
		}
		return result2;
	}
	
}
