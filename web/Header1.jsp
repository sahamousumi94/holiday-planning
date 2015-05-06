<%-- 
    Document   : Header1
    Created on : Jul 3, 2014, 7:48:17 PM
    Author     : abhay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
         <style type="text/css">
 h1{color:#c11f06;font-size:80px;font-position:center;}
#he{
background: darkcyan;
border:0px solid;
width:100%;
height:220px;
margin-top: -50px;
margin-bottom:20px;
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
        <div id="he" >
            
              <div id="ld">
            <img src="holidayplanner.png" height="75" width="75"/>
            </div>

             <div style="float: right;background-color: aqua;height:100px;width:400px;margin-right:5px;margin-top: 5px">
                 <img src="head1.jpg" height="100px" width="400px"/>
             </div>
              
        <center>
        <h1 class="h1" ><i>Holiday Planner</i></h1>
        <marquee style="color:red; font-size: 20px; margin-top:-30px;">Welcome to holiday planner :) please come and enjoy</marquee>
        </center>
           
            <div style="float:left;margin-left:250px;margin-top:20px;height:35px;width:750px">
               <table class="hovertable">
               <tr>
        	<th><a href="home.do">HOME</a></th>
                <th><a href="myprofile.do">MY PROFILE</a></th>
                <th><a href="ome.do">SPECIAL OFFERS</a></th>
                <th><a href="">CONTACT</a></th>
                <th><a href="">ABOUT US</a></th>
                <th><a href="">FOR ANY QUERY</a></th>
                <th><a href="">NEW</a></th>
                <th><a href="main.do">Sign_Out</a></th>
               </tr>
               </table>
            </div>
        </div>
    </header>
    </body>
</html>
