package dao;

import bean.GameBean;
import util.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class GameDao {
    public List<GameBean> getAllGames() {
        List<GameBean> games = new ArrayList<>();
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try {
            conn = DBConnection.createConnection();
            String sql = "SELECT * FROM GAME";
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();

            while (rs.next()) {
                GameBean game = new GameBean();
                game.setGameId(rs.getInt("GAME_ID"));
                game.setGameName(rs.getString("GAME_NAME"));
                games.add(game);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // Close resources
            try {
                if (rs != null) {
                    rs.close();
                }
                if (pstmt != null) {
                    pstmt.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return games;
    }
    
    public void deleteGame(int gameId) {
        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            conn = DBConnection.createConnection();
            String sql = "DELETE FROM GAME WHERE GAME_ID=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, gameId);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (pstmt != null)
                    pstmt.close();
                if (conn != null)
                    conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
