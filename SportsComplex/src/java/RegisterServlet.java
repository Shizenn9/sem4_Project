import bean.RegisterBean;
import dao.RegisterDao;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RegisterServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String firstName = request.getParameter("formFirstName");
        String lastName = request.getParameter("formLastName");
        String email = request.getParameter("formEmail");
        String phoneNoString = request.getParameter("formPhoneNo");
        int phoneNo = Integer.parseInt(phoneNoString);
        String pass = request.getParameter("formPassword");
        String confirmPass = request.getParameter("formPasswordConfirm");
        
        RegisterBean user;
        RegisterDao registerDao = new RegisterDao(); //creating object for RegisterDao   
        String userValidate = "Password do not match";
        
        if (pass.equals(confirmPass)) {
            user = new RegisterBean(phoneNo, email, firstName, lastName,pass);
            userValidate = registerDao.registerUser(user);
        }
        else {
            request.setAttribute("errMessage", userValidate);
            request.getRequestDispatcher("/signUp.jsp").forward(request, response);
        }
                
        if(userValidate.equals("SUCCESS")) {
            request.setAttribute("errMessage", "Successfully registered");
            request.getRequestDispatcher("/signIn.jsp").forward(request, response);
        }
        else {
            request.setAttribute("errMessage", userValidate);
            request.getRequestDispatcher("/signUp.jsp").forward(request, response);
        }
            
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
