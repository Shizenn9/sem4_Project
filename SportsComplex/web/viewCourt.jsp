<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="bean.HallBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

	<title>Court</title>
        <script>
            function confirmDelete(courtId) {
                var confirmed = confirm("Are you sure you want to delete this court?");
                if (confirmed) {
                    // If confirmed, submit the form
                    document.getElementById("deleteForm" + courtId).submit();
                }
            }
        </script>
</head>
<body>


	<!-- SIDEBAR -->
	<section id="sidebar">
		<a href="#" class="brand">
			<i class='bx bxs-smile'></i>
			<span class="text">Megah Holdings</span>
		</a>
		<ul class="side-menu top">
			<li>
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
			<li class="active">
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
					<h1>Court</h1>
					<ul class="breadcrumb">
					</ul>
				</div>
                <a href="addCourt.jsp" class="btn-download">
                    <span class="text">Create</span>
                </a>
		
			</div>
            <div class="table-data">
				<div class="order">
					<div class="head">
		
					</div>
					<table>
						<thead>
							<tr>
								<th>Court ID</th>
								<th>Court Name</th>
                                                                <th>Edit</th> 
                                                                <th>Delete</th>
							</tr>
						</thead>
						<tbody>
                                                    <c:forEach items="${courts}" var="court">
							<tr>
								<td><p>${court.courtId}</p></td>
								<td>${court.courtName}</td>
                                                                <td><span class="status process"><a style="color:white;" class="editButton" href="editCourt.jsp?courtId=${court.courtId}&amp;courtName=${court.courtName}">Edit</a></span></td>
								<td>
                                                                    <form id="deleteForm${court.courtId}" method="post" action="CourtServlet">
                                                                        <input type="hidden" class="status pending" name="courtId" value="${court.courtId}">
                                                                        <button type="button" style="border-color:transparent;" class="status completed" onclick="confirmDelete(${court.courtId})">Delete</button>
                                                                    </form>
                                                                </td>

							</tr>
							</c:forEach>
						</tbody>
					</table>
		</main>
		<!-- MAIN -->
	</section>
	<!-- CONTENT -->
	<script src="script.js"></script>
</body>
</html>

