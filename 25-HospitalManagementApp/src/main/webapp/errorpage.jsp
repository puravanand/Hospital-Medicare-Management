<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Something went wrong</title>
</head>
<body>
    <h2>Oops! Something went wrong.</h2>
    <p>Error Details:</p>
    <ul>
        <li><strong>Error Code:</strong> <%= request.getAttribute("javax.servlet.error.status_code") %></li>
        <li><strong>Error Message:</strong> <%= request.getAttribute("javax.servlet.error.message") %></li>
        <li><strong>Exception Type:</strong> <%= request.getAttribute("javax.servlet.error.exception_type") %></li>
        <li><strong>Exception:</strong> <%= request.getAttribute("javax.servlet.error.exception") %></li>
    </ul>

    <p>Please try again or contact support if the problem persists.</p>
</body>
</html>
