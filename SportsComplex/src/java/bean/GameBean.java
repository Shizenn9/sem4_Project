package bean;

public class GameBean {
    private int gameId;
    private String gameName;
    
    public GameBean(){
        
    }
    
    public GameBean(int gameId,String gameName){
        this.gameId = gameId;
        this.gameName = gameName;
    }
    
    public int getGameId(){
        return gameId;
    }
    
    public String getGameName(){
        return gameName;
    }
    
    public void setGameId(int gameId){
        this.gameId = gameId;
    }
    
    public void setGameName(String gameName){
        this.gameName = gameName;
    }
}
