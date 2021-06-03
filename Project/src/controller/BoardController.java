package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.entity.Notice;


@WebServlet("/CARE/view/board")
public class BoardController extends HttpServlet{
@Override
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	List<Notice> list = new ArrayList<>();
	
	String url = "jdbc:oracle:thin:@localhost:1521/xe";
String sql = "SELECT * FROM BBS";
try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection(url, "USER10", "USER10");
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery(sql);

	while(rs.next()){
		
	int id = rs.getInt("id");
	String bbsTitle = rs.getString("bbstitle");
	Date bbsDate = rs.getDate("bbsdate");
	String userID = rs.getString("userid");
	String Hit = rs.getString("hit");
	String bbsContent = rs.getString("bbscontent");

	Notice notice = new Notice(
			id,
			bbsTitle,
			bbsDate,
			userID,
			Hit,
			bbsContent
			);
	list.add(notice);
	}

		rs.close();
		st.close();
		con.close();
} catch (ClassNotFoundException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
request.setAttribute("list",list);

request.getRequestDispatcher("/CARE/view/board.jsp").forward(request, response);
}
}
