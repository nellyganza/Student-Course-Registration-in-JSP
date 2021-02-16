<%-- 
    Document   : viewdetails
    Created on : Feb 16, 2021, 4:18:43 PM
    Author     : Nishimwe Elysee
--%>

<%@page import="domain.Course"%>
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
        <form style="border: 1px solid black; width: 600px;margin: auto;">
            <h4>Details of Selected Courses</h4>
            <table border="0">
                <thead>
                    <tr>
                        <th>Code</th>
                        <th>Name</th>
                        <th>Credits</th>
                        <th>Course Fee</th>
                    </tr>
                </thead>
                <tbody>
                    <%for (Course c : s.getCourses()) {
                    %>
                    <tr>
                        <td><%=c.getCode() %></td>
                        <td><%=c.getName()%></td>
                        <td><%=c.getCredits()%></td>
                        <td><%=c.getCourseFee()%></td>
                    </tr>
                    <%}%>
                    <tr>
                        <td>Total</td>
                        <td></td>
                        <td><%=s.numberOfCredits()%></td>
                        <td><%=s.totalPayment()%></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><a href="completeRegistration.jsp">Complete Registration</a></td>
                        <td></td>
                        <td><a href="selectCourse.jsp">Go Back</a></td>
                    </tr>
                </tbody>
            </table>

        </form>
        
        
    </body>
</html>
