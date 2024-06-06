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
</head>
<body>
    
    <c:set var="hallId" value="${param.hallId}" />
    <c:set var="hallName" value="${param.hallName}" />

    <sql:update dataSource="${myDatasource}" sql="UPDATE HALL SET HALL_NAME = ? WHERE HALL_ID = ?">
        <sql:param value="${param.hallName}" />
        <sql:param value="${param.hallId}" />
    </sql:update>

    <%-- Check if the update was successful by querying the updated row --%>
    <sql:query dataSource="${myDatasource}" var="result">
        SELECT * FROM HALL WHERE HALL_ID = ${param.hallId}
    </sql:query>

    <c:choose>
        <c:when test="${result.rowCount > 0}">
            <script>
                alert("Hall successfully saved");
                window.location.href = "HallServlet";
            </script>
        </c:when>
        <c:otherwise>
            <script>
                alert("Edit unsuccessful! Please fill in all fields.");
                window.history.back();
            </script>
        </c:otherwise>
    </c:choose>
</body>
</html>
