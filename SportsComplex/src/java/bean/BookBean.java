package bean;

import java.time.LocalDate;
import java.time.LocalTime;

public class BookBean {
    private int bookId;
    private String teamName;
    private String gameName;
    private String bookingDate;
    private String bookingTime;
    private int phoneNo;
    private String hallName;
    private String courtName;
    
    public BookBean(){
        
    }
    
    public BookBean(int bookId,String teamName, String gameName, String bookingDate, String bookingTime, int phoneNo, String hallName, String courtName){
        this.bookId = bookId;
        this.teamName = teamName;
        this.gameName = gameName;
        this.bookingDate = bookingDate;
        this.bookingTime = bookingTime;
        this.phoneNo = phoneNo;
        this.hallName = hallName;
        this.courtName = courtName;
    }
    
    public int getBookId(){
        return bookId;
    }
    
    public String getTeamName(){
        return teamName;
    }
    
    public String getGameName(){
        return gameName;
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
    
    public void setGameName(String gameName){
        this.gameName = gameName;
    }
    
    public void setBookId(int bookId){
        this.bookId = bookId;
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
    
    public void setHallName(String hallName){
        this.hallName = hallName;
    }
    
    public void setCourtName(String courtName){
        this.courtName = courtName;
    }
}
