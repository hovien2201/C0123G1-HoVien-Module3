<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Calculator</title>
    <style>
        .container {
            width: 450px;
            margin: 0 30vw;
            padding: 0 5vw 10vw;
            align-content: center;
        }

        form {
            text-align: left;
            float: left;
        }

        label {
            float: left;
            width: 150px;
        }

        button, select, input {
            margin-top: 2px;
            float: left;
        }

        button {
            margin-left: 200px;
        }

        legend {
            text-align: left;
        }
    </style>
</head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<body>
<div class="container">
<h1>Simple Calculator</h1>
<form action="/calculator" method="post">
    <fieldset>
        <legend>Calculator</legend>
        <br>
        <label>Fist operand:</label>
        <input type="text" name="fist operand">
        <br>
        <label>Operator:</label>
        <select name="calculation">
            <option value="addition">addition</option>
            <option value="Subtraction">Subtraction</option>
            <option value="multiplication">multiplication</option>
            <option value="division">division</option>
        </select>
        <br>
        <label>Second operand:</label>
        <input type="text" name="Second operand">
        <br>
        <button type="submit" value="calculate">Calculate</button>
    </fieldset>
</form>
</div>
</body>
</html>