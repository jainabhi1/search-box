package hello;
class listnode
{
	int data;
	listnode next;
	listnode(int data)
	{
		this.data=data;
		next=null;
	}
}
public class gfg {
	listnode root;
	gfg()
	{
		root=null;
	}
	void push(int data)
	{
		listnode temp=new listnode(data);
		temp.next=root;
		root=temp;
	}
	void print()
	{
		while(root!=null)
		{
			System.out.println(root.data);
			root=root.next;
		}
	}
	public static void main(String [] args)
	{
		gfg l=new gfg();
		for(int i=0;i<5;i++)
			l.push(i);
		l.print();
	}
}
