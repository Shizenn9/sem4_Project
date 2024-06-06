package bean;

public class StaffBean {
    
    private int staffId;
    private String name;
    private String address;
    private String position;
    private int phoneNo;
    private String email;
    private String password;
    
    public StaffBean(){
        
    }
    
    public StaffBean(int staffId, String name, String address, String position, int phoneNo, String email, String password){
        this.staffId = staffId;
        this.name = name;
        this.address = address;
        this.position = position;
        this.phoneNo = phoneNo;
        this.email = email;
        this.password = password;
    }
    
    public int getStaffId(){
        return staffId;
    }
    
    public String getName(){
        return name;
    }
    
    public String getAddress(){
        return address;
    }
    
    public String getPosition(){
        return position;
    }
    
    public int getPhoneNo(){
        return phoneNo;
    }
    
    public String getEmail(){
        return email;
    }
    
    public String getPassword(){
        return password;
    }
    
    public void setStaffId(int staffId){
        this.staffId = staffId;
    }
    
    public void setName(String name){
        this.name = name;
    }
    
    public void setAddress(String address){
        this.address = address;
    }
    
    public void setPosition(String position){
        this.position = position;
    }
    
    public void setPhoneNo(int phoneNo){
        this.phoneNo = phoneNo;
    }
    
    public void setEmail(String email){
        this.email = email;
    }
    
    public void setPassword(String password){
        this.password = password;
    }
}
