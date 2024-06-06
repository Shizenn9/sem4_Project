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
    <title>Edit Game</title>
</head>
<body>
    
    <c:set var="gameId" value="${param.gameId}" />
    <c:set var="gameName" value="${param.gameName}" />

    <sql:update dataSource="${myDatasource}" sql="UPDATE GAME SET GAME_NAME = ? WHERE GAME_ID = ?">
        <sql:param value="${param.gameName}" />
        <sql:param value="${param.gameId}" />
    </sql:update>

    <%-- Check if the update was successful by querying the updated row --%>
    <sql:query dataSource="${myDatasource}" var="result">
        SELECT * FROM GAME WHERE GAME_ID = ${param.gameId}
    </sql:query>

    <c:choose>
        <c:when test="${result.rowCount > 0}">
            <script>
                alert("Game successfully saved!");
                window.location.href = "GameServlet";
            </script>
        </c:when>
        <c:otherwise>
            <script>
                alert("Save unsuccessful! Please fill in all fields.");
                window.history.back();
            </script>
        </c:otherwise>
    </c:choose>
</body>
</html>
