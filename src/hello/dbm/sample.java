package hello;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collections;  


class sample{  


public static ArrayList<myPair> get_sorted(ArrayList<String> result1)
{
	
		try{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection(  
			"jdbc:mysql://localhost:3306/PriorityDB","root","jiit@62");  
			
			Statement stmt=con.createStatement();  


			
         
            ArrayList <myPair> priority =
                new ArrayList <myPair> ();
            int x = 0;
			for(Object ob : result1 )
			{
				try
				{   
					String s = "SELECT * from maintable WHERE Path = '" + (String)ob + "'";
					
					ResultSet rs = stmt.executeQuery(s);
					
					while(rs.next())
					{ 
						String a = rs.getString("Path");
						 x = rs.getInt("Score");
						
						priority.add(new myPair((String)ob, -1 * x));
					}
                    x++;
					 
				
				}
				catch(Exception e)
				{
					
				}
			}
			
	     Collections.sort(priority, new myPair());
	       
	       return priority;
}
		catch(Exception e){ 
			
			System.out.println(e);
			return null;}
		 

}


public static void main(String args[])throws IOException{  
  
}  
}