package hello;
class nthreads1 extends Thread
{
	Thread t;
	nthreads1()
	{
		super("hello");
		t=Thread.currentThread();
		start();
	}
	public void run()
	{
		try
		{
			for(int i=10;i>=0;i--)
			{
				System.out.println(i);
				Thread.sleep(500);
			}
		}
		catch(InterruptedException e)
		{
			System.out.println(t.getName());
		}
		System.out.println("exiting child");
	}
}
public class threads2 {
	public static void main(String [] args)
	{
		new nthreads1();
		
		Thread t=Thread.currentThread();
		
		try
		{
			for(int i=20;i>=11;i--)
			{
				System.out.println(i);
				Thread.sleep(1000);
			}
		}
		catch(InterruptedException e)
		{
			System.out.println(t.getName());
		}
		System.out.println("exiting parent");
	}
}
