package com.exam.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.exam.dto.MemberDto;

public class MemberDao {
	private static MemberDao mDao;
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private int result;
	
	private MemberDao() {
		
	}
	
	public static synchronized MemberDao getInstance() {
		if(mDao == null) {
			mDao = new MemberDao();
		}
		return mDao;
	}
	
	public Connection getConnection() {
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String id = "CARE";
		String pw = "CARE";
	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con = DriverManager.getConnection(url, id, pw);
	}catch(ClassNotFoundException e) {
		e.printStackTrace();
	}catch(SQLException e) {
		e.printStackTrace();
	}
	return con;
}
	public void close(Connection con, PreparedStatement pstmt, ResultSet rs){
		if(rs!=null) {
			try {
				rs.close();
			}catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(pstmt != null) {
			try {
				pstmt.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		if(con != null) {
			try {
				con.close();
			}catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	public int join(MemberDto mDto) {
		con = this.getConnection();
		StringBuffer query = new StringBuffer();
		query.append("INSERT INTO member").append(" VALUES (?, ?, ?, ?)");
		try {
			pstmt = con.prepareStatement(query.toString());
					pstmt.setString(1,  mDto.getId());
					pstmt.setString(2,  mDto.getId());
					pstmt.setString(3,  mDto.getId());
					pstmt.setString(4,  mDto.getId());
					result = pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			this.close(con, pstmt, null);
		}
		return result;
	}
}