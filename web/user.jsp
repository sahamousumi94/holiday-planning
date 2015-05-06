<%-- 
    Document   : user
    Created on : Jul 1, 2014, 9:40:35 PM
    Author     : abhay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <script type="text/javascript">
            function mycon(v){
                xhro=new XMLHttpRequest();
                xhro.onreadystatechange=myfun;
                xhro.open("GET","to.jsp?a="+v+" ",true);
                xhro.send();
            }
            function myfun(){
                  if(xhro.readyState==4)
                  {
                      alert(xhro.responseText);
                      document.getElementById("countries").innerHTML=xhro.responseText;
                  }


            }

        <%-- function myst(v){
                xhro=new XMLHttpRequest();
                xhro.onreadystatechange=myfun1;
                xhro.open("GET","states.jsp?a="+v+" ",true);
                xhro.send();
            }
            function myfun1(){
                  if(xhro.readyState==4)
                  {
                      alert(xhro.responseText);
                      document.getElementById("states").innerHTML=xhro.responseText;
                  }


            }--%>


        </script>
              <style type="text/css">
            #he1{
border:0px solid;
background: darkcyan;
margin-top: 10px;

}
      #hd4{
                 display: block;
                 height: 40px;
                 width: 158px;

               margin-top: 100px;
              margin-right:-130px;

              float:right;
               }
               #hd1{
                 display: block;
                 height: 40px;
                 width: 200px;


              margin-right: 0px;

              float:right;
               }
                #hd2{
                display: block;
              float:left;
              height:100px;
              width: 100px;
              margin-left:-90px;
            margin-top: 50px;


              }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
    </head>
    <body>
        <form action="third.do" method="post">
       <div style="display:block; border:2px #000;width:100%;margin-top:-54px;background-color:#F7F8FA">
            <div style="display:block;width: 100% ;height: 220px">
                <div style=""></div>
                <img src="Historic.gif" height="200px" width="100%" alt="login">
               
                    <table style="float: left;height: 15px;width: 500px;margin-left:15px;margin-bottom:5px">
                <tr>
                    <td><a href="">Services</a> </td>
                    <td><a href="">Enquiries </a></td>
                    <td><a href="">My Transition </a></td>
                    <td><a href="">My Profile </a></td>
                </tr>
                    </table>
                 <table style="float:right;height: 15px;width: 400px;margin-right:50px;margin-bottom: 5px">
                <tr>
                    <td><a href="">Home</a> </td>
                    <td><a href="main.do">Sign-Out </a></td>
                    <td><a href="">Contact-Us</a> </td>

                </tr>
                    </table>
               
            </div>
            <div style="height:500px;width:100%;margin-top:5px">
                
                <div style="float: left; height:480px;width:380px;margin-left:10px;margin-top:5px;margin-bottom: 5px">
                     <div style="float: left; height:300px;width:185px;margin-left:2px;margin-top:2px">
                 <ul style="font-size:12px;line-height:50px">
                 <li style="list-style: none">FROM</li>
                  <li style="list-style: none">TO</li>
                 <li style="list-style: none">DATE_OF_JOURNEY</li>
                  <li style="list-style: none">NO_OF_PERSONS</li>
                 <li style="list-style: none">NO_OF_DAYS</li>
                 <li style="list-style: none">TICKET_TYPE</li>
                 </ul>

            </div>
                       <div style="float:right; height:300px;width:185px;margin-left:2px;margin-top:2px">
                     <ul style="font-size:14px;line-height:50px">
                 <li style="list-style: none"> <select name="from" onchange="mycon(this.value)" id="ct" style="font-size:15px;border-radius:3px;width:140px">
        <s:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/holidays" user="root" password="password" var="M"></s:setDataSource>
        <s:query dataSource="${M}" sql="select * from package_info" var="rs"/>
        <option>place</option>
         <c:forEach items="${rs.rows}" var="row">
              <option value="${row.p_id}">${row.start_place}</option>
                  <br>
        </c:forEach>
         </select> </li>
         <li style="list-style: none"> <select name="to"  onchange="myst(this.value)" id="countries" style="font-size:15px;border-radius:3px;width:140px">
                  <option>place</option>
        </select> </li>
                
        <li style="list-style: none"><input type="text" name="date" style="font-size:15px;border-radius:3px;width:135px"></li>
           <li style="list-style: none"><input type="text" name="persons" style="font-size:15px;border-radius:3px;width:135px"></li>
                 <li style="list-style: none"> <select name="days"  onchange="myst(this.value)" id="countries" style="font-size:15px;border-radius:3px;width:140px">
                        <option>days</option>
                        <option value="one">1</option>
                        <option value="two">2</option>
                        <option value="three">3</option>
                        <option value="four">4</option>
                        <option value="five">5</option>
                        <option value="six">6</option>
                        <option value="seven">7</option>
        </select> </li>
        <li style="list-style: none"> <select name="tkt_type" style="font-size:15px;border-radius:3px;width:140px">
           <option value="e_itcket">e_ticket</option>
           <option value="m_ticket">m_ticket</option>
         </select></li>
                 </ul>

            </div>
               <div style="float: left; height:25px;width:100px;margin-left:140px;margin-right: 10px;margin-top:20px">
                  <input type="submit" value="SUBMIT" style="border-radius:4px;font-size: 17px"/>

            </div>
        <%--   <div style="float:right; height:25px;width:100px;margin-right:10x;margin-left:10px;margin-top:20px">

                       <input type="submit" value="RESET" style="border-radius:4px;font-size: 17px"/>
            </div>--%>
                </div>
              
        
                   <div style="float: left; height:480px;width:90px;margin-left:5px;margin-right:5px;margin-top:5px;margin-bottom: 5px">
                      <marquee onMouseOver="this.scrollAmount=0" onMouseOut="this.scrollAmount=2" scrollamount="2" direction="up" loop="true" width="100%" height="100%">
                    <center>
                        <p style="color:red"> If for any reason, the reservation output details are not displayed on your screen after you have made payments,please check the details in "My Transactions --> Booked Ticket History" . You may also check your mail for the details of your booking.</p>
                   </center>
                   </marquee>

            </div>
                <div style="float:right; height:480px;width:700px;margin-right:50px;margin-top:5px;margin-bottom: 5px">
                         <table style="margin:20px; height: 399px;width: 650px">
                <tr>
                   <td > <a href="" style="font-size:30px;font-weight:100;color:blue;text-decoration: none">Cancel Ticket</a></td>
                 <td ><a href="" style="font-size:30px;font-weight:100;color:blue;text-decoration: none">Booked Ticket History(New)</a></td>

                </tr>
                <tr>
                    <td><a href="" style="font-size:30px;font-weight:100;color:blue;text-decoration: none">Refund</a></td>
                     <td><a href="" style="font-size:30px;font-weight:100;color:blue;text-decoration: none">Booked Ticket History(Old)</a></td>

                   </tr>
                  <tr>
                 <td><a href="" style="font-size:30px;font-weight:100;color:blue;text-decoration: none">Tdr</a></td>
                 <td><a href="" style="font-size:30px;font-weight:100;color:blue;text-decoration: none">Print Ticket</a></td>

                    </tr>
                    </table>

            </div>
        </div>
           <div id="he1" >
               <center>
        <marquee style="color:red; font-size: 20px">Welcome to holiday planner :)  please come and enjoy</marquee>
        </center>
         <div id="hd1">
             <p style="text-decoration: underline;color: cornsilk">Find  Us  On :</p>
            </div>
         <div id="hd4" >
                 <a href=""><img src="face1.png" height="40" width="50" alt="facebook"></a>
                 <a href=""><img src="twitter.png" height="40" width="50" alt="twitter"></a>
                 <a href=""><img src="link.png" height="40" width="50" alt="linkedin"></a>
            </div>
        <div style="float:left;margin-left:50px">
    <p style="text-decoration: underline;color: cornsilk">Contact Us :</p>
            </div>
          <div id="hd2">
              <a href=""><img src="contactus1.png" height="100" width="100" alt="contact"></a>
            </div>
        <center>
             <div style="margin-top: 0px">
            <p style="text-decoration: underline;color: cornsilk">For Any Query :</p>
        </div>

            <div style="height:55px;width:250px">

                 <p style="color: cornsilk">+91 7763060154</p>
                  <p style="color: cornsilk">+91 8647845309</p>
        </div>

            <div style="height:55px;width:250px">

             <p style="color: cornsilk">abhayanand1909@gmail.com</p>
             <p style="color: cornsilk">prince12668@gmail.com</p>
        </div>

        </center>
        <div style="float:left; margin-left:450px;height:55px;width:55px;margin-top:-120px">
        <img src="cont.png" height="54" width="54" alt="contact">
        </div>
         <div style="float:left;margin-left:450px;height:55px;width:55px;margin-top:-50px">
         <img src="mail.png" height="54" width="54" alt="mail">
        </div>
        </div>
       </div>
        </form>
    </body>
</html>
