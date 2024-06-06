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
        <!--Google Font-->
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500&display=swap" rel="stylesheet">
        <!--Stylesheet-->
        <link rel="stylesheet" href="style3.css">
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
            <h1>Edit Booking</h1>
            <form method="post" action="editProcessBook.jsp">
                <div class="row">
                    <input class="inputBox" type="hidden" name="bookId" value="${param.bookId}" required>
                    <div class="column">
                        <label for="teamName">Team Name</label><br>
                        <input class="inputBox" type="text" name="teamName" value="${param.teamName}" required><br>
                    </div>
                    <div class="column">
                        <label for="phoneNo">Phone No (60+)</label><br>
                        <input class="inputBox" type="text" name="phoneNo" value="${param.phoneNo}" required><br>
                    </div>
                </div>
                <div class="row">
                    <div class="column">
                        <label for="gameName">Game Name</label><br>
                        <select id="gameName" name="gameName" class="inputBox" required>
                            <c:forEach var="row" items="${resultGame.rowsByIndex}">
                                 <option value="${row[1]}" <c:if test="${param.gameName == row[1]}">selected</c:if>>${row[1]}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="column">
                        <label for="bookingDate">Book Date</label><br>
                        <input class="inputBox" type="date" name="bookingDate" value="${param.bookingDate}" required><br>
                    </div>
                </div>
                <div class="row">
                    <div class="column">
                        <label for="bookingTime">Book Time</label><br>
                        <input class="inputBox" type="time" name="bookingTime" value="${param.bookingTime}" required><br><br>
                    </div>
                    <div class="column">
                        <label for="hallName">Hall Name</label><br>
                        <select id="hallName" name="hallName" class="inputBox" required>
                            <c:forEach var="row" items="${resultHall.rowsByIndex}">
                                <option value="${row[1]}" <c:if test="${param.hallName == row[1]}">selected</c:if>>${row[1]}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <div class="row">
                    <div class="column">
                        <label for="courtName">Court Name</label><br>
                        <select id="courtName" name="courtName" class="inputBox" required>
                            <c:forEach var="row" items="${resultCourt.rowsByIndex}">
                                <option value="${row[1]}" <c:if test="${param.courtName == row[1]}">selected</c:if>>${row[1]}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="column"><!--JGN BUANG DIV NI--></div>
                </div>
                
                <button><input class="editButton" type="submit" value="Save"></button>
                <button><a href="BookServlet" class="cancelButton">Cancel</a></button>
            </form>
        </div>   
    </body>
</html>