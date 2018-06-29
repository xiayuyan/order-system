package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.entity.orderdetail;
import com.utils.DBConnection;

public class OrderdetailDao {
	
	public List<orderdetail>queryAll(){
		Connection conn=DBConnection.getConn();
		PreparedStatement ps=null;
		ResultSet rs=null;
		List<orderdetail>list=new ArrayList<orderdetail>();
	try{
		ps=conn.prepareStatement("select * from orderdetail");
		rs=ps.executeQuery();
		while(rs.next()){
			list.add(new orderdetail(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4)));
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
		String sql="delete from orderdetail where id=?";
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
	public void addorderdetail(String id, String pid, String oid, int pnum){
		Connection conn=DBConnection.getConn();
		String sql="insert into orderdetail values(?,?,?,?)";
		PreparedStatement ps=null;
		try{
			ps=conn.prepareStatement(sql);
			
			ps.setString(1, id);
			ps.setString(2, pid);
			ps.setString(3, oid);
			ps.setInt(4, pnum);
			
			ps.executeUpdate();
		}catch (SQLException e){
			e.printStackTrace();
		}finally{
			DBConnection.close(null, ps, conn);
		}
	}
	public void modifById(String id, String pid, String oid, int pnum){
		Connection conn=DBConnection.getConn();
		String sql="update orderdetail set pid=?,oid=?,pnum=? where id=?";
		PreparedStatement ps=null;
		try{
			ps=conn.prepareStatement(sql);
			ps.setString(1, pid);
			ps.setString(2, oid);
			ps.setInt(3, pnum);
			ps.setString(4, id);
			ps.executeUpdate();
		}catch (SQLException e){
			e.printStackTrace();
		}finally{
			DBConnection.close(null, ps, conn);
		}
	}
	public orderdetail queryById(String id) {
		String sql="select * from orderdetail where id=?";
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		orderdetail ordet=null;
	try{
		conn = DBConnection.getConn();
		ps=(PreparedStatement)conn.prepareStatement(sql);
		ps.setString(1, id);
		rs=ps.executeQuery();
		while(rs.next()){
			ordet=(new orderdetail(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4)));
		}
	}catch (SQLException e){
		e.printStackTrace();
	}finally{
		DBConnection.close(rs, ps, conn);
	}
	return ordet;
	}
}
