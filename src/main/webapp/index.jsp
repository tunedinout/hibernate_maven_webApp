<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hibernate web app</title>
    </head>
    <body>
        <h1>Enter the data to be entered</h1>
        <form action="register.jsp" method="post">
            Name : <input type="text" name="name"/><br/>
            Password : <input type="password" name="password"/><br/>
            Email Id : <input type="text" name="email"><br/>
            <input type="submit" value="Register"/>
        </form>
    </body>
</html>
