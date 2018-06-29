package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.entity.order;
import com.utils.DBConnection;

public class OrderDao {
	
	public List<order>queryAll(){
		Connection conn=DBConnection.getConn();
		PreparedStatement ps=null;
		ResultSet rs=null;
		List<order>list=new ArrayList<order>();
	try{
		ps=conn.prepareStatement("select * from [order]");
		rs=ps.executeQuery();
		while(rs.next()){
			list.add(new order(rs.getString(1),rs.getString(2),rs.getString(3)));
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
		String sql="delete from [order] where oid=?";
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
	public void addorder(String oid, String cid, String odate){
		Connection conn=DBConnection.getConn();
		String sql="insert into [order] values (?,?,?)";
		PreparedStatement ps=null;
		try{
			ps=conn.prepareStatement(sql);
			
			ps.setString(1, oid);
			ps.setString(2, cid);
			ps.setString(3, odate);
			
			ps.executeUpdate();
		}catch (SQLException e){
			e.printStackTrace();
		}finally{
			DBConnection.close(null, ps, conn);
		}
	}
	public void modifById(String oid, String cid, String odate){
		Connection conn=DBConnection.getConn();
		String sql="update [order] set cid=?,odate=? where oid=?";
		PreparedStatement ps=null;
		try{
			ps=conn.prepareStatement(sql);
			ps.setString(1, cid);
			ps.setString(2,  odate);
			ps.setString(3, oid);
			ps.executeUpdate();
		}catch (SQLException e){
			e.printStackTrace();
		}finally{
			DBConnection.close(null, ps, conn);
		}
	}
	public order queryById(String id) {
		String sql="select * from [order] where oid=?";
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		order ord=null;
	try{
		conn = DBConnection.getConn();
		ps=(PreparedStatement)conn.prepareStatement(sql);
		ps.setString(1, id);
		rs=ps.executeQuery();
		while(rs.next()){
			ord=(new order(rs.getString(1),rs.getString(2),rs.getString(3)));
		}
	}catch (SQLException e){
		e.printStackTrace();
	}finally{
		DBConnection.close(rs, ps, conn);
	}
	return ord;
	}
}
