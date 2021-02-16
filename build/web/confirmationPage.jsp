<%-- 
    Document   : confirmationPage
    Created on : Feb 16, 2021, 4:37:44 PM
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
        <div  style="border: 1px solid black; width: 400px;margin: auto;">
            <h3>Registration Feedback</h3>
            <p>Dear <%=(s.getGender().toString().equals("FEMALE"))?"Ms. ":"Mr." %> <%=s.getName() %>, Thank you for registering.</p>
            <p>You are requested to pay <%=s.totalPayment() %> </p>
        </div>
        <% session.invalidate(); %>
    </body>
</html>
