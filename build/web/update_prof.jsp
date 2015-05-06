<%-- 
    Document   : update_prof
    Created on : Jul 3, 2014, 10:24:53 AM
    Author     : Sunny
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int i=0;
            String user=request.getParameter("t1");
            String pass=request.getParameter("t2");
            String new_user=request.getParameter("t5");
            String new_pass=request.getParameter("t4");
            String new_mail=request.getParameter("t3");
                    try
                    {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/Holidays","root","password");
                    Statement s=c.createStatement();
                    i=s.executeUpdate("update sign_up set name='"+new_user+"',password='"+new_pass+"',e_mail='"+new_mail+"' where name='"+user+"'");
                    if(i>0)
                        {
                            out.print("UPDATED");
                        }
                    else
                        {
                            out.print("FAILED");
                        }
                    }
                    catch(SQLException e)
                            {
                        }
                     catch(ClassNotFoundException e )
                             {
                         }
           
                  /*while(rs.next())
                      {
                       if((user.equals(rs.getString(1)))&&(pass.equals(rs.getString(2))))
                        {
                           out.print("<center><h3>My Profile</h3></center>");
                            out.print("<center>");
                            out.print("<table border='3px'>");
                            out.print("<tr>");
                            out.print("<td>NAME</td>");
                            out.print("<td>Phone</td>");
                            out.print("<td>E_mail</td>");
                            out.print("<td>EDIT</td>");
                            out.print("</tr>");
                            out.print("<tr>");
                            out.print("<td>"+rs.getString(1)+"</td>");
                            out.print("<td>"+rs.getString(4)+"</td>");
                            out.print("<td>"+rs.getString(3)+"</td>");
                            out.print("<td>"+"<a href='update?usr="+rs.getString(1)+"&pass="+rs.getString(2)+"&new_usr="+new_name+"'>UPDATE</a></td>");
                            out.print("</tr>");

                        out.print("</tr>");
                          break;
                          }
                       }
                       */

              %>
              

    </body>
</html>
