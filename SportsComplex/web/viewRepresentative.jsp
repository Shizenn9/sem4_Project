<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
        <script>
            function confirmDelete(repId) {
                var confirmed = confirm("Are you sure you want to delete this representative?");
                if (confirmed) {
                    // If confirmed, submit the form
                    document.getElementById("deleteForm" + repId).submit();
                }
            }
        </script>
	<title>Representative</title>
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
			<li class="active">
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
					<h1>Representative</h1>
					<ul class="breadcrumb">
					</ul>
				</div>
                <a href="addRepresentative.jsp" class="btn-download">
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
                                                            <th>Representative ID</th>
                                                            <th>Phone Number</th>
                                                            <th>Email</th>
                                                            <th>First Name</th>
                                                            <th>Last Name</th>
                                                            <th>Password</th>
                                                            <th>Edit</th> 
                                                            <th>Delete</th>
							</tr>
						</thead>
						<tbody>
                                                    <c:forEach items="${representatives}" var="representative">
							<tr>
                                                            <td><p>${representative.repId}</p></td>
                                                            <td>${representative.phoneNo}</td>
                                                            <td>${representative.email}</td>
                                                            <td>${representative.firstName}</td>
                                                            <td>${representative.lastName}</td>
                                                            <td>${representative.password}</td>
                                                            <td><span class="status process"><a style="color:white;" href="editRepresentative.jsp?repId=${representative.repId}&amp;email=${representative.email}&amp;phoneNo=${representative.phoneNo}
                                                                &amp;firstName=${representative.firstName}&amp;lastName=${representative.lastName}&amp;password=${representative.password}" class="editButton">Edit</a></span></td>
                                                            <td><form id="deleteForm${representative.repId}" method="post" action="RepresentativeServlet">
                                                                    <input type="hidden" name="repId" value="${representative.repId}">
                                                                    <button type="button" style="border-color:transparent;" class="status completed" onclick="confirmDelete(${representative.repId})">Delete</button>
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