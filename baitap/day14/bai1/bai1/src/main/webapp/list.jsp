<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 04/28/23
  Time: 10:32 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<body>
<h1>Danh sách san pham</h1>
<table class="table table-striped">
    <thead>
    <tr>
        <th>#</th>
        <th>ID</th>
        <th>Name</th>
        <th>Price</th>
        <th>Description</th>
        <th>Manufacturer</th>
        <th>Operation</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="productList" items="${productList}" varStatus="status">
        <tr>
            <td>${status.count}</td>
            <td>${productList.getId()}</td>
            <td>${productList.getName()}</td>
            <td>${productList.getPrice()}</td>
            <td>${productList.getDescription()}</td>
            <td>${productList.getManufacturer()}</td>
            <th>
                <button class="btn btn-primary"
                        onclick="window.location.href='/product?action=edit&idEdit=${productList.id}'">Sửa
                </button>
                <button type="button" class="btn btn-danger" data-bs-toggle="modal"
                        data-bs-target="#deleteModal${productList.id}">
                    Xóa
                </button>
            </th>
        </tr>
        <div class="modal fade" id="deleteModal${productList.id}" tabindex="-1" aria-labelledby="exampleModalLabel"
             aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Xóa san pham</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        Bạn có muốn xóa san pham có tên là ${productList.name}
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary"
                                onclick="window.location.href='/product?action=delete&idDelete=${productList.id}'">Save
                            changes
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </c:forEach>
    </tbody>
</table>
<button class="btn btn-primary" onclick="window.location.href='/product?action=create'">Thêm mới</button>
<form method="get" action="seach">
    <label>Nhập tên sản phẩm muốn tìm kiếm</label>
    <input type="text" name="nameSeach">
    <button type="submit"> Tìm kiếm</button>
</form>
<table class="table table-striped">
    <thead>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Price</th>
        <th>Description</th>
        <th>Manufacturer</th>
        <th>Operation</th>
    </tr>
    </thead>
    <tbody>

        <tr>
            <td>${product.getId()}</td>
            <td>${productList.getName()}</td>
            <td>${productList.getPrice()}</td>
            <td>${productList.getDescription()}</td>
            <td>${productList.getManufacturer()}</td>
        </tr>
    </tbody>
</table>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>
</html>
