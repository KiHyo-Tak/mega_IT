package com.tj.test06.dto;

public class Category {
	private int cno;
	private String main;
	private String sub;
	public int getCno() {
		return cno;
	}
	public void setCno(int cno) {
		this.cno = cno;
	}
	public String getMain() {
		return main;
	}
	public void setMain(String main) {
		this.main = main;
	}
	public String getSub() {
		return sub;
	}
	public void setSub(String sub) {
		this.sub = sub;
	}
	@Override
	public String toString() {
		return "Category [cno=" + cno + ", main=" + main + ", sub=" + sub + "]";
	}
}
