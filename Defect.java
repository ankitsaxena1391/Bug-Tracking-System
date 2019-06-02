
package DOA;
import java.util.List;
import java.util.ArrayList;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import DOA.DBConnection;
public class Defect 
{

    Connection con = null;
    public boolean  LogIn(String qry) throws SQLException
    {
                        boolean LoginStatus = false;
         
                        DBConnection dbcon = new DBConnection();
         
                        con =  dbcon.DBConnection();
                        try 
                        {
                        Statement stmt = con.createStatement();
                        String lSqlString =  qry;
			ResultSet rs  = null;
			rs  = stmt.executeQuery(lSqlString); 
                        if(rs.first())
                        {
                           LoginStatus=true; 
                        }
                        else
                        {
                           LoginStatus = false;
                        }
                        
                        }catch (Exception e)
                        {
                            
                        }
         
        
        return LoginStatus;
         
    }
    public boolean Registration(String qry)
    {
                boolean RegStatus = false; 
                Connection dbcon1;
		try { 
                        DBConnection dbcon = new DBConnection();
                        dbcon1 = dbcon.DBConnection();
                        Statement stmt = dbcon1.createStatement();
                        String lSqlString = qry;
                        int i =  stmt.executeUpdate(lSqlString);
                       
                       if (i > 0)
                       {
                           RegStatus = true;
                           
                       }
                       else
                       {
                           RegStatus = false;
                           
                       }      
			 
                    }
		catch(SQLException  ex)
                {
			ex.printStackTrace();
		}
             
        
        return RegStatus;
    }
    public List getAllProjects(String qry)
    {
         List  projectList = new ArrayList();
         
         Connection dbcon1= null;
         try { 
                       DBConnection dbcon = new DBConnection();
                        dbcon1 = dbcon.DBConnection();
                        Statement stmt = dbcon1.createStatement();
                        
                        String lSqlString =  qry;
			ResultSet rs  = null;
			rs  = stmt.executeQuery(lSqlString); 
                        while(rs.next())
                        { 
                             projectList.add(rs.getString("Project_Id"));
                            projectList.add(rs.getString("Project_Name"));
                              projectList.add(rs.getString("Project_Details"));
                              projectList.add(rs.getString("Project_Type"));
                              projectList.add(rs.getString("No_of_Modules"));
                                projectList.add(rs.getString("Status"));
                             
			}
                         
                    }
		catch(SQLException  ex)
                {
			ex.printStackTrace();
		}
		return projectList;
 
    }
     public List editProject(String qry)
    {
         List  project = new ArrayList();
         
         Connection dbcon1= null;
         try { 
                       DBConnection dbcon = new DBConnection();
                        dbcon1 = dbcon.DBConnection();
                        Statement stmt = dbcon1.createStatement();
                        
                        String lSqlString =  qry;
			ResultSet rs  = null;
			rs  = stmt.executeQuery(lSqlString); 
                        while(rs.next())
                        { 
                            project.add(rs.getString("Project_Id"));
                             
			}
                         
                    }
		catch(SQLException  ex)
                {
			ex.printStackTrace();
		}
		return project;
 
    }
     public boolean projUpdate(String qry)
    {
                boolean projectStatus = false; 
                Connection dbcon1;
		try { 
                        DBConnection dbcon = new DBConnection();
                        dbcon1 = dbcon.DBConnection();
                        Statement stmt = dbcon1.createStatement();
                        String lSqlString = qry;
                        int i =  stmt.executeUpdate(lSqlString);
                       
                       if (i > 0)
                       {
                           projectStatus = true;
                           
                       }
                       else
                       {
                           projectStatus = false;
                           
                       }      
			 
                    }
		catch(SQLException  ex)
                {
			ex.printStackTrace();
		}
             
        
        return projectStatus;
    }
     public boolean groupUpdate(String qry)
    {
                boolean projectStatus = false; 
                Connection dbcon1;
		try { 
                        DBConnection dbcon = new DBConnection();
                        dbcon1 = dbcon.DBConnection();
                        Statement stmt = dbcon1.createStatement();
                        String lSqlString = qry;
                        int i =  stmt.executeUpdate(lSqlString);
                       
                       if (i > 0)
                       {
                           projectStatus = true;
                           
                       }
                       else
                       {
                           projectStatus = false;
                           
                       }      
			 
                    }
		catch(SQLException  ex)
                {
			ex.printStackTrace();
		}
             
        
        return projectStatus;
    }
      public List setGroup(String qry)
    {
         List  project = new ArrayList();
         
         Connection dbcon1= null;
         try { 
                       DBConnection dbcon = new DBConnection();
                        dbcon1 = dbcon.DBConnection();
                        Statement stmt = dbcon1.createStatement();
                        
                        String lSqlString =  qry;
			ResultSet rs  = null;
			rs  = stmt.executeQuery(lSqlString); 
                        while(rs.next())
                        { 
                            project.add(rs.getString("Username"));
                             
			}
                         
                    }
		catch(SQLException  ex)
                {
			ex.printStackTrace();
		}
		return project;
 
    }
       public List setName(String qry)
    {
         List  project = new ArrayList();
         
         Connection dbcon1= null;
         try { 
                       DBConnection dbcon = new DBConnection();
                        dbcon1 = dbcon.DBConnection();
                        Statement stmt = dbcon1.createStatement();
                        
                        String lSqlString =  qry;
			ResultSet rs  = null;
			rs  = stmt.executeQuery(lSqlString); 
                        while(rs.next())
                        { 
                            project.add(rs.getString("Project_Name"));
                           
			}
                         
                    }
		catch(SQLException  ex)
                {
			ex.printStackTrace();
		}
		return project;
 
    }
     
