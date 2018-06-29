package com.entity;

public class custom {
	private String cid;
	private String cname;
	private String clink;
	private int cphmun;
	private String cadd;
	public custom() {
		super();
		// TODO Auto-generated constructor stub
	}
	public custom(String cid, String cname, String clink, int cphmun,
			String cadd, String cpost) {
		super();
		this.cid = cid;
		this.cname = cname;
		this.clink = clink;
		this.cphmun = cphmun;
		this.cadd = cadd;
		this.cpost = cpost;
	}
	@Override
	public String toString() {
		return "custom [cid=" + cid + ", cname=" + cname + ", clink=" + clink
				+ ", cphmun=" + cphmun + ", cadd=" + cadd + ", cpost=" + cpost
				+ ", getCid()=" + getCid() + ", getCname()=" + getCname()
				+ ", getClink()=" + getClink() + ", getCphmun()=" + getCphmun()
				+ ", getCadd()=" + getCadd() + ", getCpost()=" + getCpost()
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
				+ ", toString()=" + super.toString() + "]";
	}
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getClink() {
		return clink;
	}
	public void setClink(String clink) {
		this.clink = clink;
	}
	public int getCphmun() {
		return cphmun;
	}
	public void setCphmun(int cphmun) {
		this.cphmun = cphmun;
	}
	public String getCadd() {
		return cadd;
	}
	public void setCadd(String cadd) {
		this.cadd = cadd;
	}
	public String getCpost() {
		return cpost;
	}
	public void setCpost(String cpost) {
		this.cpost = cpost;
	}
	String cpost;
}
