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
            function confirmDelete(staffId) {
                var confirmed = confirm("Are you sure you want to delete this staff?");
                if (confirmed) {
                    // If confirmed, submit the form
                    document.getElementById("deleteForm" + staffId).submit();
                }
            }
        </script>
	<title>Staff</title>
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
            <li class="active">
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
					<h1>Staff</h1>
					<ul class="breadcrumb">
					</ul>
				</div>
                <a href="addStaff.jsp" class="btn-download">
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
                                                            <th>Staff ID</th>
                                                            <th>Name</th>
                                                            <th>Address</th>
                                                            <th>Position</th>
                                                            <th>Phone Number</th>
                                                            <th>Email</th>
                                                            <th>Password</th>
                                                            <th>Edit</th> 
                                                            <th>Delete</th>
							</tr>
						</thead>
						<tbody>
                                                    <c:forEach items="${staffs}" var="staff">
							<tr>
                                                            <td><p>${staff.staffId}</p></td>
                                                            <td>${staff.name}</td>
                                                            <td>${staff.address}</td>
                                                            <td>${staff.position}</td>
                                                            <td>${staff.phoneNo}</td>
                                                            <td>${staff.email}</td>
                                                            <td>${staff.password}</td>
                                                            <td><span class="status process"><a style="color:white;" href="editStaff.jsp?staffId=${staff.staffId}&amp;name=${staff.name}&amp;address=${staff.address}
                                                                &amp;position=${staff.position}&amp;phoneNo=${staff.phoneNo}&amp;email=${staff.email}&amp;password=${staff.password}" class="editButton">Edit</a></span></td>
                                                            <td><form id="deleteForm${staff.staffId}" method="post" action="StaffServlet">
                                                                    <input type="hidden" name="staffId" value="${staff.staffId}">
                                                                    <button type="button" style="border-color:transparent;" class="status completed" onclick="confirmDelete(${staff.staffId})">Delete</button>
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