import bean.GameBean;
import dao.GameDao;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/GameServlet")
public class GameServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        GameDao gameDao = new GameDao();
        List<GameBean> games = gameDao.getAllGames();
        request.setAttribute("games", games);
        request.getRequestDispatcher("viewGame.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int gameId = Integer.parseInt(request.getParameter("gameId"));
        GameDao gameDao = new GameDao();
        gameDao.deleteGame(gameId);
        response.sendRedirect("GameServlet");
    }
}
