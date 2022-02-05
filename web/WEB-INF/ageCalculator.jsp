<%-- 
    Document   : ageCalculator
    Created on : Feb 4, 2022, 6:50:49 PM
    Author     : 843319
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Age Calculator</title>
    </head>
    <body>
        <h1>Age Calculator</h1>
        
        <form method="post" action="age" >
            <label>Enter your age: </label>
            <input type="text" name="ageInput" value="">
            <br>
            
            
            <input type="submit" name="ageCalcButton" value="Age Next Birthday">
            
            <h3>${ageOutput}</h3>
            
            <a href="arithmetic">Arithmetic Calculator</a>
        </form>
    </body>
</html>
