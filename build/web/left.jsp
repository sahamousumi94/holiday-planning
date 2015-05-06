<%-- 
    Document   : left
    Created on : Jul 1, 2014, 10:09:44 AM
    Author     : abhay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <script type="text/javascript">
            function check(){
               var v= document.getElementById("un").value;
               //  var v1= document.getElementById("ps").value;
                if(v==" ")
                {

                    document.getElementById("pu").innerHTML="Please Enter Your Username";
                    return false;

                }
                return true;
            }
        </script>
        <style type="text/css">

             #ld1{
                display: block;
              float:left;
              <%--height: 800px;--%>
             
            

              }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <div id="ld1">
             <div style="height:300px;width:300px;border:2px;float:left">
               <div style="height:140px;width:140px;border:2px;border-radius:5px; float:left">
               <a href=""><img src="i1.jpg" height="140px" width="140px" alt="facebook"></a>
             </div>
                  <div style="height:140px;width:140px;border:2px;border-radius:5px;margin-left:200px;margin-top:-140px;float:left">
               <a href=""><img src="i2.jpg" height="140px" width="140px" alt="facebook"></a>
             </div>
                
             </div>
             <center>
             <form action="first.do" method="POST">
                 
                 USERNAME <input type="text" name="t1" id="un"  style="border-radius:3px;font-size:16px"/>
                <p id="pu"></p>
                PASSWORD <input type="text" name="t2" id="ps"  style="border-radius:3px;font-size:16px"/>
                 <p id="pa"></p>
                <input type="submit" value="LOGIN" onclick="return check()" style="border-radius:2px"/>
             </form>
             </center>
            </div>
    </body>
</html>
