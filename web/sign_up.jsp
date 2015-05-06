<%-- 
    Document   : sign_up
    Created on : 30 Jun, 2014, 8:52:55 PM
    Author     : Arnabi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>
<%@page import="java.sql.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <center>
            <form action="second.do" method="post">
        <div style="height:800px;width:500px;background-color:#eafbfa" >
             <div style="height:200px;width:500px">
             <img src="sign.png.png" height="150px" width="500px"/>
        </div>
            <div style="float:left;height:300px;width: 200px;margin-left: 10px;margin-top: 50px ">
               <ul style="text-decoration:none;line-height:50px">
<li style="list-style: none">NAME</li>
<li style="list-style: none">PASSWORD</li>
<li style="list-style: none">RE_TYPE_PASSWORD</li>
<li style="list-style: none">E_MAIL</li>
<li style="list-style: none">PHONE_NO</li>
</ul>
        </div>

            <div  style="float:right;height:300px;width: 200px;margin-right: 10px;margin-top: 50px ">
                <ul style="text-decoration:none;line-height:50px">
                    <li style="list-style: none"><input type="text" name="name" onclick="return myfun()"  style="font-size:12px;border-radius:3px"/></li>
<li style="list-style: none"><input type="password" name="password" style="font-size:12px;border-radius:3px"/></li>
<li style="list-style: none"><input type="password" name="repassword" style="font-size:12px;border-radius:3px"/></li>
<li style="list-style: none"><input type="text" name="e_mail" style="font-size:12px;border-radius:3px"/></li>
<li style="list-style: none"><input type="text" name="phone_id" style="font-size:12px;border-radius:3px"/></li>
</ul>
            </div>
             <div style="height:200px;width:490px;margin-top:400px">
                 <center><input type="SUBMIT" value="REGISTER" style="font-size:15px;border-radius:5px"></center>
                 <div style="height:150px;width:490px;margin-top:12px">
                <img src="downloa.jpg" height="150px" width="490px"/>
        </div>
        </div>
        </div>
            </form>
        </center>
       
            <%-- <img src="image/download(4).jpg"/>
        <h1>WELCOME TO THE SIGN_UP PAGE</h1>
        <form action="" method="POST">
        
               NAME <input type="text" name="t1" style="font-size:15px;border-radius:5px;padding-left:10px"/>
              <br>
              PASSWORD <input type="password" name="t2" style="font-size:15px;border-radius:5px;padding-left:10px"/>
              <br>
              E_MAIL<input type="text" name="t3" style="font-size:15px;border-radius:5px;padding-left:10px"/>
              <br>
              PHONE_NO<input type="text" name="t4" style="font-size:15px;border-radius:5px;padding-left:10px"/>


              <input type="submit" value="SUBMIT" style="font-size:10px;border-radius:3px"/>
 </form>
         </center>
     
       

            <%-- try{
        String username=request.getParameter("t1");
        //out.print(username);
            String pass=request.getParameter("t2");
            
            String mail=request.getParameter("t3");
            
String no=request.getParameter("t4");--%>
            <%-- <% int i=0;

        Class.forName("com.mysql.jdbc.Driver");

            Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/Holidays","root","password");
         
            Statement s=c.createStatement();
           
             i=s.executeUpdate("insert into sign_up values('"+t1+"','"+t2+"','"+t3+"','"+t4+"')");
             if(i>0)
             {
                out.print("Inserted ");
             }
             else
             {
                out.print("Failed ");
             }
             }
              catch(ClassNotFoundException e)
               {
               }
               catch(SQLException e)
               {

} %>--%>

     
       
        
    </body>
</html>
