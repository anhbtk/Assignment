<%-- 
    Document   : listProduct
    Created on : Mar 13, 2022, 3:35:56 AM
    Author     : USER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h3>List Product</h3>
        <a>Create New<a/>
            <table border="1">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Category_id</th>
                        <th>Quantity</th>
                        <th>Price</th>
                        <th>Description</th>
                        <th>Imagine</th>
                        <th>Imagine2</th>
                        <th>Imagine3</th>
                        <th>Created_date</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${listProduct}" var="product">
                    <tr>
                        <td>${product.id}</td>
                        <td>${product.name}</td>
                        <td>${product.category_id}</td>
                        <td>${product.quantity}</td>
                        <td>${product.price}</td>
                        <td>${product.description}</td>
                        <td>${product.imagine}</td>
                        <td>${product.imagine2}</td>
                        <td>${product.imagine3}</td>
                    </tr>      
                    </c:forEach>
                </tbody>
            </table>

    </body>
</html>
