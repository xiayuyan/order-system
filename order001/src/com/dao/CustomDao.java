package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.entity.custom;
import com.utils.DBConnection;

public class CustomDao {
	
	public List<custom>queryAll(){
		Connection conn=DBConnection.getConn();
		PreparedStatement ps=null;
		ResultSet rs=null;
		List<custom>list=new ArrayList<custom>();
	try{
		ps=conn.prepareStatement("select * from custom");
		rs=ps.executeQuery();
		while(rs.next()){
			list.add(new custom(rs.getString(1),rs.getString(2),rs.getString(3),rs.getInt(4),rs.getString(5),rs.getString(6)));
		}
	}catch (SQLException e){
		e.printStackTrace();
	}finally{
		DBConnection.close(rs, ps, conn);
	}
	return list;
}
	public void delById(String id){
		Connection conn=DBConnection.getConn();
		String sql="delete from custom where cid=?";
		PreparedStatement ps=null;
		try{
			ps=conn.prepareStatement(sql);
			ps.setString(1, id);
			ps.executeUpdate();
		}catch (SQLException e){
			e.printStackTrace();
		}finally{
			DBConnection.close(null, ps, conn);
		}
	}
	public void addcustom(String cid, String cname, String clink, int cphmun,
			String cadd, String cpost){
		Connection conn=DBConnection.getConn();
		String sql="insert into custom values(?,?,?,?,?,?)";
		PreparedStatement ps=null;
		try{
			ps=conn.prepareStatement(sql);
			
			ps.setString(1, cid);
			ps.setString(2, cname);
			ps.setString(3, clink);
			ps.setInt(4, cphmun);
			ps.setString(5, cadd);
			ps.setString(6, cpost);
			
			ps.executeUpdate();
		}catch (SQLException e){
			e.printStackTrace();
		}finally{
			DBConnection.close(null, ps, conn);
		}
	}
	public void modifById(String cid, String cname, String clink, int cphmun,
			String cadd, String cpost){
		Connection conn=DBConnection.getConn();
		String sql="update custom set cname=?,clink=?,cphmun=?,cadd=?,cpost=? where cid=?";
		PreparedStatement ps=null;
		try{
			ps=conn.prepareStatement(sql);
			ps.setString(1, cname);
			ps.setString(2, clink);
			ps.setInt(3, cphmun);
			ps.setString(4, cadd);
			ps.setString(5, cpost);
			ps.setString(6, cid);
			ps.executeUpdate();
		}catch (SQLException e){
			e.printStackTrace();
		}finally{
			DBConnection.close(null, ps, conn);
		}
	}
	public custom queryById(String id) {
		String sql="select * from custom where cid=?";
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		custom cus=null;
	try{
		conn = DBConnection.getConn();
		ps=(PreparedStatement)conn.prepareStatement(sql);
		ps.setString(1, id);
		rs=ps.executeQuery();
		while(rs.next()){
			cus=(new custom(rs.getString(1),rs.getString(2),rs.getString(3),rs.getInt(4),rs.getString(5),rs.getString(6)));
		}
	}catch (SQLException e){
		e.printStackTrace();
	}finally{
		DBConnection.close(rs, ps, conn);
	}
	return cus;
	}
}
