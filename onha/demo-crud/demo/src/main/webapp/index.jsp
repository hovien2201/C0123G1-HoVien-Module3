<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Trang chu</title>
</head>
<body>
<h1 style="text-align: center">Customer  Management</h1>
<h2 style="text-align: center">
    <a href="#">Add New Customer</a>
    <a href="#">List All Customer</a>
</h2>
<div align="center">
    <table border="1" cellpadding="5">
        <caption><h2>List Of Customer</h2></caption>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Phone</th>
            <th>Email</th>
            <th>Action</th>
        </tr>
<%--        // hien thi--%>
        <c:forEach var="customer" items="${listCustomer}">
            <tr>
                <td><c:out value="${customer.getId()}"></c:out></td>
                <td><c:out value="${customer.getName()}"></c:out></td>
                <td><c:out value="${customer.getPhone()}"></c:out></td>
                <td><c:out value="${customer.getId()}"></c:out></td>
                <td><c:out value="${customer.getId()}"></c:out></td>
            </tr>
        </c:forEach>
    </table>

</div>
</body>
</html>