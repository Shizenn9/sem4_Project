/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

/**
 *
 * @author Danish
 */
public class RegisterBean implements java.io.Serializable{
    private int phoneNo;
    private String email;
    private String firstName;
    private String lastName;
    private String password;
    
    public RegisterBean(){

    }

    public RegisterBean(int phoneNo, String email, String firstName, String lastName, String password){
        this.phoneNo = phoneNo;
        this.email = email;
        this.firstName = firstName;
        this.lastName = lastName;
        this.password = password;
    }
    
    public int getPhoneNo(){
        return phoneNo;
    }
    
    public String getEmail(){
        return email;
    }
    
    public String getFirstName(){
        return firstName;
    }
    
    public String getLastName(){
        return lastName;
    }
    
    public String getPassword(){
        return password;
    }
    
    public void setPhoneNo(int phoneNo){
        this.phoneNo = phoneNo;
    }
    
    public void setEmail(String email){
        this.email = email;
    }
    
    public void setFirstName(String firstname){
        this.firstName = firstname;
    }
    
    public void setLastName(String lastName){
        this.lastName = lastName;
    }
    
    public void setPassword(String password){
        this.password = password;
    }
}
