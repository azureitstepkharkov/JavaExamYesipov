<%-- 
    Document   : index
    Created on : 01.06.2018, 13:11:11
    Author     : staro
--%>

<%@page import="model.dao.DepartmentDAO"%>
<%@page import="model.pojo.Department"%>
<%@page import="model.pojo.Employee"%>
<%@page import="java.util.List"%>
<%@page import="model.dao.EmployeeDAO"%>
<%@page import="model.util.HibernateUtil"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
        <a href="./deps.jsp" style="text-decoration: none; display: inline-block; padding: 10px 20px; background-color: lightblue; margin-right: 20px;">Departments</a>
        <a href="./employees.jsp" style="text-decoration: none; display: inline-block; padding: 10px 20px; background-color: lightblue; margin-right: 20px;">Employees</a>
        <a href="./empltodeps.jsp" style="text-decoration: none; display: inline-block; padding: 10px 20px; background-color: lightblue; margin-right: 20px;">EmplToDeps</a>
        
    </body>
</html>
