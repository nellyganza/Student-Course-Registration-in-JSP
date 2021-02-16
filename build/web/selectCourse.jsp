<%-- 
    Document   : selectCourse
    Created on : Feb 16, 2021, 4:14:49 PM
    Author     : Nishimwe Elysee
--%>

<%@page import="java.util.List"%>
<%@page import="dao.GeneralDao"%>
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
        <div style="display: grid;grid-template-columns:auto auto;width: 1000px;padding: 10px;">
            <div>
                <h1><%=s.getName() %> </h1>
                <h4>Select Courses that you want to lean</h4>
                <table border="1">
                   <tbody>
                        <tr>
                            <td>Code</td>
                            <td>Names</td>
                            <td>Credits</td>
                            <td>Course Fees</td>
                            <td>Actions</td>
                        </tr>
                        <%
                            GeneralDao<Course> cdao = new GeneralDao<Course>(Course.class);
                            List<Course> courses = cdao.findAll();
                            for (Course c : courses) {
                        %>
                        <tr>
                            <td><%=c.getCode() %></td>
                            <td><%=c.getName()%></td>
                            <td><%=c.getCredits()%></td>
                            <td><%=c.getCourseFee()%></td>
                            <td>
                                <%
                                    if(s.isExist(c.getCode())){
                                        %>
                                        <a href="remove.jsp?id=<%=c.getCode() %>">Remove</a>
                                        <%
                                    }else
                                    {
                                         %>
                                        <a href="add.jsp?id=<%=c.getCode() %>">add</a>
                                        <%
                                    }
                                %>
                            </td>
                        </tr>
                        <%} %>
                    </tbody>
                </table>

            </div>
            <div>
                <table border="0">
                    <thead>
                        <tr>
                            <th>Your Current Selection</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Number Of COurses</td>
                            <td><%=s.numberOfCourses() %></td>
                        </tr>
                        <tr>
                            <td>Total credits</td>
                            <td><%=s.numberOfCredits()%></td>
                        </tr>
                        <tr>
                            <td>Total Fee</td>
                            <td><%=s.totalPayment()%></td>
                        </tr>
                        <tr>
                            <td><a href="viewdetails.jsp">View Details</a></td>
                            
                        </tr>
                        <tr>
                            <td><a href="completeRegistration.jsp">Complete Registration</a></td>
                        </tr>
                    </tbody>
                </table>

            </div>
        </div>
    </body>
</html>
