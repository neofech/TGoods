package com.huake.user.pojo;

public class User {
	private int id;
	private String account;
	private String password;
	private String email;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", " + (account != null ? "account=" + account + ", " : "")
				+ (password != null ? "password=" + password + ", " : "") + (email != null ? "email=" + email : "")
				+ "]";
	}
}
