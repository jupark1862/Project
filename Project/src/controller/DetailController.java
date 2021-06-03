package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.entity.Notice;

@WebServlet("/CARE/view/detail")
public class DetailController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));

	String url = "jdbc:oracle:thin:@localhost:1521/xe";
	String sql = "SELECT * FROM BBS WHERE bbsid=?";

	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection(url, "USER10", "USER10");
		PreparedStatement st = con.prepareStatement(sql);
		st.setInt(1, id);

		ResultSet rs = st.executeQuery();

		rs.next();

		String bbsTitle = rs.getString("bbstitle");
		Date bbsDate = rs.getDate("bbsdate");
		String bbsID = rs.getString("bbsid");
		String Hit = rs.getString("hit");
		String bbsContent = rs.getString("bbscontent");

		Notice notice = new Notice(
				id,
				bbsTitle,
				bbsDate,
				bbsID,
				Hit,
				bbsContent
				);
		
		request.setAttribute("n", notice);
		
//		request.setAttribute("title",title);
//		request.setAttribute("bbsDate",bbsDate);
//		request.setAttribute("bbsID",bbsID);
//		request.setAttribute("Hit",Hit);
//		request.setAttribute("bbsContent", bbsContent);

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
	//redirect
	
	
	
	//forward
	request.getRequestDispatcher("/WEB-INF/view/detail.jsp").forward(request, response);
	}
}
