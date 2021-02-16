
<%@page import="domain.Course"%>
<%@page import="dao.GeneralDao"%>
<%@page import="domain.Student"%>
<%
    Student s = (Student)session.getAttribute("student");
    if(s==null){
        %>
        <h4> Session Terminated, Please goto<a href="student.jsp"> Student Registration Page</a></h4>
        <%
        return;
    }
    GeneralDao<Student> cdao = new GeneralDao<Student>(Student.class);
    cdao.save(s);
    
%>
<jsp:forward page="confirmationPage.jsp" />