

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
        <button><a href ="create-product">Create New<a/></button><br/><br/>
            <table border="1">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Category</th>
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
                        <td>${product.category_name}</td>
                        <td>${product.quantity}</td>
                        <td>${product.price}</td>
                        <td>${product.description}</td>
                        <td><img src="${product.imagine}" style="height: 100px; width: 100px"></td>
                        <td><img src="${product.imagine2}" style="height: 100px; width: 100px"></td>
                        <td><img src="${product.imagine3}" style="height: 100px; width: 100px"></td>
                        <td>${product.created_date}</td>
                        <td><button><a href ="update-product?id=${product.id}">Update<a/></button><br/><br/><button><a href ="delete-product?id=${product.id}">Delete<a/></button> </tr></td>           
                    </tr>      
                    </c:forEach>
                </tbody>
            </table>

    </body>
</html>
