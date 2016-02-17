<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>${page_name}</title>
    <link rel="stylesheet" type="text/css" href="css/style.css"/>
    <link rel="stylesheet" type="text/css" href="css/style_viewproducts.css"/>
</head>
<body>
    <div id="div_container">
        <h1>${page_name}</h1>
        <div id="buttons_container">
            <button id="button_logout">Выход</button>
            <button id="button_menu">Меню</button>
        </div>
        <table id="cart_table">
            <thead>
            <tr>
                <th>ID</th>
                <th>name</th>
                <th>description</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${viewproducts}" var="product">
                <tr>
                    <td><c:out value="${product.ID}" /></td>
                    <td><c:out value="${product.pname}" /></td>
                    <td><c:out value="${product.product}" /></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>