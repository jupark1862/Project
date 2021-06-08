package com.exam.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.exam.dto.BoardDto;

public class BoardDao {
	private static BoardDao BoardDao = new BoardDao();
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private int result = 0;

	public BoardDao() {
		super();
	}

	public static BoardDao getInstance() {
		return BoardDao;
	}

	public Connection getConnect() {
		String url = "jdbc:oracle:thin:@192.168.18.128:1521:xe";
		String id = "CARE", pw = "CARE";

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(url, id, pw);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return con;
	}

	public void close(Connection con, PreparedStatement pstmt, ResultSet rs) {
		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (pstmt != null) {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (con != null) {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	public int nextval() {
		con = getConnect();
		StringBuffer query = new StringBuffer();
		query.append("SELECT MAX(boardNo) ").append("FROM BOARDINFO");

		try {
			pstmt = con.prepareStatement(query.toString());
			rs = pstmt.executeQuery();
			while (rs.next()) {
				result = rs.getInt("MAX(boardNo)");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(con, pstmt, rs);
		}
		return result;
	}

	public int write(BoardDto BoardDto) {
		con = getConnect();
		StringBuffer query = new StringBuffer();
		query.append("INSERT INTO BOARDINFO ");
		query.append("(boardNo, userNo, boardTitle, boardContents, boardDate, hit) ");
		query.append("VALUES (?, ?, ?, ?, sysdate, 0)");
		try {
			pstmt = con.prepareStatement(query.toString());
			pstmt.setInt(1, BoardDto.getBoardNo());
			pstmt.setInt(2, BoardDto.getUserNo());
			pstmt.setString(3, BoardDto.getBoardTitle());
			pstmt.setString(4, BoardDto.getBoardContents());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(con, pstmt, null);
		}
		return result;
	}

	public List<BoardDto> selectList() {
		List<BoardDto> list = new ArrayList<>();

		try {
			con = getConnect();
			String sql = "SELECT * FROM BOARDINFO ORDER BY BoardNo DESC";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				BoardDto boardDto = new BoardDto();
				boardDto.setBoardNo(rs.getInt("BoardNo"));
				boardDto.setBoardTitle(rs.getString("BoardTitle"));
				boardDto.setBoardContents(rs.getString("BoardContents"));
				boardDto.setBoardDate(rs.getTimestamp("BoardDate"));
				boardDto.setHit(rs.getInt("Hit"));
				list.add(boardDto);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(con, pstmt, rs);
		}
		return list;

	}

	public int hitUpdate(String boardNo) {
		con = getConnect();
		String sql = "UPDATE BOARDINFO SET Hit = Hit + 1 WHERE BoardNo = ?";

		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, boardNo);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(con, pstmt, null);
		}
		return result;
	}

	public BoardDto selectById(String boardNo) {
		BoardDto boardDto = new BoardDto();
		con = getConnect();
		String sql = "SELECT * FROM BOARDINFO WHERE BoardNo = ?";

		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, boardNo);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				boardDto.setBoardNo(rs.getInt("boardNo"));
				boardDto.setBoardTitle(rs.getString("boardtitle"));
				boardDto.setBoardContents(rs.getString("boardContents"));
				boardDto.setBoardDate(rs.getTimestamp("boardDate"));
				boardDto.setHit(rs.getInt("hit"));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(con, pstmt, rs);
		}
		return boardDto;
	}

	public int del(int BoardNo) {
		con = getConnect();
		String sql = "DELETE FROM BOARDINFO WHERE BoardNo = ?";

		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, BoardNo);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(con, pstmt, null);
		}
		return result;
	}

	public int update(BoardDto BoardDto) {
		con = getConnect();
		StringBuffer query = new StringBuffer();
		query.append("UPDATE BOARDINFO SET BoardTitle = ?, ");
		query.append("BoardContents = ?");
		query.append("WHERE BoardNo = ?");

		try {
			pstmt = con.prepareStatement(query.toString());
			pstmt.setString(1, BoardDto.getBoardTitle());
			pstmt.setString(2, BoardDto.getBoardContents());
			pstmt.setInt(3, BoardDto.getBoardNo());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(con, pstmt, null);
		}
		return result;

	}
}