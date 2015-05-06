<%-- 
    Document   : profile
    Created on : Jul 4, 2014, 7:50:03 AM
    Author     : abhay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome</title>
    </head>

    <body>
        <center><h2><font color="red">WELCOME ${requestScope['nm']}</font></h2></center>
        <div  style="display:block;border-radius:10px;width:600px;height:650px;margin-top: 30px">
            <div style="float: left; height: 140px;width:590px;background-color: aqua;margin-left:5px;margin-top: 5px">
                <%

                try{
                 Class.forName("com.mysql.jdbc.Driver");
                    Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/Holidays","root","password");
                    Statement s=c.createStatement();
                    ResultSet rs=s.executeQuery("select * from sign_up");
                    while(rs.next()){

                    }
                }
                  catch(SQLException e)
                            {
                        }
                     catch(ClassNotFoundException e )
                             {
                         }

                %>
              </div>
               <div style="float: left; height: 140px;width:290px;margin-left:5px;margin-top: 5px">
                     <img src="image/cus3.jpg" height="140px" width="290px" alt="login">
            </div>
             <div style="float: right; height: 140px;width:290px;margin-right:5px;margin-top: 5px">
                  <img src="image/cus4.jpg" height="140px" width="290px" alt="login">
             </div>
              <div style="float: left; height: 40px;width:590px;font-size:20px;margin-left:5px;margin-right: 5px;margin-top: 3px">
                  <center>
                <tr>
                      <td>Jaipur to Chennai</td>
                      <td><a href="user.jsp">Book</a></td>
                  </tr>
                </center>
              </div>
               <div style="float: left; height: 140px;width:290px;margin-left:5px;margin-top: 5px">
                  <img src="image/cus5.jpg" height="140px" width="290px" alt="login">
            </div>
             <div style="float: right; height: 140px;width:290px;margin-right:5px;margin-top: 5px">
                  <img src="image/cus6.jpg" height="140px" width="290px" alt="login">
             </div>
              <div style="float: left; height: 40px;font-size:20px;width:590px;margin-left:5px;margin-right: 5px;margin-top: 3px">
                  <center>
                <tr>
                      <td>Delhi to Mumbai</td>
                      <td><a href="user.jsp">Book</a></td>
                  </tr>
                </center>
              </div>
                <div style="float: left; height: 50px;width:590px;margin-left:5px;margin-right: 5px;margin-top: 10px"></div>
                  <marquee style="color:red; font-size: 20px;margin-top:-30px">Welcome to holiday planner :) please come and enjoy</marquee>
</div>

    </body>
</html>
