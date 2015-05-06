<%-- 
    Document   : layout
    Created on : Jun 30, 2014, 1:23:18 PM
    Author     : abhay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
         <%@taglib uri="/WEB-INF/struts-tiles.tld" prefix="t" %>
        <style type="text/css">
            #ld4{
                display: block;

              float:left;
              <%--height: 800px;--%>
              width: 400px;
               padding-left: 100px;
            
            
              }

            #rd5{
                 display: block;
                 <%-- height: 800px;--%>
                 width:650px;
               
             
              float:right;
               }​
      
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div style="display:block; border:2px #000;height:100px;width:100%;margin-top:-54px">
            <div style="display:block;width: 100%  ">
                <t:insert attribute="head"></t:insert>
            </div>
            <div style="height: 800px">
                <div id="ld4">
                    <t:insert attribute="leftbody"></t:insert>

            </div>
                <div id="rd5">
                     <t:insert attribute="rightbody"></t:insert>

            </div>
            </div>
           <div style="display:block; border:2px #000;background-color: aqua;width: 100%" >
                 <t:insert attribute="footer"></t:insert> 
            </div>
        </div>
    </body>
</html>
