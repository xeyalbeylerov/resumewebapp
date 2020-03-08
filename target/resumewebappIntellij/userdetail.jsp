<%@ page import="com.company.entity.User" %>
<%@ page import="com.company.resume.UserRequestUtil" %>


<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <title>JSP Page</title>
</head>
<body>
<%


    User u=(User) request.getAttribute("user");
//    User u = null;
//    try {
//        u = UserRequestUtil.processRequest(request, response);
//    } catch (Exception ex) {
//        response.sendRedirect("error.jsp?msg=" + ex.getMessage()+" Test");
//        return;
//    }

%>

<table class="table table-striped container">
    <thead>
    <tr>
        <th scope="col" class="text-center">#</th>
        <th scope="col" class="text-center">Details</th>

    </tr>
    </thead>
    <tbody>
    <tr scope="row">
        <td>Id</td>
        <td><%=u.getId()%>
        </td>
    </tr>
    <tr scope="row">
        <td>Name</td>
        <td><%=u.getName() == null ? "N/A" : u.getName()%>
        </td>
    </tr>

    <tr scope="row">
        <td>Surname</td>
        <td><%=u.getSurname() == null ? "N/A" : u.getSurname()%>
        </td>
    </tr>
    <tr scope="row">
        <td>Address</td>
        <td><%=u.getAddress() == null ? "N/A" : u.getAddress()%>
        </td>
    </tr>
    <tr scope="row">
        <td>Email</td>
        <td><%=u.getEmail() == null ? "N/A" : u.getEmail()%>
        </td>
    </tr>
    <tr scope="row">
        <td>Skills</td>
        <td><%=u.getSkills() == null ? "N/A" : u.getSkills()%>
        </td>
    </tr>
    <tr scope="row">
        <td>Profile Description</td>
        <td><%=u.getProfileDesc() == null ? "N/A" : u.getProfileDesc()%>
        </td>
    </tr>
    <tr scope="row">
        <td>Birthdate</td>
        <td><%=u.getBirthDate() == null ? "N/A" : u.getBirthDate()%>
        </td>
    </tr>
    <tr scope="row">
        <td>Birthplace</td>
        <td><%=u.getBirthPlace() == null ? "N/A" : u.getBirthPlace()%>
        </td>
    </tr>
    <tr scope="row">
        <td>Phone</td>
        <td><%=u.getPhone() == null ? "N/A" : u.getPhone()%>
        </td>
    </tr>
    <%

        //        } else {
//            out.print("Bele user yoxdur");
//        }
    %>
    </tbody>
</table>
</div>
</div>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
        integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
        integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
        crossorigin="anonymous"></script>
</body>
</html>
