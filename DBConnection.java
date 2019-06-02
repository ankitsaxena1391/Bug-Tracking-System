 
package DOA;
 
import java.sql.Connection;
import java.sql.DriverManager;


public class DBConnection 
{
    
    
Connection con=null;


public Connection DBConnection()
{
     
        try
        {  
        Class.forName("com.mysql.jdbc.Driver");  
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbnew","root","1391");  
        }
        catch(Exception e)
        {
         System.out.println("exception ");
        }  
     return con;
    
}
}

