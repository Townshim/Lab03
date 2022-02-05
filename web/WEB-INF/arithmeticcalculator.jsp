<%-- 
    Document   : arithmeticcalculator
    Created on : Feb 4, 2022, 8:12:08 PM
    Author     : 843319
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Arithmetic Calculator</title>
    </head>
    <body>
        <h1>Arithmetic Calculator</h1>
        
        <form method="post" action="arithmetic">
            First: <input type="text" name="first" value="">
            <br>
            Second: <input type="text" name="second" value="">
            <br>
            <input type="submit" name="operation" value="+">
            <input type="submit" name="operation" value="-">
            <input type="submit" name="operation" value="*">
            <input type="submit" name="operation" value="%">
        </form>
        <h3>Result: ${arithOutput}</h3>
        
        <a href="age">Age Calculator</a>
    </body>
</html>
