<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 04/28/23
  Time: 11:04 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Them Moi San Pham</title>
</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<body>
<form method="post">
    <label>ID</label>
    <input class="form-control"  type="number" name="id"><br>
    <label>Name</label>
    <input class="form-control"  name="name"><br>
    <label>Price</label>
    <input class="form-control"  type="number" name="price">
    <label>Description</label>
    <input class="form-control" name="description"><br>
    <label>Manufacturer</label>
    <input class="form-control"  name="manufacturer"><br>
    <button class="btn btn-success" type="submit">Create</button>
</form>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>
</html>
