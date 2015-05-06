<%-- 
    Document   : to
    Created on : Jul 8, 2014, 4:41:29 PM
    Author     : abhay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
           <c:set value="${param['a']}" var="id"/>

         <s:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/holidays" user="root" password="password" var="con" ></s:setDataSource>
        <s:query  dataSource="${con}" sql="select * from end_place where s_id=${id}" var="rs" />
        
        <c:forEach items="${rs.rows}" var="row">
           <option value="${row.end_place}">${row.end_place}</option>
        </c:forEach>

        
    </body>
</html>
