<%@page import="util.DBConnection"%>
<%@ page import="java.sql.*" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Hall</title>
        <!--Google Font-->
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500&display=swap" rel="stylesheet">
        <!--Stylesheet-->
        <link rel="stylesheet" href="style3.css">
        <script>
            function displayMessageAndRedirect() {
                var message = "Staff added successfully.";
                alert(message);
                window.location.href = "<%=request.getContextPath()%>/StaffServlet";
            }
        </script>
    </head>
    <body>
    <%
        if ("POST".equalsIgnoreCase(request.getMethod())) {
            String name = request.getParameter("name");
            String address = request.getParameter("address");
            String position = request.getParameter("position");
            int phoneNo = Integer.parseInt(request.getParameter("phoneNo"));
            String email = request.getParameter("email");
            String password = request.getParameter("password");
             
            if (name != null && !name.isEmpty()) {
                try {
                    // Establish the database connection
                    Connection conn = DBConnection.createConnection();
                    String sql = "INSERT INTO STAFF (STAFF_NAME, STAFF_ADDRESS, STAFF_POSITION, STAFF_PHONENO, "
                            + "STAFF_EMAIL, STAFF_PASSWORD) VALUES (?,?,?,?,?,?)";
                    PreparedStatement pstmt = conn.prepareStatement(sql);
                    pstmt.setString(1, name);
                    pstmt.setString(2, address);
                    pstmt.setString(3, position);
                    pstmt.setInt(4, phoneNo);
                    pstmt.setString(5, email);
                    pstmt.setString(6, password);
                    pstmt.executeUpdate();

                    // Close the resources
                    pstmt.close();
                    conn.close();

                    // Display the success message and redirect
                    out.println("<script>displayMessageAndRedirect();</script>");
                    return; // Stop further processing of the JSP
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    %>

        <div class="container">
            <h1>Add New Staff</h1>
            <form method="post" action="addStaff.jsp">
                <div class="row">
                    <div class="column">
                        <label for="name">Staff Name</label>
                        <input class="inputBox" type="text" id="name" name="name" placeholder="Enter Name" required>
                    </div>
                    <div class="column">
                        <label for="address">Address</label>
                        <input class="inputBox" type="text" id="address" name="address" placeholder="Enter Address" required>
                    </div>
                </div>
                <div class="row">
                    <div class="column">
                        <label for="position">Position</label>
                        <select id="position" name="position" class="inputBox" required>
                            <option value="Manager">Manager</option>
                            <option value="Full Time">Full Time</option>
                            <option value="Part Time">Part Time</option>
                        </select>
                    </div>
                    <div class="column">
                        <label for="phoneNo">Phone Number (+60)</label>
                        <input class="inputBox" type="text" id="phoneNo" name="phoneNo" placeholder="Enter Phone Number" required>
                    </div>
                </div>
                <div class="row">
                    <div class="column">
                        <label for="email">Email</label>
                        <input class="inputBox" type="text" id="email" name="email" placeholder="Enter Email" required>
                    </div>
                    <div class="column">
                        <label for="password">Password</label>
                        <input class="inputBox" type="text" id="password" name="password" placeholder="Enter Password" required>
                    </div>
                </div>
                <button><input class="addButton" type="submit" value="Add"></button>
                <button><a href="StaffServlet" class="cancelButton">Cancel</a></button>
            </form>
        </div>
    </body>
</html>
