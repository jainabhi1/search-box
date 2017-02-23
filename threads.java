package hello;
import java.lang.*;
class newthread implements Runnable
{
	Thread t;
	newthread()
	{
		t=new Thread(this,"Demo thread");
		System.out.println("child thread"+t);
		t.start();
	}
	public void run()
	{
		try
		{
			for(int n=10;n>=6;n--)
			{
				System.out.println("child thread "+n);
				//Thread.sleep(500);
			}
		}
			catch (Exception e)
			{
				System.out.println("child interrupted");
			}
		System.out.println("child exiting");
		
	}
}
public class threads {
	public static void main(String [] args)
	{
		new newthread();
		
		try
		{
			for(int i=0;i<5;i++)
			{
				System.out.println(i);
				//Thread.sleep(10000);
			}
		}
		catch(Exception e)
		{
			System.out.println("thread interupted");
		}
		System.out.println("exiting parent");
	}
}
