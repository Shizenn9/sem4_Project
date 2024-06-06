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
    <title>Edit Hall</title>
    <!--Google Font-->
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500&display=swap" rel="stylesheet">
        <!--Stylesheet-->
        <link rel="stylesheet" href="style3.css">
    </head>
    <body>
    <div class="container">
        <h1>Edit Game</h1>
        <form method="post" action="editProcessGame.jsp">
            <input type="hidden" name="gameId" value="${param.gameId}" required>
            <div class="column">
                <label for="gameName">Game Name</label><br>
                <input class="inputBox" type="text" name="gameName" value="${param.gameName}" required><br><br>
            </div>
            <button><input class="editButton" type="submit" value="Save"></button>
            <button><a href="GameServlet" class="cancelButton">Cancel</a></button>
        </form>
    </div>
</body>
</html>