<%-- 
    Document   : customar_pack.jsp
    Created on : Jul 3, 2014, 12:14:08 AM
    Author     : user
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
        <center>
    <h1 style="color: chocolate;font-style: italic">PACKAGE INFORMATION</h1>
        </center>
        <%
        
          try
        {
       Class.forName("com.mysql.jdbc.Driver");
    
       Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/Holidays", "root", "password");
Statement st=c.createStatement();
ResultSet rs=st.executeQuery("select * from package_info");

out.print("<table border='1px'>");
out.print("<tr>");
out.print("<td>");
out.print("p_id");

out.print("</td>");
out.print("<td>");
out.print("start_place");
out.print("</td>");
out.print("<td>");
out.print("end place");
out.print("</td>");
out.print("</tr>");
while(rs.next())
    {

out.print("<tr>");
out.print("<td>");
out.print(rs.getInt(1));
out.print("</td>");
out.print("<td>");
out.print(rs.getString(2));
out.print("</td>");
out.print("<td>");
out.print(rs.getString(3));
out.print("</td>");

out.print("</tr>");

    }
out.print("</table>");

}
            catch(ClassNotFoundException e)
        {
            System.out.print("class not found");
        }
        catch(SQLException e)
        {
             System.out.print("sql exception");
        }
          out.print("<br>");
          out.print("<br>");
           try
        {
       Class.forName("com.mysql.jdbc.Driver");

       Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/Holidays", "root", "password");
Statement st=c.createStatement();
ResultSet rs=st.executeQuery("select * from days");
out.print("<center>");
out.print("<table border='2px'>");
out.print("<tr>");
out.print("<td>");
out.print("d_id");

out.print("</td>");
out.print("<td>");
out.print("days");
out.print("</td>");
out.print("<td>");
out.print("p_id");
out.print("</td>");
out.print("</tr>");
while(rs.next())
    {

out.print("<tr>");
out.print("<td>");
out.print(rs.getInt(1));
out.print("</td>");
out.print("<td>");
out.print(rs.getInt(2));
out.print("</td>");
out.print("<td>");
out.print(rs.getInt(3));
out.print("</td>");

out.print("</tr>");

    }
out.print("</table>");
out.print("</center>");
}
            catch(ClassNotFoundException e)
        {
            System.out.print("class not found");
        }
        catch(SQLException e)
        {
             System.out.print("sql exception");
        }
           out.print("<br>");
          out.print("<br>");

             try
        {
       Class.forName("com.mysql.jdbc.Driver");

       Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/Holidays", "root", "password");
Statement st=c.createStatement();
ResultSet rs=st.executeQuery("select * from package_price");

out.print("<table border='2px'style='float:right'>");
out.print("<tr>");
out.print("<td>");
out.print("a_id");

out.print("</td>");
out.print("<td>");
out.print("amount");
out.print("</td>");
out.print("<td>");
out.print("d_id");
out.print("</td>");
out.print("</tr>");
while(rs.next())
    {

out.print("<tr>");
out.print("<td>");
out.print(rs.getInt(1));
out.print("</td>");
out.print("<td>");
out.print(rs.getString(2));
out.print("</td>");
out.print("<td>");
out.print(rs.getInt(3));
out.print("</td>");

out.print("</tr>");

    }
out.print("</table>");
out.print("</center>");
}
            catch(ClassNotFoundException e)
        {
            System.out.print("class not found");
        }
        catch(SQLException e)
        {
             System.out.print("sql exception");
        }
        %>

    </body>
</html>
