<%-- 
    Document   : student
    Created on : Feb 16, 2021, 4:07:13 PM
    Author     : Nishimwe Elysee
--%>

<%@page import="domain.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Registration page</title>
    </head>
    <body>
        <form action="addStudent.jsp" method="POST" style="border: 1px solid black;width: 500px;margin: auto;">
            <table border="0">
                <thead>
                    <tr>
                        <th>Student Information Form</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Student Id :</td>
                        <td><input type="text" name="id"></td>
                    </tr>
                    <tr>
                        <td>Name</td>
                        <td><input type="text" name="name"></td>
                    </tr>
                    <tr>
                        <td>Gender</td>
                        <td>
                            <select name="gender">
                                <option>MALE</option>
                                <option>FEMALE</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>Date of Birth</td>
                        <td><input type="date" name="dob"></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><button type="submit">Next</button></td>
                    </tr>
                </tbody>
            </table>

        </form>
    </body>
</html>
