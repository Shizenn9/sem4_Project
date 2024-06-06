<%@ page import="java.sql.*" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Booking Process</title>
    <!--Google Font-->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500&display=swap" rel="stylesheet">
    <!--Stylesheet-->
    <link rel="stylesheet" href="style2.css">
</head>
<body>
    <sql:setDataSource var="myDatasource"
        driver="org.apache.derby.jdbc.ClientDriver"
        url="jdbc:derby://localhost:1527/sportscomplex"
        user="app"
        password="app"/>

    <sql:update dataSource="${myDatasource}">
        INSERT INTO APP.BOOKING (TEAM_NAME, PHONE_NO, GAME_NAME, BOOKING_DATE, BOOKING_TIME, HALL_NAME, COURT_NAME)
        VALUES (
            '<c:out value="${param.teamName}" />',
            <c:out value="${param.phoneNo}" />,
            '<c:out value="${param.gameName}" />',
            '<c:out value="${param.bookingDate}" />',
            '<c:out value="${param.bookingTime}" />',
            '<c:out value="${param.hallName}" />',
            '<c:out value="${param.courtName}" />'
        )
    </sql:update>

    <script>
        alert("Booking Added Successfully");
        window.location.href = "BookServlet";
    </script>
</body>
</html>
