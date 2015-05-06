<%-- 
    Document   : Header
    Created on : Jun 30, 2014, 12:48:57 PM
    Author     : abhay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <style type="text/css">
 h1{color:#24c1c1;font-size:80px;font-position:center;}
#he{
background: darkcyan;
border:0px solid;
width:100%;
height:220px;
margin-top: -50px;
margin-bottom:20px;
}

            #rd{

display: block;
height: 40px;
width: 158px;
margin-top: 33px;
margin-right: 7px;
float: right;

               }
                #rd2{

display: block;
height: 40px;
width: 158px;
margin-top: 33px;
margin-right: 7px;
float: right;

               }
         #ld{
               display: block;
float: left;
height: 100px;
width: 100px;
margin-left: 18px;
margin-top: 17px;
            }
              table.hovertable {
	font-family: verdana,arial,sans-serif;
	font-size:11px;
	border-collapse: collapse;
        margin-top: -10px
}
table.hovertable th {
padding: 10px;
}

        </style>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

    <header>
        <div id="he">
            <div id="rd" >
                <a href=""><img src="login.png" height="40" width="40" alt="login"></a>
               <a href="">LOGIN</a>
            </div>
            <div id="rd2" >
                 <a href="sign.do"><img src="signup.png" height="40" width="40" alt="signup"></a>
                  <a href="sign.do">SIGNUP</a>
            </div>
              <div id="ld">
            <img src="holidayplanner.png" height="75" width="75"/>
            </div>
        <center>
        <h1 class="h1"><i>Holiday Planner</i></h1>
        <marquee style="color:red; font-size: 20px;margin-top:-30px">Welcome to holiday planner :) please come and enjoy</marquee>
        </center>
            <div style="float:left;margin-left:250px;margin-top:20px;height:35px;width:750px">
               <table class="hovertable">
               <tr>
        	
                <th><a href="">HOLIDAY PACKAGES</a></th>
                <th><a href="">SPECIAL OFFERS</a></th>
                <th><a href="">CONTACT</a></th>
                <th><a href="">ABOUT US</a></th>
                <th><a href="">FOR ANY QUERY</a></th>
                <th><a href="">NEW</a></th>
                <th><a href="">ADMIN</a></th>
               </tr>
               </table>
            </div>
        </div>
    </header>
    </body>
</html>
