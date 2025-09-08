<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<body>
    <p><strong>Full Name: <%= request.getParameter("fullName") %></p>
    <p><strong>Password:</strong> <%= request.getParameter("password") %></p>
    <p><strong>Age:</strong> <%= request.getParameter("age") %></p>
    <p><strong>Address1:</strong> <%= request.getParameter("address1") %></p>
    <p><strong>Address2:</strong> <%= request.getParameter("address2") %></p>
</body>
</html>
