package kr.ac.mlec.login.vo;
//alt+shift 
public class LoginVO {
                        //테이블 레코드값을 가져오니까 이름똑같이 하는게 좋음
	 private String id;
	 private String name;
	 private String password;
	 private String type;
	
	 public LoginVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	 
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
	
	@Override
	public String toString() {
		return "LoginVO [id=" + id + ", name=" + name + ", password=" + password + ", type=" + type + "]";
	}
	
}
