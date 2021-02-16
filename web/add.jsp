
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
    String id = request.getParameter("id");
    GeneralDao<Course> cdao = new GeneralDao<Course>(Course.class);
    Course c = cdao.findById(id);
    s.registerCourse(c);
%>
<jsp:forward page="selectCourse.jsp" />