package com.exam.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.exam.dao.BoardDao;
import com.exam.dto.BoardDto;

public class WriteController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/view/write.jsp");
		rd.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		HttpSession session = req.getSession();
		String sessionID = (String) session.getAttribute("sessionID");
		if (sessionID == null) {
			sessionID = "비회원";
		}

		String boardTitle = req.getParameter("boardTitle");
		String boardContents = req.getParameter("boardContents");
		int userNo = 1;

		BoardDao boardDao = BoardDao.getInstance();
		BoardDto boardDto = new BoardDto();
		boardDto.setBoardNo(boardDao.nextval() + 1);
		boardDto.setBoardTitle(boardTitle);
		boardDto.setBoardContents(boardContents);
		boardDto.setUserNo(userNo);

		int wResult = boardDao.write(boardDto);
		System.out.println(wResult);
		resp.sendRedirect("board.do");
	}

}