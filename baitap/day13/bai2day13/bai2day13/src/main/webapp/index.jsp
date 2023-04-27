<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Calculator</title>
    <style>
        fieldset {
            width: 30%;
        }
    </style>
</head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<body>
<h1>Simple Calculator</h1>
<form action="/calculator" method="post">
    <fieldset>
        Calculator
        <br>
        Fist operand: <input type="text" name="fist operand">
        <br>
        Operator:
        <select name="calculation">
            <option value="addition">addition</option>
            <option value="Subtraction">Subtraction</option>
            <option value="multiplication">multiplication</option>
            <option value="division">division</option>
        </select>
        <br>
        Second operand: <input type="text" name="Second operand">
        <br>
        <button type="submit" value="calculate">Calculate</button>
    </fieldset>
</form>

</body>
</html>