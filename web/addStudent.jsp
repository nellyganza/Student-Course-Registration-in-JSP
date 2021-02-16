<%@page import="java.time.LocalDate"%>
<%@page import="domain.Gender"%>
<%@page import="domain.Student"%>
<% 
    String id = request.getParameter("id");
    String name = request.getParameter("name");
    String gender = request.getParameter("gender");
    String dob = request.getParameter("dob");
    Student s = (Student)session.getAttribute("student");
    if(s==null){
        s = new Student(id, name, Gender.FEMALE.toString().equals(gender)?Gender.FEMALE:Gender.MALE, LocalDate.parse(dob));
        session.setAttribute("student", s);
    }
    
%>
<jsp:forward page="selectCourse.jsp"/>