package bean;

public class RepresentativeBean {
    private int repId;
    private int phoneNo;
    private String email;
    private String firstName;
    private String lastName;
    private String password;

    public RepresentativeBean() {

    }

    public RepresentativeBean(int repId, int phoneNo, String email, String firstName, String lastName, String password) {
        super();
        this.repId = repId;
        this.phoneNo = phoneNo;
        this.email = email;
        this.firstName = firstName;
        this.lastName = lastName;
        this.password = password;
    }

    public int getRepId() {
        return repId;
    }

    public void setRepId(int repId) {
        this.repId = repId;
    }

    public int getPhoneNo() {
        return phoneNo;
    }

    public void setPhoneNo(int phoneNo) {
        this.phoneNo = phoneNo;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
