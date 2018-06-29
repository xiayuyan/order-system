package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.entity.product;
import com.utils.DBConnection;

public class ProductDao {
	
	public List<product>queryAll(){
		Connection conn=DBConnection.getConn();
		PreparedStatement ps=null;
		ResultSet rs=null;
		List<product>list=new ArrayList<product>();
	try{
		ps=conn.prepareStatement("select * from product");
		rs=ps.executeQuery();
		while(rs.next()){
			list.add(new product(rs.getString(1),rs.getString(2),rs.getInt(3),rs.getString(4),rs.getString(5),rs.getString(6)));
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
		String sql="delete from product where pid=?";
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
	public void addproduct(String pid, String pname, int pprice,
			String ptype, String padd, String pdes){
		Connection conn=DBConnection.getConn();
		String sql="insert into product values(?,?,?,?,?,?)";
		PreparedStatement ps=null;
		try{
			ps=conn.prepareStatement(sql);
			
			ps.setString(1, pid);
			ps.setString(2, pname);
			ps.setInt(3, pprice);
			ps.setString(4, ptype);
			
			ps.setString(5, padd);
			ps.setString(6, pdes);
			
			ps.executeUpdate();
		}catch (SQLException e){
			e.printStackTrace();
		}finally{
			DBConnection.close(null, ps, conn);
		}
	}
	public void modifById(String pid, String pname, int pprice,
			String ptype, String padd, String pdes){
		Connection conn=DBConnection.getConn();
		String sql="update product set pname=?,pprice=?,ptype=?,padd=?,pdes=? where pid=?";
		PreparedStatement ps=null;
		try{
			ps=conn.prepareStatement(sql);
			ps.setString(1, pname);
			ps.setInt(2, pprice);
			ps.setString(3, ptype);
			ps.setString(4, padd);
			ps.setString(5, pdes);
			ps.setString(6, pid);
			ps.executeUpdate();
		}catch (SQLException e){
			e.printStackTrace();
		}finally{
			DBConnection.close(null, ps, conn);
		}
	}
	public product queryById(String id) {
		String sql="select * from product where pid=?";
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		product pro=null;
	try{
		conn = DBConnection.getConn();
		ps=(PreparedStatement)conn.prepareStatement(sql);
		ps.setString(1, id);
		rs=ps.executeQuery();
		while(rs.next()){
			pro=(new product(rs.getString(1),rs.getString(2),rs.getInt(3),rs.getString(4),rs.getString(5),rs.getString(6)));
		}
	}catch (SQLException e){
		e.printStackTrace();
	}finally{
		DBConnection.close(rs, ps, conn);
	}
	return pro;
	}
}
