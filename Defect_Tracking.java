

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DOA.DBConnection;
import DOA.Defect;
import java.sql.Date;
import javax.servlet.http.HttpSession;

public class Defect_Tracking extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
            PrintWriter out = response.getWriter();
           
        String action = null;
        Defect defect = new Defect();
        action = request.getParameter("submit");
            
            
        if(action.equals("Login"))
        {
          
        
            String Username=request.getParameter("Username");
            String Password=request.getParameter("Password");
            String Type = request.getParameter("Type");
        
        
        String qry = "select Username,Password,Type from Registration where Username='"+Username+"' and Password='"+Password+"' and Type='"+Type+"' ";
       String redirect =null;
        try {
        boolean res = defect.LogIn(qry);
        
      
        if(res == true)
        {
       
        if(Type.equals("ADMIN"))
        {
            HttpSession session =request.getSession(true);// reuse existing
            session.setAttribute("user", Username);
            RequestDispatcher  rd = request.getRequestDispatcher("/adminHome.jsp");
            rd.forward(request, response);
              //out.print("Hi admin");
            
        
        }
        else if(Type.equals("Software_Tester"))
        {  
              // out.print("Hi tester");
            HttpSession session =request.getSession(true);// reuse existing
            session.setAttribute("user", Username);
            RequestDispatcher  rd = request.getRequestDispatcher("/Tester_Home.jsp");
            rd.forward(request, response);
        }
        else if(Type.equals("Software_Developer"))
        {  
               //out.print("Hi developer");
            HttpSession session =request.getSession(true);// reuse existing
            session.setAttribute("user", Username);
            RequestDispatcher  rd = request.getRequestDispatcher("/Developer_Home.jsp");
            rd.forward(request, response);
        }
        else if(Type.equals("Manager"))
        {  
               //out.print("Hi manager");
            HttpSession session =request.getSession(true);// reuse existing
            session.setAttribute("user", Username);
            RequestDispatcher  rd = request.getRequestDispatcher("/Manager_Home.jsp");
            rd.forward(request, response);
        }
            
        }
        else
        {
            RequestDispatcher  rd = request.getRequestDispatcher("/Error.jsp");
                rd.forward(request, response);
        }
        
       
         
        }   catch(Exception e) { }
       }  
       
             else if(action.equals("Logout"))
         {
            
        	HttpSession session = request.getSession(false);
                //session.setAttribute("user", null);
            	session.removeAttribute("user");
                RequestDispatcher  rd = request.getRequestDispatcher("/Login.jsp");
                rd.forward(request, response);
            
            
            
            
        }
             else if(action.equals("Register"))
        {
             
             int Id = Integer.parseInt(request.getParameter("Id"));

             String Username = request.getParameter("Username");
             String Password = request.getParameter("Password");
             String Type = request.getParameter("Type");
             String DOB = request.getParameter("DOB");
       
            // out.print("id"+cid + "cname "+cname + "date"+ date);
     
     // Railway railway = new Railway();
          String qry = "insert into Registration(Id,Username,Password,Type,DOB) values('"+Id+"','"+Username+"','"+Password+"','"+Type+"','"+DOB+"')";

          boolean st=  defect.Registration(qry);
      if(st==true)
      {
     //out.print("registred !");
      RequestDispatcher rd = request.getRequestDispatcher("/Success.jsp");
      rd.forward(request, response);
      }else
      {
  //   out.print("not registred !");
     RequestDispatcher rd = request.getRequestDispatcher("/Error.jsp");
      rd.forward(request, response);
      }
        }
            else if(action.equals("Register_Project"))
        {
             
             int Project_Id = Integer.parseInt(request.getParameter("Project_Id"));

             String Project_Name = request.getParameter("Project_Name");
             String Project_Details = request.getParameter("Project_Details");
             String Project_Type = request.getParameter("Project_Type");
             int No_of_Modules = Integer.parseInt(request.getParameter("No_of_Modules"));
             String Status = request.getParameter("Status");
       
            // out.print("id"+cid + "cname "+cname + "date"+ date);
     
     
          String qry = "insert into Project(Project_Id,Project_Name,Project_Details,Project_Type,No_of_Modules,Status) values('"+Project_Id+"','"+Project_Name+"','"+Project_Details+"','"+Project_Type+"','"+No_of_Modules+"','"+Status+"')";

          boolean st=  defect.Registration(qry);
      if(st==true)
      {
    // out.print("registred !");
        RequestDispatcher rd = request.getRequestDispatcher("/Success.jsp");
        rd.forward(request, response);
      }else
      {
     //out.print("not registred !");
    RequestDispatcher rd = request.getRequestDispatcher("/Error.jsp");
      rd.forward(request, response);
      }
        }
            
            else if(action.equals("View_Projects"))
        {
            
        List allProjects = new ArrayList();
        String qry = "select * from Project";
        allProjects =  defect.getAllProjects(qry);

       // out.print("data"+ allCustomers);
        
        
        request.setAttribute("allProjects",allProjects); 
        RequestDispatcher  rd = request.getRequestDispatcher("/projectList.jsp");
        rd.forward(request, response);
        allProjects.clear();
        out.close();      
        
       }
            
              else if(action.equals("Set Employee Group"))
        {
            
        List setGroup = new ArrayList();
        String SD="Software_Developer";
        String qry = "select Username from registration where Type='"+SD+"' ";
        setGroup =  defect.setGroup(qry);

       // out.print("data"+ allCustomers);
        
        
        request.setAttribute("setGroup",setGroup); 
        RequestDispatcher  rd = request.getRequestDispatcher("/Employee_Group.jsp");
        rd.forward(request, response);
        setGroup.clear();
        out.close();      
        
       }
              else if(action.equals("Set"))
        {
           
             String emp_Name = request.getParameter("emp_Name");
             int groupId = Integer.parseInt(request.getParameter("groupId"));
           
          String qry = "insert into employee_group(emp_Name,group_Id) values('"+emp_Name+"','"+groupId+"')";

          boolean st=  defect.Registration(qry);
      if(st==true)
      {
    // out.print("Succesful !");
      RequestDispatcher rd = request.getRequestDispatcher("/Success.jsp");
      rd.forward(request, response);
      }else
      {
    // out.print("not Succesful !");
     RequestDispatcher rd = request.getRequestDispatcher("/Error.jsp");
      rd.forward(request, response);
      }
        }
             else if(action.equals("Assign Projects"))
            {
            
        List setProject  = new ArrayList();
       // List setProject1 = new ArrayList();
        List setProject2 = new ArrayList();
        List setProject3 = new ArrayList();
        
        String qry  = "select Project_Name from Project";
       // String qry1 = "select No_of_Modules from Project";
        String SD   = "Software_Developer";
        String qry2 = "select Username from registration where Type='"+SD+"' ";
        String qry3 = "select Status from Status";
        
        setProject  =  defect.setName(qry);
       // setProject1 =  defect.setModules(qry1);
        setProject2 =  defect.setEngineer(qry2);
        setProject3 =  defect.setStatus(qry3);


       // out.print("data"+ allCustomers);
        
        
        request.setAttribute("setProject",setProject);
       // request.setAttribute("setProject1",setProject1);
        request.setAttribute("setProject2",setProject2);
        request.setAttribute("setProject3",setProject3);
        RequestDispatcher  rd = request.getRequestDispatcher("/Assign_Project.jsp");
        rd.forward(request, response);
        setProject.clear();
        out.close();      
        
       }
                else if(action.equals("Register New Defects"))
           {
            
        List setProject  = new ArrayList();
        List setProject1 = new ArrayList();
        List setProject2 = new ArrayList();
        
       
        String qry  = "select Project_Name from Project";
        String qry1 = "select No_of_Modules from Project";
        String SD  = "Software_Developer";
        String qry2 = "select Username from registration where Type='"+SD+"' ";
     
        
        setProject  =  defect.setName(qry);
        setProject1 =  defect.setModules(qry1);
        setProject2 =  defect.setEngineer(qry2);
        


       // out.print("data"+ allCustomers);
        
        
        request.setAttribute("setProject",setProject);
        request.setAttribute("setProject1",setProject1);
        request.setAttribute("setProject2",setProject2);
     
        RequestDispatcher  rd = request.getRequestDispatcher("/Defect_Registration.jsp");
        rd.forward(request, response);
        setProject.clear();
        out.close();      
        
       }
                
                 else if(action.equals("Register_Defects"))
        {
            
            
            int Defect_Id = Integer.parseInt(request.getParameter("Defect_Id"));
            String Username = request.getParameter("Username");
            String Project_Name = request.getParameter("Project_Name");
            int No_of_Modules = Integer.parseInt(request.getParameter("No_of_Modules"));            
            String Defect_Details = request.getParameter("Defect_Details");
            String Date = request.getParameter("Date");
             
             
       
            // out.print("id"+cid + "cname "+cname + "date"+ date);
     
     
          //String qry = "insert into project_Assignment(Project_Name,No_of_Modules,Start_Date,End_Date,Severities,Testing_Type,Priority,Status,Username) values('"+Project_Name+"','"+No_of_Modules+"','"+Start_Date+"','"+End_Date+"','"+Severities+"','"+Testing_Type+"','"+Priority+"','"+Status+"','"+Username+"')";
        String qry = "insert into Defect_Details(Defect_Id,Username,Project_Name,No_of_Modules,Defect_Details,Date) values('"+Defect_Id+"','"+Username+"','"+Project_Name+"','"+No_of_Modules+"','"+Defect_Details+"','"+Date+"')";

          boolean st=  defect.Registration(qry);
      if(st==true)
      {
     //out.print("Defect Registered !");
      RequestDispatcher rd = request.getRequestDispatcher("/Success.jsp");
      rd.forward(request, response);
      }else
      {
     //out.print("Defect not Registered!");
    RequestDispatcher rd = request.getRequestDispatcher("/Error.jsp");
      rd.forward(request, response);
      }
        }
                   else if(action.equals("Assign"))
        {
            
             String Project_Name = request.getParameter("Project_Name");
            int No_of_Modules = Integer.parseInt(request.getParameter("No_of_Modules"));
             
             String Start_Date = request.getParameter("Start_Date");
             String End_Date = request.getParameter("End_Date");
             String Severities = request.getParameter("Severities");
             String Testing_Type = request.getParameter("Testing_Type");
             String Priority = request.getParameter("Priority");
             String Status = request.getParameter("Status");
             String Username = request.getParameter("Username");
       
            // out.print("id"+cid + "cname "+cname + "date"+ date);
     
     
          //String qry = "insert into project_Assignment(Project_Name,No_of_Modules,Start_Date,End_Date,Severities,Testing_Type,Priority,Status,Username) values('"+Project_Name+"','"+No_of_Modules+"','"+Start_Date+"','"+End_Date+"','"+Severities+"','"+Testing_Type+"','"+Priority+"','"+Status+"','"+Username+"')";
        String qry = "insert into project_Assignment(Project_Name,No_of_Modules,Username,Start_Date,End_Date,Severities,Testing_Type,Status,Priority) values('"+Project_Name+"','"+No_of_Modules+"','"+Username+"','"+Start_Date+"','"+End_Date+"','"+Severities+"','"+Testing_Type+"','"+Status+"','"+Priority+"')";
        String qry1 = "insert into project_Status(Project_Name,No_of_Modules,Status) values('"+Project_Name+"','"+No_of_Modules+"','"+Status+"')";

          boolean st=  defect.Registration(qry);
          boolean st1=  defect.Registration(qry1);
      if(st==true)
      {
    // out.print("Assigned !");
      RequestDispatcher rd = request.getRequestDispatcher("/Success.jsp");
      rd.forward(request, response);
      }else
      {
    // out.print("not Assigned !");
       RequestDispatcher rd = request.getRequestDispatcher("/Error.jsp");
       rd.forward(request, response);
      }
       if(st1==true)
      {
    // out.print("Assigned !");
      RequestDispatcher rd = request.getRequestDispatcher("/Success.jsp");
      rd.forward(request, response);
      }else
      {
    // out.print("not Assigned !");
       RequestDispatcher rd = request.getRequestDispatcher("/Error.jsp");
       rd.forward(request, response);
      }
        }
            
             else if (action.equals("EditProjects"))
       {
           
        List allProjects = new ArrayList();
        String qry = "select Project_Id from Project";
        allProjects =  defect.editProject(qry);

        //out.print("data"+ allCustomers);
        
        request.setAttribute("allProjects",allProjects); 
        RequestDispatcher  rd = request.getRequestDispatcher("/editProject.jsp");
        rd.forward(request, response);
        allProjects.clear();
        out.close();      
         
       }
            else if(action.equals("Update Project"))
       {
           //out.print("update railway ");
           int pid = Integer.parseInt(request.getParameter("projectid"));
           //out.print("upating id"+uid);
           String field = (String)request.getParameter("field");
          //out.print("field" + field);
           String newdata = request.getParameter("newdata");
           //int newModules = Integer.parseInt(request.getParameter("newModules"));
           //out.print("new data "+ newdata);
           String qry = null;
           boolean b = false;
           if(field.equals("Project_Name"))
           {
             // out.print("Editing name ");
               qry = "update Project set Project_Name='"+newdata+"' where Project_Id='"+pid+"'";
               b = defect.projUpdate(qry);
               if(b==true)
               {
                   // out.print("updated Successfully!");
               
                RequestDispatcher  rd = request.getRequestDispatcher("/Success.jsp");
                rd.forward(request, response);
                
               } else {
                   
                   //out.print("not updated !");
               
               RequestDispatcher  rd = request.getRequestDispatcher("/Error.jsp");
               rd.forward(request, response);
               
               }
              
           }
           if(field.equals("Project_Details"))
           {
                 //out.print("Editing date of birth ");
                 
                 qry = "update Project set Project_Details='"+newdata+"' where Project_Id='"+pid+"'";
               b = defect.projUpdate(qry);
               if(b==true)
               {
                    //out.print("updated !");
               RequestDispatcher  rd = request.getRequestDispatcher("/Success.jsp");
               rd.forward(request, response);
                
               } else
               {
                    //out.print("not updated !");
               
               RequestDispatcher  rd = request.getRequestDispatcher("/Error.jsp");
               rd.forward(request, response);
                 
               }                
           }
           if(field.equals("Project_Type"))
           {
                 //out.print("Editing date of birth ");
                 
                 qry = "update Project set Project_Type='"+newdata+"' where Project_Id='"+pid+"'";
               b = defect.projUpdate(qry);
               if(b==true)
               {
                    //out.print("updated !");
               RequestDispatcher  rd = request.getRequestDispatcher("/Success.jsp");
               rd.forward(request, response);
                
               } else
               {
                    //out.print("not updated !");
               
               RequestDispatcher  rd = request.getRequestDispatcher("/Error.jsp");
               rd.forward(request, response);
                 
               }                
           }
           if(field.equals("No_of_Modules"))
           {
              
               qry = "update Project set No_of_Modules='"+newdata+"' where Project_Id='"+pid+"'";
               b = defect.projUpdate(qry);
               if(b==true)
               {
                    //out.print("updated !");
               RequestDispatcher  rd = request.getRequestDispatcher("/Success.jsp");
               rd.forward(request, response);
                
               } else
               {
                    //out.print("not updated !");
               
               RequestDispatcher  rd = request.getRequestDispatcher("/Error.jsp");
               rd.forward(request, response);
                 
               }                
           }
            
           
       }
            else if(action.equals("Assign Projects"))
       {
           //out.print("update railway ");
           int field = Integer.parseInt(request.getParameter("field"));       
           String emp_Name = (String)request.getParameter("emp_Name");           
           String qry = null;
           int gid1=1;
           int gid2=2;
           int gid3=3;
           boolean b = false;
           if(field==1)
           {
             // out.print("Editing name ");
           qry = "insert into employee_group(emp_Name,groupId) values('"+emp_Name+"','"+gid1+"')";
               b = defect.groupRegistration(qry);
               if(b==true)
               {
                    //out.print("registered Successfully!");
                   RequestDispatcher rd = request.getRequestDispatcher("/Success.jsp");
                   rd.forward(request, response);
               } else {
                   
                   //out.print("not registered !");
                   RequestDispatcher rd = request.getRequestDispatcher("/Error.jsp");
                   rd.forward(request, response);
                }
               
           }
           if(field==2)
           {
             // out.print("Editing name ");
           qry = "insert into employee_group(emp_Name,groupId) values('"+emp_Name+"','"+gid2+"')";
               b = defect.groupRegistration(qry);
               if(b==true)
               {
                    //out.print("registered Successfully!");
                    RequestDispatcher rd = request.getRequestDispatcher("/Success.jsp");
                    rd.forward(request, response);

               } else {
                   
                   //out.print("not registered !");
                   RequestDispatcher rd = request.getRequestDispatcher("/Error.jsp");
      rd.forward(request, response);
                }
               
           }
           if(field==3)
           {
             // out.print("Editing name ");
           qry = "insert into employee_group(emp_Name,groupId) values('"+emp_Name+"','"+gid3+"')";
               b = defect.groupRegistration(qry);
               if(b==true)
               {
                    //out.print("registered Successfully!");
                   RequestDispatcher rd = request.getRequestDispatcher("/Success.jsp");
      rd.forward(request, response);

               } else {
                   
                   //out.print("not registered !");
                   RequestDispatcher rd = request.getRequestDispatcher("/Error.jsp");
      rd.forward(request, response);
                }
              } 
           }
            
            else if(action.equals("Get Projects"))
        {
        HttpSession session=request.getSession(false);  
        String n=(String)session.getAttribute("user");  
        out.print("Hello "+n);  
   
        List projectEmp = new ArrayList();
        List setProject = new ArrayList();  
        List setProject1 = new ArrayList();
        List setProject3 = new ArrayList();
        
        String qry1 = "select * from project_assignment where Username='"+n+"'";
        String qry = "select Project_Name from Project_Assignment where Username='"+n+"'";
        String qry3 = "select Status from Status ";
        String qry2 = "select No_of_Modules from module";
        
              
         setProject1 =  defect.setModules(qry2);
         projectEmp =  defect.getAllEmployeeProject(qry1);
         setProject =  defect.setName(qry);
         setProject3 =  defect.setStatus(qry3);
               
        request.setAttribute("setProject1",setProject1);  
        request.setAttribute("setProject",setProject);
        request.setAttribute("setProject3",setProject3);
        request.setAttribute("projectEmp",projectEmp); 
         
        RequestDispatcher  rd = request.getRequestDispatcher("/Project_Information.jsp");
        rd.forward(request, response);
        projectEmp.clear();
        out.close();      
        
       
       }
             else if(action.equals("Get Assigned Projects"))
        {
        HttpSession session=request.getSession(false);  
        String n=(String)session.getAttribute("user");  
        out.print("Hello "+n);  
   
        List projectEmp = new ArrayList();
       
        
        String qry1 = "select * from project_Assignment";
        
        projectEmp =  defect.getAllEmployeeProject(qry1);
         
        request.setAttribute("projectEmp",projectEmp); 
         
        RequestDispatcher  rd = request.getRequestDispatcher("/AllProjects.jsp");
        rd.forward(request, response);
        projectEmp.clear();
        out.close();      
        
       
       }
              else if(action.equals("Get Assigned Defects"))
        {
        HttpSession session=request.getSession(false);  
        String n=(String)session.getAttribute("user");  
        out.print("Hello "+n);  
   
        List projectEmp = new ArrayList();
       
        
        String qry1 = "select * from Defect_Details";
        
        projectEmp =  defect.getAllDefect(qry1);
         
        request.setAttribute("projectEmp",projectEmp); 
         
        RequestDispatcher  rd = request.getRequestDispatcher("/All_Defects.jsp");
        rd.forward(request, response);
        projectEmp.clear();
        out.close();      
        
       
       }
               else if(action.equals("Get My Project Defects"))
        {
        HttpSession session=request.getSession(false);  
        String n=(String)session.getAttribute("user");  
        out.print("Hello "+n);  
   
        List projectEmp = new ArrayList();
       
        
        String qry1 = "select * from Defect_Details where Username='"+n+"' ";
        
        projectEmp =  defect.getAllDefect(qry1);
         
        request.setAttribute("projectEmp",projectEmp); 
         
        RequestDispatcher  rd = request.getRequestDispatcher("/All_Defects.jsp");
        rd.forward(request, response);
        projectEmp.clear();
        out.close();      
        
       
       }
             else if(action.equals("Update_Status"))
       {
     
           String Project_Name = (String)request.getParameter("Project_Name");
         int No_of_Modules = (int)Integer.parseInt(request.getParameter("No_of_Modules"));
           String Status = (String)request.getParameter("Status");
         
           String qry = null;
           String qry1 = null;
           boolean b = false;
           
             // out.print("Editing name ");
           qry  = "update Project_Status set No_of_Modules='"+No_of_Modules+"' where Project_Name='"+Project_Name+"' ";
           qry1 = "update Project_Status set Status='"+Status+"'  where Project_Name='"+Project_Name+"' ";

               b = defect.projUpdate(qry);
               b = defect.projUpdate(qry1);
               
               if(b==true)
               {
                    //out.print("updated Successfully!");
                    RequestDispatcher rd = request.getRequestDispatcher("/Success.jsp");
      rd.forward(request, response);
                          
                
               } else {
                   
                   //out.print("not updated !");
               RequestDispatcher rd = request.getRequestDispatcher("/Error.jsp");
      rd.forward(request, response);               
               
               
               }
               
         
       }
        else if(action.equals("See Project Status"))
        {
        HttpSession session=request.getSession(false);  
        String n=(String)session.getAttribute("user");  
        out.print("Hello "+n);  
   
        List projectEmp1 = new ArrayList();
       
        
        String qry1 = "select * from project_Status";
        
        projectEmp1 =  defect.getStatus(qry1);
         
        request.setAttribute("projectEmp1",projectEmp1); 
         
        RequestDispatcher  rd = request.getRequestDispatcher("/Project_Status.jsp");
        rd.forward(request, response);
        projectEmp1.clear();
        out.close();      
        
       
       }
    }
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
