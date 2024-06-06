<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<sql:setDataSource var="myDatasource"
    driver="org.apache.derby.jdbc.ClientDriver"
    url="jdbc:derby://localhost:1527/sportscomplex" user="app"
    password="app"/>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<!-- Boxicons -->
	<script src="https://kit.fontawesome.com/c204b688ed.js" crossorigin="anonymous"></script>
	<link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
	<!-- My CSS -->
	<link rel="stylesheet" href="style.css">

	<title>Dashboard</title>
</head>
<body>
    <% String message = (String)request.getAttribute("errMessage");%> 
    <script type="text/javascript">
        var msg = "<%=message%>";
            if (msg !== "null") {                
                alert(msg);
        }
    </script>

	<!-- SIDEBAR -->
	<section id="sidebar">
		<a href="#" class="brand">
			<i class='bx bxs-smile'></i>
			<span class="text">Megah Holdings</span>
		</a>
		<ul class="side-menu top">
			<li class="active">
				<a href="dashboard.jsp">
					<i class='bx bxs-dashboard' ></i>
					<span class="text">Dashboard</span>
				</a>
			</li>
			<li>
				<a href="HallServlet">
					<i class='bx bx-home-circle'></i>
					<span class="text">Hall</span>
				</a>
			</li>
			<li>
				<a href="CourtServlet">
					<i class='bx bxs-shopping-bag-alt' ></i>
					<span class="text">Court</span>
				</a>
			</li>
			<li>
				<a href="GameServlet">
					<i class='bx bx-joystick' ></i>
					<span class="text">Game</span>
				</a>
			</li>
			<li>
				<a href="RepresentativeServlet">
					<i class='bx bxs-doughnut-chart' ></i>
					<span class="text">Representative</span>
				</a>
			</li>
			<li>
				<a href="BookServlet">
					<i class='bx bxs-message-dots' ></i>
					<span class="text">Booking</span>
				</a>
			</li>
			<li>
				<a href="StaffServlet">
					<i class='bx bx-user-circle'></i>
					<span class="text">Staff</span>
				</a>
			</li>
		</ul>
		<ul class="side-menu">
			
			<li>
				<a href="adminLogoutServlet" class="logout">
					<i class='bx bxs-log-out-circle' ></i>
					<span class="text">Sign Out</span>
				</a>
			</li>
		</ul>
	</section>
	<!-- SIDEBAR -->



	<!-- CONTENT -->
	<section id="content">
		<!-- NAVBAR -->
		
		<!-- NAVBAR -->

		<!-- MAIN -->
		<main>
			<div class="head-title">
				<div class="left">
					<h1>Dashboard</h1>
					<ul class="breadcrumb">
						
					</ul>
				</div>
		
			</div>

			<ul class="box-info">
				<li>
					<i style="background-color: #CFE8FF" class='bx bx-home-circle'></i>
					<span class="text">
						<h3><sql:query dataSource="${myDatasource}" var="resultHall">
                                                        SELECT COUNT(HALL_ID) AS count FROM HALL
                                                    </sql:query>
                                                        <c:forEach var="row" items="${resultHall.rows}">
                                                            <span>${row.count}</span>
                                                    </c:forEach></h3>
						<p>Total Hall</p>
					</span>
				</li>
				<li>
					<i class='bx bx-checkbox' ></i>
					<span class="text">
						<h3><sql:query dataSource="${myDatasource}" var="resultCourt">
                                                        SELECT COUNT(COURT_ID) AS count FROM COURT
                                                    </sql:query>
                                                        <c:forEach var="row" items="${resultCourt.rows}">
                                                            <span>${row.count}</span>
                                                    </c:forEach></h3>
						<p>Total Court</p>
					</span>
				</li>
				<li>
					<i class='bx bx-joystick-alt' ></i>
					<span class="text">
						<h3><sql:query dataSource="${myDatasource}" var="resultGame">
                                                        SELECT COUNT(GAME_ID) AS count FROM GAME
                                                    </sql:query>
                                                        <c:forEach var="row" items="${resultGame.rows}">
                                                            <span>${row.count}</span>
                                                    </c:forEach></h3>
						<p>Total Game</p>
					</span>
				</li>
				<li>
					<i class='bx bxs-group' style='color:#6027c9'  ></i>
					<span class="text">
						<h3><sql:query dataSource="${myDatasource}" var="resultStaff">
                                                        SELECT COUNT(STAFF_ID) AS count FROM STAFF
                                                    </sql:query>
                                                        <c:forEach var="row" items="${resultStaff.rows}">
                                                            <span>${row.count}</span>
                                                    </c:forEach></h3>
						<p>Total Staff</p>
					</span>
				</li>
				<li>
					<i class='bx bxs-id-card' style='color:#27c9bb'  ></i>
					<span class="text">
						<h3><sql:query dataSource="${myDatasource}" var="resultRepresentative">
                                                        SELECT COUNT(REP_ID) AS count FROM REPRESENTATIVE
                                                    </sql:query>
                                                        <c:forEach var="row" items="${resultRepresentative.rows}">
                                                            <span>${row.count}</span>
                                                    </c:forEach></h3>
						<p>Total Representative</p>
					</span>
				</li>
				<li>
					<i class='bx bxs-calendar-check' ></i>
					<span class="text">
						<h3><sql:query dataSource="${myDatasource}" var="resultBook">
                                                        SELECT COUNT(BOOKING_ID) AS count FROM BOOKING
                                                    </sql:query>
                                                        <c:forEach var="row" items="${resultBook.rows}">
                                                            <span>${row.count}</span>
                                                    </c:forEach></h3>
						<p>Total Bookings</p>
					</span>
				</li>
			</ul>


			
		</main>
		<!-- MAIN -->
	</section>
	<!-- CONTENT -->
	

	<script src="script.js"></script>
</body>
</html>