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
</head>
<body>
    
    <c:set var="repId" value="${param.repId}" />
    <c:set var="phoneNo" value="${param.phoneNo}" />
    <c:set var="email" value="${param.email}" />
    <c:set var="firstName" value="${param.firstName}" />
    <c:set var="lastName" value="${param.lastName}" />
    <c:set var="password" value="${param.password}" />

    <sql:update dataSource="${myDatasource}" sql="UPDATE REPRESENTATIVE SET REP_PHONENO = ?, REP_EMAIL = ?, REP_FIRSTNAME = ?, REP_LASTNAME = ?, REP_PASSWORD = ? WHERE REP_ID = ?">
        <sql:param value="${param.phoneNo}" />
        <sql:param value="${param.email}" />
        <sql:param value="${param.firstName}" />
        <sql:param value="${param.lastName}" />
        <sql:param value="${param.password}" />
        <sql:param value="${param.repId}" />
    </sql:update>

    <%-- Check if the update was successful by querying the updated row --%>
    <sql:query dataSource="${myDatasource}" var="result">
        SELECT * FROM REPRESENTATIVE WHERE REP_ID = ${param.repId}
    </sql:query>

    <c:choose>
        <c:when test="${result.rowCount > 0}">
            <script>
                alert("Representative successfully saved!");
                window.location.href = "RepresentativeServlet";
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
