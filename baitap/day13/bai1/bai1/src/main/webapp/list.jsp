<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 04/27/23
  Time: 10:31 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Danh sách khách hàng</title>
    <style>
        img{
            width: 100px;
            height: 100px;
        }
        table, td, th {
            border: 1px solid;
        }

        table {
            border-collapse: collapse;
        }
        div {
           margin-left: 40%;
        }
        h1 {
            margin-left: 30px;
        }
        td{
            text-align: center;
        }
    </style>
</head>
<body>
<div>
<h1>Danh sach khach hang</h1>
<table >
    <tr>
        <th>STT</th>
        <th>Tên</th>
        <th>Ngày sinh</th>
        <th>Địa chỉ</th>
        <th>Ảnh</th>
    </tr>
    <c:forEach var="customerList" items="${customerList}" varStatus="status">
        <tr>
            <td>${status.count}</td>
            <td>${customerList.name}</td>
            <td>${customerList.dayBirth}</td>
            <td>${customerList.address}</td>
            <td><img src="${customerList.img}"></td>
        </tr>
    </c:forEach>
</table>
</div>
</body>
</html>
