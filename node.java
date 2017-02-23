package hello;
import java.util.*;
public class node {
	HashMap<Character,node> children;
	boolean leaf;
	public node()
	{
		children=new HashMap<>();
		leaf=false;
	}
	
}
