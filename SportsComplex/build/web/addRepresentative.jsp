<%@ page import="dao.RepresentativeDao" %>
<%@ page import="bean.RepresentativeBean"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Add Representative</title>
        <!--Google Font-->
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500&display=swap" rel="stylesheet">
        <!--Stylesheet-->
        <link rel="stylesheet" href="style3.css">
        <script>
            function displayMessageAndRedirect() {
                var message = "Representative added successfully.";
                alert(message);
                window.location.href = "<%=request.getContextPath()%>/RepresentativeServlet";
            }
        </script>
    </head>
    <body>
        <%
            if ("POST".equalsIgnoreCase(request.getMethod())) {
                String phoneNo = request.getParameter("phoneNo");
                String email = request.getParameter("email");
                String firstName = request.getParameter("firstName");
                String lastName = request.getParameter("lastName");
                String password = request.getParameter("password");

                if (phoneNo != null && !phoneNo.isEmpty() &&
                        email != null && !email.isEmpty() &&
                        firstName != null && !firstName.isEmpty() &&
                        lastName != null && !lastName.isEmpty() &&
                        password != null && !password.isEmpty()) {

                    RepresentativeBean representative = new RepresentativeBean();
                    representative.setPhoneNo(Integer.parseInt(phoneNo));
                    representative.setEmail(email);
                    representative.setFirstName(firstName);
                    representative.setLastName(lastName);
                    representative.setPassword(password);

                    boolean success = RepresentativeDao.addRepresentative(representative);

                    if (success) {
                        out.println("<script>displayMessageAndRedirect();</script>");
                        return;
                    } else {
                        out.println("<script>alert('Failed to add representative.');</script>");
                    }
                } else {
                    out.println("<script>alert('Please fill in all fields.');</script>");
                }
            }
        %>

        <div class="container">
            <h1>Add New Representative</h1>
            <form method="post" action="addRepresentative.jsp">
                <div class="row">
                    <div class="column">
                        <label for="firstName">First Name</label><br>
                        <input class="inputBox" type="text" name="firstName" placeholder="Enter Firstname" required><br>
                    </div>
                    <div class="column">
                        <label for="lastName">Last Name</label><br>
                        <input class="inputBox" type="text" name="lastName" placeholder="Enter Lastname" required><br>
                    </div>
                </div>
                <div class="row">
                    <div class="column">
                        <label for="email">Email</label><br>
                        <input class="inputBox" type="email" name="email" placeholder="Enter Email" required><br>
                    </div>
                    <div class="column">
                        <label for="phoneNo">Phone Number</label><br>
                        <input class="inputBox" type="text" name="phoneNo" placeholder="Enter Phone Number" required><br>
                    </div>
                </div>
                <div class="row">
                    <div class="column">
                        <label for="password">Password</label><br>
                        <input class="inputBox" type="password" name="password" placeholder="Enter password" required><br><br>
                    </div>
                    <div class="column"><!--JGN BUANG DIV NI--></div>
                </div>
                <button><input class="addButton" type="submit" value="Add"></button>
                <button><a href="RepresentativeServlet" class="cancelButton">Cancel</a></button>
            </form>
        </div>   
    </body>
</html>