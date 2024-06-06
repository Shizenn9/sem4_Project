<%@page import="util.DBConnection"%>
<%@ page import="java.sql.*" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Court</title>
        <!--Google Font-->
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500&display=swap" rel="stylesheet">
        <!--Stylesheet-->
        <link rel="stylesheet" href="style3.css">
        <script>
            function displayMessageAndRedirect() {
                var message = "Court added successfully.";
                alert(message);
                window.location.href = "<%=request.getContextPath()%>/CourtServlet";
            }
        </script>
    </head>
    <body>
    <%
        if ("POST".equalsIgnoreCase(request.getMethod())) {
            String courtName = request.getParameter("courtName");

            if (courtName != null && !courtName.isEmpty()) {
                try {
                    // Establish the database connection
                    Connection conn = DBConnection.createConnection();
                    String sql = "INSERT INTO COURT (COURT_NAME) VALUES (?)";
                    PreparedStatement pstmt = conn.prepareStatement(sql);
                    pstmt.setString(1, courtName);
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
            <h1>Add New Court</h1>
            <form method="post" action="addCourt.jsp">
                <div class="row">
                    <div class="column">
                        <label for="courtName">Court Name</label>
                        <input class="inputBox" type="text" id="courtName" name="courtName" placeholder="Enter Court Name" required>
                    </div>
                </div>
                <button><input class="addButton" type="submit" value="Add"></button>
                <button><a href="CourtServlet" class="cancelButton">Cancel</a></button>
            </form>
        </div>
    </body>
</html>
