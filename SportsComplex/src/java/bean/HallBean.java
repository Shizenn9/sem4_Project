package bean;

public class HallBean {
    private int hallId;
    private String hallName;
    
    public HallBean(){
        
    }
    
    public HallBean(int hallId, String hallName){
        this.hallId = hallId;
        this.hallName = hallName;
    }
    
    public void setHallId(int hallId){
        this.hallId = hallId;
    }
    
    public void setHallName(String hallName){
        this.hallName = hallName;
    }
    
    public int getHallId(){
        return hallId;
    }
    
    public String getHallName(){
        return hallName;
    }
}
