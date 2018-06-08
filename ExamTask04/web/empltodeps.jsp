<%-- 
    Document   : index
    Created on : 01.06.2018, 13:11:11
    Author     : staro
--%>

<%@page import="model.dao.EmpToDepsDAO"%>
<%@page import="model.pojo.EmpToDeps"%>
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
            List<EmpToDeps> emptodeps = EmpToDepsDAO.layDS(); 
        %>
        
        <table style="width: 300px; text-align: center;">
            <h2>Employee to Department</h2>
            <tr>
                <th>ID</th><th>EmployeeId</th><th>DepartmentId</th><th></th>
            </tr>
            <% for(EmpToDeps dep : emptodeps){ %>
                <tr>
                <form action="employee" method="post">
                    <td>
                        <input type="text" disabled="disabled" value="<%= dep.getId() %>">
                        <input type="text" name="id" hidden value="<%= dep.getId() %>">
                    </td>
                    <td>
                         <input type="text" name="emp_id" value="<%= dep.getEmpId() %>">
                    </td>
                    <td>
                         <input type="text" name="dep_id" value="<%= dep.getDepId() %>">
                    </td>
                    <td>
                         <input type="submit" value="Save">
                    </td>
                    </form>
                </tr>
            <% }; %>
            <form action="employee" method="post">
                <td>
                    <input type="text" disabled="disabled" value="add new">
                    <input type="text" name="id" hidden value="">
                </td>
                <td>
                     <input type="number" name="emp_id" value="">
                </td>
                <td>
                     <input type="number" name="dep_id" value="">
                </td>
                <td>
                     <input type="submit" value="Save">
                </td>
            </form>
        </table>
    </body>
</html>
