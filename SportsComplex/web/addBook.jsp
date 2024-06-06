<%@page import="util.DBConnection"%>
<%@ page import="java.sql.*" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<sql:setDataSource var="myDatasource"
driver="org.apache.derby.jdbc.ClientDriver"
url="jdbc:derby://localhost:1527/sportscomplex" user="app"
password="app"/>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Add Booking</title>
        <!--Google Font-->
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500&display=swap" rel="stylesheet">
        <!--Stylesheet-->
        <link rel="stylesheet" href="style3.css">
        <script>
            function displayMessageAndRedirect() {
                var message = "Booking added successfully.";
                alert(message);
                window.location.href = "<%=request.getContextPath()%>/BookServlet";
            }
        </script>
    </head>
    <body>
        <sql:query var="resultHall" dataSource="${myDatasource}">
            SELECT * FROM APP.HALL
        </sql:query>
            
        <sql:query var="resultGame" dataSource="${myDatasource}">
            SELECT * FROM APP.GAME
        </sql:query>
            
        <sql:query var="resultCourt" dataSource="${myDatasource}">
            SELECT * FROM APP.COURT
        </sql:query>
            
        <div class="container">
            <h1>Add New Booking</h1>
            <form method="post" action="addProcessBook.jsp">
                <div class="row">
                    <div class="column">
                        <label for="teamName">Team Name</label><br>
                        <input class="inputBox" type="text" name="teamName" placeholder="Enter Team Name" required><br>
                    </div>
                    <div class="column">
                        <label for="phoneNo">Phone No (60+) </label><br>
                        <input class="inputBox" type="text" name="phoneNo" placeholder="Enter Phone No" required><br>
                    </div>
                </div>
                <div class="row">
                    <div class="column">
                        <label for="gameName">Game Name</label><br>
                        <select id="gameName" name="gameName" class="inputBox" required>
                            <c:forEach var="row" items="${resultGame.rowsByIndex}">
                                <option value="${row[1]}">${row[1]}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="column">
                        <label for="bookingDate">Book Date</label><br>
                        <input class="inputBox" type="date" name="bookingDate" required><br>
                    </div>
                </div>
                <div class="row">
                    <div class="column">
                        <label for="bookingTime">Book Time</label><br>
                        <input class="inputBox" type="time" name="bookingTime" placeholder="Enter password" required><br><br>
                    </div>
                    <div class="column">
                        <label for="hallName">Hall Name</label><br>
                        <select id="hallName" name="hallName" class="inputBox" required>
                            <c:forEach var="row" items="${resultHall.rowsByIndex}">
                                <option value="${row[1]}">${row[1]}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <div class="row">
                    <div class="column">
                        <label for="courtName">Court Name</label><br>
                        <select id="courtName" name="courtName" class="inputBox" required>
                            <c:forEach var="row" items="${resultCourt.rowsByIndex}">
                                <option value="${row[1]}">${row[1]}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="column"><!--JGN BUANG DIV NI--></div>
                </div>
                
                <button><input class="addButton" type="submit" value="Add"></button>
                <button><a href="BookServlet" class="cancelButton">Cancel</a></button>
            </form>
        </div>   
    </body>
</html>
