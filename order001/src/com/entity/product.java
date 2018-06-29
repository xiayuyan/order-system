package com.entity;

public class product {
	private String pid;
	private String pname;
	private int pprice;
	private String ptype;
	private String padd;
	private String pdes;
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	
	
	public int getPprice() {
		return pprice;
	}
	public void setPprice(int pprice) {
		this.pprice = pprice;
	}
	public String getPtype() {
		return ptype;
	}
	public void setPtype(String ptype) {
		this.ptype = ptype;
	}
	public String getPadd() {
		return padd;
	}
	public void setPadd(String padd) {
		this.padd = padd;
	}
	public String getPdes() {
		return pdes;
	}
	public void setPdes(String pdes) {
		this.pdes = pdes;
	}
	@Override
	public String toString() {
		return "product [pid=" + pid + ", pname=" + pname 
				+ ", pprice=" + pprice + ", ptype=" + ptype + ", padd=" + padd
				+ ", pdes=" + pdes + ", getPid()=" + getPid() + ", getPname()="
				+ getPname()  + ", getPprice()="
				+ getPprice() + ", getPtype()=" + getPtype() + ", getPadd()="
				+ getPadd() + ", getPdes()=" + getPdes() + ", getClass()="
				+ getClass() + ", hashCode()=" + hashCode() + ", toString()="
				+ super.toString() + "]";
	}
	public product(String pid, String pname, int pprice,
			String ptype, String padd, String pdes) {
		super();
		this.pid = pid;
		this.pname = pname;
		this.pprice = pprice;
		this.ptype = ptype;
		this.padd = padd;
		this.pdes = pdes;
	}
	public product() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
