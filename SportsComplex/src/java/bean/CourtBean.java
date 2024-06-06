package bean;

public class CourtBean {
    private int courtId;
    private String courtName;
    
    public CourtBean(){
        
    }
    
    public CourtBean(int courtId, String courtName){
        this.courtId = courtId;
        this.courtName = courtName;
    }
    
    public int getCourtId(){
        return courtId;
    }
    
    public String getCourtName(){
        return courtName;
    }
    
    public void setCourtId(int courtId){
        this.courtId = courtId;
    }
    
    public void setCourtName(String courtName){
        this.courtName = courtName;
    }
}
