<%-- 
    Document   : usr_pass
    Created on : Jul 3, 2014, 10:21:51 AM
    Author     : Sunny
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <center><body>
            <h3> UPDATE YOUR PAGE</h3>
        <form action="update_prof.jsp" method="post">
        ORIGINAL USERNAME<input type="text" name="t1"><br>
        ORIGINAL PASSWORD<input type="password" name="t2"><br>
        NEW_EMAIL<input type="text" name="t3"><br>
        NEW_PASSWORD<input type="password" name="t4"><br>
        NEW_NAME<input type="text" name="t5"><br>
        <input type="submit" value="SUBMIT">
            </form>
        </body></center>
</html>
