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
        <% 
            List<Employee> employees = EmployeeDAO.layDS(); 
        %>
        
        <table style="width: 300px; text-align: center; float: left; margin-right: 20px;">
            <h2>Employees</h2>
            <tr>
                <th>ID</th><th>Employee Name</th><th>IdCode</th>
            </tr>
            <% for(Employee empl : employees){ %>
                <tr>
                    <td>
                        <%= empl.getId()%>
                    </td>
                    <td>
                         <%= empl.getEmployees_Name() %>
                    </td>
                    <td>
                         <%= empl.getIdCode() %>
                    </td>
                </tr>
            <p></p>
            <% }; %>
        </table>
    </body>
</html>
