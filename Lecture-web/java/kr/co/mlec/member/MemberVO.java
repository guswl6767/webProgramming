package kr.co.mlec.member;


//자바빈스 클래스 만들기
public class MemberVO {
      
	 //아이디랑 패스워드감싼 클래스 만들기
	 private String id;
	 private String password;

   public MemberVO() {
	   
	   
   }
public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
@Override
public String toString() {
	return "MemberVO [id=" + id + ", password=" + password + "]";
}
}