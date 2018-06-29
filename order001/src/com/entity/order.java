package com.entity;

public class order {
	private String oid;
	private String cid;
	private String odate;
	public String getOid() {
		return oid;
	}
	public void setOid(String oid) {
		this.oid = oid;
	}
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	public String getOdate() {
		return odate;
	}
	public void setOdate(String odate) {
		this.odate = odate;
	}
	@Override
	public String toString() {
		return "order [oid=" + oid + ", cid=" + cid + ", odate=" + odate
				+ ", getOid()=" + getOid() + ", getCid()=" + getCid()
				+ ", getOdate()=" + getOdate() + ", toString()="
				+ super.toString() + "]";
	}
	public order(String oid, String cid, String odate) {
		super();
		this.oid = oid;
		this.cid = cid;
		this.odate = odate;
	}
	public order() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
