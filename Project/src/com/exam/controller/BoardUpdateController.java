package com.exam.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.exam.dao.BoardDao;
import com.exam.dto.BoardDto;

public class BoardUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String boardNo = req.getParameter("boardNo");
		BoardDao boardDao = BoardDao.getInstance();
		BoardDto boardDto = new BoardDto();
		boardDto = boardDao.selectById(boardNo);
		
		req.setAttribute("boardupdate", boardDto);
		RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/view/boardupdate.jsp");
		rd.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		String boardNo = req.getParameter("boardNo");
		String boardTitle = req.getParameter("boardTitle");
		String boardContents = req.getParameter("boardContents");
		
		BoardDao boardDao = BoardDao.getInstance();
		BoardDto boardDto = new BoardDto();
		boardDto.setBoardNo(Integer.parseInt(boardNo));
		boardDto.setBoardTitle(boardTitle);
		boardDto.setBoardContents(boardContents);
		
		boardDao.update(boardDto);
		resp.sendRedirect("board.do");
	}
	
}