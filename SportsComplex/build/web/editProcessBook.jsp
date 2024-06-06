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
    <title>Edit Booking</title>
</head>
<body>
    
    <c:set var="bookId" value="${param.bookId}" />
    <c:set var="teamName" value="${param.teamName}" />
    <c:set var="phoneNo" value="${param.phoneNo}" />
    <c:set var="gameName" value="${param.gameName}" />
    <c:set var="bookingDate" value="${param.bookingDate}" />
    <c:set var="bookingTime" value="${param.bookingTime}" />
    <c:set var="hallName" value="${param.hallName}" />
    <c:set var="courtName" value="${param.courtName}" />

    <sql:update dataSource="${myDatasource}" sql="UPDATE BOOKING SET TEAM_NAME = ?, PHONE_NO = ?, GAME_NAME = ?, BOOKING_DATE = ?, BOOKING_TIME = ?, HALL_NAME = ? , COURT_NAME = ?  WHERE BOOKING_ID = ?">
        <sql:param value="${param.teamName}" />
        <sql:param value="${param.phoneNo}" />
        <sql:param value="${param.gameName}" />
        <sql:param value="${param.bookingDate}" />
        <sql:param value="${param.bookingTime}" />
        <sql:param value="${param.hallName}" />
        <sql:param value="${param.courtName}" />
        <sql:param value="${param.bookId}" />
    </sql:update>

    <%-- Check if the update was successful by querying the updated row --%>
    <sql:query dataSource="${myDatasource}" var="result">
        SELECT * FROM BOOKING WHERE BOOKING_ID = ${param.bookId}
    </sql:query>

    <c:choose>
        <c:when test="${result.rowCount > 0}">
            <script>
                alert("Booking successfully saved!");
                window.location.href = "BookServlet";
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