       public List setModules(String qry)
    {
         List  project = new ArrayList();
         
         Connection dbcon1= null;
         try { 
                       DBConnection dbcon = new DBConnection();
                        dbcon1 = dbcon.DBConnection();
                        Statement stmt = dbcon1.createStatement();
                        
                        String lSqlString =  qry;
			ResultSet rs  = null;
			rs  = stmt.executeQuery(lSqlString); 
                        while(rs.next())
                        { 
                          
                            project.add(rs.getString("No_of_Modules"));
                            
                             
			}
                         
                    }
		catch(SQLException  ex)
                {
			ex.printStackTrace();
		}
		return project;
 
    }
       public List setEngineer(String qry)
    {
         List  project = new ArrayList();
         
         Connection dbcon1= null;
         try { 
                       DBConnection dbcon = new DBConnection();
                        dbcon1 = dbcon.DBConnection();
                        Statement stmt = dbcon1.createStatement();
                        
                        String lSqlString =  qry;
			ResultSet rs  = null;
			rs  = stmt.executeQuery(lSqlString); 
                        while(rs.next())
                        { 
                            
                            project.add(rs.getString("Username"));
                            
                             
			}
                         
                    }
		catch(SQLException  ex)
                {
			ex.printStackTrace();
		}
		return project;
 
    }
       public List setStatus(String qry)
    {
         List  project = new ArrayList();
         
         Connection dbcon1= null;
         try { 
                       DBConnection dbcon = new DBConnection();
                        dbcon1 = dbcon.DBConnection();
                        Statement stmt = dbcon1.createStatement();
                        
                        String lSqlString =  qry;
			ResultSet rs  = null;
			rs  = stmt.executeQuery(lSqlString); 
                        while(rs.next())
                        { 
                           
                            project.add(rs.getString("Status"));
                             
			}
                         
                    }
		catch(SQLException  ex)
                {
			ex.printStackTrace();
		}
		return project;
 
    }
      public boolean groupRegistration(String qry)
    {
                boolean RegStatus = false; 
                Connection dbcon1;
		try { 
                        DBConnection dbcon = new DBConnection();
                        dbcon1 = dbcon.DBConnection();
                        Statement stmt = dbcon1.createStatement();
                        String lSqlString = qry;
                        int i =  stmt.executeUpdate(lSqlString);
                       
                       if (i > 0)
                       {
                           RegStatus = true;
                           
                       }
                       else
                       {
                           RegStatus = false;
                           
                       }      
			 
                    }
		catch(SQLException  ex)
                {
			ex.printStackTrace();
		}
             
        
        return RegStatus;
    }
       public List getStatus(String qry)
    {
         List  routeList = new ArrayList();
         
         Connection dbcon1= null;
         try { 
                       DBConnection dbcon = new DBConnection();
                        dbcon1 = dbcon.DBConnection();
                        Statement stmt = dbcon1.createStatement();
                        
                        String lSqlString =  qry;
			ResultSet rs  = null;
			rs  = stmt.executeQuery(lSqlString); 
                        while(rs.next())
                        { 
                             routeList.add(rs.getString("Project_Name"));
                          
                             routeList.add(rs.getString("No_of_Modules"));
                          
                             routeList.add(rs.getString("Status"));
                           
                             
			}
                         
                    }
		catch(SQLException  ex)
                {
			ex.printStackTrace();
		}
		return routeList;
 
    }
       public List getAllEmployeeProject(String qry)
    {
         List  routeList = new ArrayList();
         
         Connection dbcon1= null;
         try { 
                       DBConnection dbcon = new DBConnection();
                        dbcon1 = dbcon.DBConnection();
                        Statement stmt = dbcon1.createStatement();
                        
                        String lSqlString =  qry;
			ResultSet rs  = null;
			rs  = stmt.executeQuery(lSqlString); 
                        while(rs.next())
                        { 
                             routeList.add(rs.getString("Project_Name"));
                             routeList.add(rs.getString("Username"));
                             routeList.add(rs.getString("No_of_Modules"));
                             routeList.add(rs.getString("Start_Date"));
                             routeList.add(rs.getString("End_Date"));
                             routeList.add(rs.getString("Severities"));
                             routeList.add(rs.getString("Testing_Type"));
                             routeList.add(rs.getString("Priority"));
                             routeList.add(rs.getString("Status"));
                             
                              
                             
                             
                             
                             
			}
                         
                    }
		catch(SQLException  ex)
                {
			ex.printStackTrace();
		}
		return routeList;
 
    }
       public List getAllDefect(String qry)
    {
         List  routeList = new ArrayList();
         
         Connection dbcon1= null;
         try { 
                       DBConnection dbcon = new DBConnection();
                        dbcon1 = dbcon.DBConnection();
                        Statement stmt = dbcon1.createStatement();
                        
                        String lSqlString =  qry;
			ResultSet rs  = null;
			rs  = stmt.executeQuery(lSqlString); 
                        while(rs.next())
                        { 
                             routeList.add(rs.getString("Defect_Id"));
                             routeList.add(rs.getString("Username"));
                             routeList.add(rs.getString("Project_Name"));                            
                             routeList.add(rs.getString("No_of_Modules"));
                             routeList.add(rs.getString("Defect_Details"));
                             routeList.add(rs.getString("Date"));
                             
			}
                         
                    }
		catch(SQLException  ex)
                {
			ex.printStackTrace();
		}
		return routeList;
 
    }
     
}
