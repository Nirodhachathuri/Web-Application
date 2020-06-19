package com.lithan.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.lithan.dbUtil.DBConnecion;
import com.lithan.model.SearchInfo;
import com.lithan.model.Users;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.ResultSet;

public class userMgtDao {
	

	public static Users getUserByID(int userID) {
		
		Users users =null;
			try {
			Connection conn=DBConnecion.getConnection();
			PreparedStatement ps;
			String query="Select id,firstname,lastname,companyname,city,country,email from users where id=?";
			ps = (PreparedStatement) conn.prepareStatement(query);
			ps.setInt(1,userID);
			ResultSet rs=(ResultSet) ps.executeQuery();
			while(rs.next()) {
			 users = new Users(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7));
			}
			try {
				DBConnecion.closeConnection(conn);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} 
		catch (SQLException e) {
;			e.printStackTrace();
		}
		return users;
	}
	
	public static List<Users> getAllUser(){
		List<Users> userList = new ArrayList<Users>();
		Connection conn=null;
		try {
			conn=DBConnecion.getConnection();
			String query="select * from users";
			PreparedStatement ps=(PreparedStatement) conn.prepareStatement(query);
			
			ResultSet rs=(ResultSet) ps.executeQuery();
			while(rs.next()) {
				Users userObj=new Users(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8));
				userList.add(userObj);
			}
	}
	catch(Exception ex) {
		ex.printStackTrace();			
	}
	finally {
		try {
			DBConnecion.closeConnection(conn);
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
	}
		return userList;
	}
	
	public static int deleteUser(int userId) throws Exception
	{
		 int status=0;
		Connection conn=null;
		try {
				conn=DBConnecion.getConnection();
				String query="Delete from users where id=?";
				PreparedStatement ps=(PreparedStatement) conn.prepareStatement(query);
				ps.setInt(1,userId);
				status= ps.executeUpdate();
		}
		catch(Exception ex) {
			ex.printStackTrace();			
		}
		finally {
			DBConnecion.closeConnection(conn);
		}
		return status;
	}

	public static int addUser(Users userObj) {
		
		int status=0;
		Connection conn=null;
		
		try {
			conn=DBConnecion.getConnection();
			String sql = "insert into users(firstname,lastname,companyname,city,country,email,password) VALUES (?,?,?,?,?,?,?)";
			PreparedStatement ps;
			
			ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setString(1, userObj.getFirstname());
			ps.setString(2, userObj.getLastname());
			ps.setString(3, userObj.getCompanyname());
			ps.setString(4, userObj.getCity());
			ps.setString(5, userObj.getCountry());
			ps.setString(6, userObj.getEmail());
			ps.setString(7, userObj.getPassword());
			
			status=ps.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return status;
	}

	public static int updateUser(Users userObj) {
		int status=0;
		try {
			Connection conn= DBConnecion.getConnection();
			String query="UPDATE users SET firstname=?,lastname=?,companyname=?,city=?,country=?,email=? WHERE id=?";
			PreparedStatement ps=(PreparedStatement) conn.prepareStatement(query);
			ps.setString(1,userObj.getFirstname());
			ps.setString(2,userObj.getLastname());
			ps.setString(3,userObj.getCompanyname());
			ps.setString(4,userObj.getCity());
			ps.setString(5,userObj.getCountry());
			ps.setString(6,userObj.getEmail());
			ps.setInt(7,userObj.getId());
			status =ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return status;
	}

	public static ArrayList<Users> searchValue(SearchInfo user) throws SQLException {
		ArrayList<Users> userList=new ArrayList<Users>();
		Connection conn= DBConnecion.getConnection();
		conn=DBConnecion.getConnection();
		String query="select * from users where firstname like LEFT(?)+'%'";
		PreparedStatement ps=(PreparedStatement) conn.prepareStatement(query);
		ps.setString(1,user.getSearch());
		System.out.println(ps);
		 
		try {
			ResultSet rs = (ResultSet) ps.executeQuery();
			while(rs.next()) {
				Users userObj=new Users(rs.getString(2),rs.getString(3),rs.getString(4));
				System.out.println("1"+userObj);
				userList.add(userObj);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			
		}		
		return userList;
	}
}
