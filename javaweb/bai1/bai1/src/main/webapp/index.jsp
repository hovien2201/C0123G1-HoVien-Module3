<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Product Discount Calculator</title>
    <style>
        .content{
            width: 500px;
            margin: 0px;
            border: solid black 2px;
        }
        label{
            width: 10em;
            padding-right: 1em;
            float: left;
        }
        label,input {
            margin-top: 10px;
        }
    </style>
</head>
<body>
<div>
    <h1> Product Discount Calculator</h1>
    <form action="/servletproduct" method="post">
        <div class="content">
            <label>Product Description</label>
            <input type="text" name="Description" placeholder="Mô tả của sản phẩm">
            <br>
            <label>List Price</label>
            <input type="text" name="Price" placeholder=" Giá niêm yết của sản phẩm">
            <br>
            <label>Discount Percent</label>
            <input type="text" name="Discount Percent" placeholder="Tỷ lệ chiết khấu (phần trăm)">
        </div>
        <div>
            <br>
            <input type="submit" value="Discount Product">
        </div>
    </form>
</div>
</body>
</html>