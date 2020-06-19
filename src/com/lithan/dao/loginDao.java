package com.lithan.dao;

import com.lithan.dbUtil.DBConnecion;
import com.lithan.model.Login_info;
import com.lithan.model.AdminLoginInfo;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.ResultSet;

public class loginDao {
	
	public static boolean isValidUser(Login_info users) throws Exception
	{
		boolean validUser=false;
		Connection conn=null;
		try {
				conn=DBConnecion.getConnection();
				String query="select * from users where email=? and password=?";
				PreparedStatement ps=(PreparedStatement) conn.prepareStatement(query);
				ps.setString(1,users.getEmail());
				ps.setString(2,users.getPassword());
				ResultSet rs=(ResultSet) ps.executeQuery();
				while(rs.next()) {
					validUser=true;
				}
		}
		catch(Exception ex) {
			ex.printStackTrace();			
		}
		finally {
			DBConnecion.closeConnection(conn);
		}
		
		return validUser;
	}
	
	public static boolean isValidAdmin(AdminLoginInfo userInfo) throws Exception
	{
		boolean validUser=false;
		Connection conn=null;
		try {
				conn=DBConnecion.getConnection();
				String query="select * from login_info where email=? and password=?";
				PreparedStatement ps=(PreparedStatement) conn.prepareStatement(query);
				ps.setString(1,userInfo.getEmail());
				ps.setString(2,userInfo.getPassword());
				ResultSet rs=(ResultSet) ps.executeQuery();
				while(rs.next()) {
					validUser=true;
				}
		}
		catch(Exception ex) {
			ex.printStackTrace();			
		}
		finally {
			DBConnecion.closeConnection(conn);
		}
		
		return validUser;
	}
}
