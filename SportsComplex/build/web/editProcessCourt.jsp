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
    <title>Edit Court</title>
</head>
<body>
    
    <c:set var="courtId" value="${param.courtId}" />
    <c:set var="courtName" value="${param.courtName}" />

    <sql:update dataSource="${myDatasource}" sql="UPDATE COURT SET COURT_NAME = ? WHERE COURT_ID = ?">
        <sql:param value="${param.courtName}" />
        <sql:param value="${param.courtId}" />
    </sql:update>

    <%-- Check if the update was successful by querying the updated row --%>
    <sql:query dataSource="${myDatasource}" var="result">
        SELECT * FROM COURT WHERE COURT_ID = ${param.courtId}
    </sql:query>

    <c:choose>
        <c:when test="${result.rowCount > 0}">
            <script>
                alert("Court successfully saved!");
                window.location.href = "CourtServlet";
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
