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
            List<Department> departments = DepartmentDAO.layDS(); 
        %>
        
        <table style="width: 300px; text-align: center;">
            <h2>Departments</h2>
            <tr>
                <th>ID</th><th>Department Name</th>
            </tr>
            <% for(Department dep : departments){ %>
                <tr>
                    <td>
                        <%= dep.getId() %>
                    </td>
                    <td>
                         <%= dep.getDepartment_Name() %>
                    </td>
                </tr>
            <p></p>
            <% }; %>
        </table>
    </body>
</html>
