<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1>Giải phương trình bậc 2
</h1>
<br/>
<form action="/equation" method="post">
    <h3>Nhập hệ số bậc 2, a = :<input name="a" type="number"></h3>

    <h3>Nhập hệ số bậc 1, b = :<input name="b" type="number"></h3>

    <h3>Nhập hằng số tự do, c = :<input name="c" type="number"></h3>

    <button type="submit">submit</button>
</form>
<h1>Ket qua: ${mess}</h1>
</body>
</html>