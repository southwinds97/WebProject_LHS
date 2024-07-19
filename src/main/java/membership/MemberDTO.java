package membership;

public class MemberDTO {
	
    private String id;
    private String pass;
    private String name;
    private String email;
    private String phonenum;
    private String regidate;
    private String passchk;
    
    public String getId() {
        return id;
    }
	public void setId(String id) {
        this.id = id;
    }
    public String getPass() {
        return pass;
    }
    public void setPass(String pass) {
        this.pass = pass;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getRegidate() {
        return regidate;
    }
    public void setRegidate(String regidate) {
        this.regidate = regidate;
    }
    public String getPasschk() {
    	return passchk;
    }
    public void setPasschk(String passchk) {
    	this.passchk = passchk;
    }
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhonenum() {
		return phonenum;
	}
	public void setPhonenum(String phonenum) {
		this.phonenum = phonenum;
	}
}
