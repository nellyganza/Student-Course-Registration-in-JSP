<%-- 
    Document   : completeRegistration
    Created on : Feb 16, 2021, 4:19:54 PM
    Author     : Nishimwe Elysee
--%>

<%@page import="domain.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            Student s = (Student)session.getAttribute("student");
            if(s==null){
                %>
                <h4> Session Terminated, Please goto<a href="student.jsp"> Student Registration Page</a></h4>
                <%
               return;
            }
        %>
        <div>
            <h4>Student Registration Information</h4>
            <table border="0">
                <tbody>
                    <tr>
                        <td>Student Id:</td>
                        <td><label><%=s.getStudentId() %></label></td>
                    </tr>
                    <tr>
                        <td>Name</td>
                        <td><label><%=s.getName()%></label></td>
                    </tr>
                    <tr>
                        <td>Gender</td>
                        <td><label><%=s.getGender()%></label></td>
                    </tr>
                    <tr>
                        <td>Date of Birth</td>
                        <td><label><%=s.getDob()%></label></td>
                    </tr>
                    <tr>
                        <td>Number of Courses</td>
                        <td><label><%=s.numberOfCourses()%></label></td>
                    </tr>
                    <tr>
                        <td>Total Credits</td>
                        <td><label><%=s.numberOfCredits()%></label></td>
                    </tr>
                    <tr>
                        <td>Total School Fees</td>
                        <td><label><%=s.totalPayment()%></label></td>
                    </tr>
                    <tr>
                        <td><a href="register.jsp">Register Now</a></td>
                        <td></td>
                    </tr>
                </tbody>
            </table>

        </div>
    </body>
</html>
