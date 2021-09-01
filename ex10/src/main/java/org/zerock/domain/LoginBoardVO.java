package org.zerock.domain;

public class LoginBoardVO {
	// 이름
	private String name; 
	//아이디
	private String id;
	//비밀번호
	private String password;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
		return "LoginBoardVO [name=" + name + ", id=" + id + ", password=" + password + "]";
	}
	
}
