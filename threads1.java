package hello;
class nthreads implements Runnable
{
	Thread t;
	static int count=0;
	nthreads()
	{
		t=new Thread(this,"thread"+count);
	}
	void starts()
	{
		t.start();
	}
	public void run()
	{
		try
		{
			for(int n=10;n>=0;n--)
			{
				System.out.println(n);
				Thread.sleep(500);
			}
		}
		catch(InterruptedException e)
		{
			System.out.println("thread "+t.getName());
		}
		System.out.println("exiting "+t.getName());
	}
}
public class threads1 {
	public static void main(String [] args)
	{
		nthreads t1=new nthreads();
		t1.starts();
		
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
			Thread t=Thread.currentThread();
			System.out.println(t.getName());
		}
		System.out.println("exiting parent");
	}
}
