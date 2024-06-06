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
    <title>Edit Staff</title>
</head>
<body>
    
    <c:set var="staffId" value="${param.staffId}" />
    <c:set var="name" value="${param.name}" />
    <c:set var="address" value="${param.address}" />
    <c:set var="position" value="${param.position}" />
    <c:set var="phoneNo" value="${param.phoneNo}" />
    <c:set var="email" value="${param.email}" />
    <c:set var="password" value="${param.password}" />
    
    <sql:update dataSource="${myDatasource}" sql="UPDATE STAFF SET STAFF_NAME = ?, STAFF_ADDRESS = ?, STAFF_POSITION = ?, STAFF_PHONENO = ?, STAFF_EMAIL = ?, STAFF_PASSWORD = ?  WHERE STAFF_ID = ?">
        <sql:param value="${param.name}" />
        <sql:param value="${param.address}" />
        <sql:param value="${param.position}" />
        <sql:param value="${param.phoneNo}" />
        <sql:param value="${param.email}" />
        <sql:param value="${param.password}" />
        <sql:param value="${param.staffId}" />
    </sql:update>

    <%-- Check if the update was successful by querying the updated row --%>
    <sql:query dataSource="${myDatasource}" var="result">
        SELECT * FROM STAFF WHERE STAFF_ID = ${param.staffId}
    </sql:query>

    <c:choose>
        <c:when test="${result.rowCount > 0}">
            <script>
                alert("Representative successfully saved!");
                window.location.href = "StaffServlet";
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
