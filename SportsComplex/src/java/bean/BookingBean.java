package bean;
import java.time.LocalDate;
import java.time.LocalTime;

public class BookingBean {
    private String teamName;
    private String gameType;
    private String bookingDate;
    private String bookingTime;
    private int phoneNo;
    private String hallName;
    private String courtName;
    
    public BookingBean(){
        
    }
    
    public BookingBean(String teamName, String gameType, String bookingDate, String bookingTime, int phoneNo, String hallName, String courtName){
        this.teamName = teamName;
        this.gameType = gameType;
        this.bookingDate = bookingDate;
        this.bookingTime = bookingTime;
        this.phoneNo = phoneNo;
        this.hallName = hallName;
        this.courtName = courtName;
    }
    
    public String getTeamName(){
        return teamName;
    }
    
    public String getGameType(){
        return gameType;
    }
    
    public String getBookingDate(){
        return bookingDate;
    }
    
    public String getBookingTime(){
        return bookingTime;
    }
    
    public int getPhoneNo(){
        return phoneNo;
    }
    
    public String getHallName(){
        return hallName;
    }
    
    public String getCourtName(){
        return courtName;
    }
    
    public void setTeamName(String teamName){
        this.teamName = teamName;
    }
    
    public void setGameType(String gameType){
        this.gameType = gameType;
    }
    
    public void setBookingDate(String bookingDate){
        this.bookingDate = bookingDate;
    }
    
    public void setBookingTime(String bookingTime){
        this.bookingTime = bookingTime;
    }
    
    public void setPhoneNo(int phoneNo){
        this.phoneNo = phoneNo;
    }
    
    public void setHall(String hallName){
        this.hallName = hallName;
    }
    
    public void setCourtName(String courtName){
        this.courtName = courtName;
    }
}
