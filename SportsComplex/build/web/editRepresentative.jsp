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
            <h1>Edit Representative</h1>
            <form method="post" action="editProcessRepresentative.jsp">
                <div class="row">
                    <input class="inputBox" type="hidden" name="repId" value="${param.repId}" required>
                    <div class="column">
                        <label for="firstName">First Name</label><br>
                        <input class="inputBox" type="text" name="firstName" value="${param.firstName}" required><br>
                    </div>
                    <div class="column">
                        <label for="lastName">Last Name</label><br>
                        <input class="inputBox" type="text" name="lastName" value="${param.lastName}" required><br>
                    </div>
                </div>
                <div class="row">
                    <div class="column">
                        <label for="phoneNo">Phone Number</label><br>
                        <input class="inputBox" type="text" name="phoneNo" value="${param.phoneNo}" required><br>
                    </div>
                    <div class="column">
                        <label for="email">Email</label><br>
                        <input class="inputBox" type="email" name="email" value="${param.email}" required><br>                
                    </div>
                </div>
                <div class="row">
                    <div class="column">
                        <label for="password">Password</label><br>
                        <input class="inputBox" type="text" name="password" value="${param.password}" required><br><br>
                    </div>
                    <div class="column"><!--JANGAN BUANG DIV NI --></div>
                </div>
                    <button><input class="editButton" type="submit" value="Save"></button>
                    <button><a href="RepresentativeServlet" class="cancelButton">Cancel</a></button>
            </form>
        </div>   
    </body>
</html>