package com.entity;

public class orderdetail {
	private String id;
	private String pid;
	private String oid;
	private String pnum;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public String getOid() {
		return oid;
	}
	public void setOid(String oid) {
		this.oid = oid;
	}
	public String getPnum() {
		return pnum;
	}
	public void setPnum(String pnum) {
		this.pnum = pnum;
	}
	@Override
	public String toString() {
		return "orderdetail [id=" + id + ", pid=" + pid + ", oid=" + oid
				+ ", pnum=" + pnum + "]";
	}
	public orderdetail(String id, String pid, String oid, String pnum) {
		super();
		this.id = id;
		this.pid = pid;
		this.oid = oid;
		this.pnum = pnum;
	}
	public orderdetail() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
