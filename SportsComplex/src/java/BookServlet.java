import dao.BookDao;
import bean.BookBean;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import javax.servlet.annotation.WebServlet;

@WebServlet("/BookServlet")
public class BookServlet extends HttpServlet {
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BookDao bookDao = new BookDao();
        List<BookBean> books = bookDao.getAllBooks();
        request.setAttribute("books", books);
        request.getRequestDispatcher("viewBook.jsp").forward(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int bookId = Integer.parseInt(request.getParameter("bookId"));
        BookDao bookDao = new BookDao();
        bookDao.deleteBook(bookId);
        response.sendRedirect("BookServlet");
    }
}