<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<sql:setDataSource var="myDatasource"
    driver="org.apache.derby.jdbc.ClientDriver"
    url="jdbc:derby://localhost:1527/sportscomplex" user="app"
    password="app"/>
<!DOCTYPE html>
<html>
    <head>
        <title>Edit Representative</title>
        <!--Google Font-->
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500&display=swap" rel="stylesheet">
        <!--Stylesheet-->
        <link rel="stylesheet" href="style3.css">
    </head>
    <body>
        <div class="container">
            <h1>Edit Staff</h1>
            <form method="post" action="editProcessStaff.jsp">
                <div class="row">
                    <input class="inputBox" type="hidden" name="staffId" value="${param.staffId}" required>
                    <div class="column">
                        <label for="name">Name</label><br>
                        <input class="inputBox" type="text" name="name" value="${param.name}" required><br>
                    </div>
                    <div class="column">
                        <label for="address">Address</label><br>
                        <input class="inputBox" type="text" name="address" value="${param.address}" required><br>
                    </div>
                </div>
                <div class="row">
                    <div class="column">
                        <label for="position">Position</label><br>
                        <select id="position" name="position" class="inputBox" required>
                            <option value="Manager" <c:if test="${param.position == 'Manager'}">selected</c:if>>Manager</option>
                            <option value="Full Time" <c:if test="${param.position == 'Full Time'}">selected</c:if>>Full Time</option>
                            <option value="Part Time" <c:if test="${param.position == 'Part Time'}">selected</c:if>>Part Time</option>
                        </select>
                    </div>
                    <div class="column">
                        <label for="phoneNo">Phone Number (+60)</label><br>
                        <input class="inputBox" type="text" name="phoneNo" value="${param.phoneNo}" required><br>                
                    </div>
                </div>
                <div class="row">
                    <div class="column">
                        <label for="email">Email</label><br>
                        <input class="inputBox" type="text" name="email" value="${param.email}" required><br><br>
                    </div>
                    <div class="column">
                        <label for="password">Password</label><br>
                        <input class="inputBox" type="text" name="password" value="${param.password}" required><br><br>
                    </div>
                </div>
                    <button><input class="editButton" type="submit" value="Save"></button>
                    <button><a href="StaffServlet" class="cancelButton">Cancel</a></button>
            </form>
        </div>   
    </body>
</html>