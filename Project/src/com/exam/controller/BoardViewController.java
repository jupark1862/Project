package com.exam.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.exam.dao.BoardDao;
import com.exam.dto.BoardDto;

public class BoardViewController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		process(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		process(req, resp);
	}

	private void process(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String boardNo = req.getParameter("boardNo");
		BoardDao boardDao = BoardDao.getInstance();
		BoardDto boardDto = new BoardDto();
		boardDao.hitUpdate(boardNo);
		boardDto = boardDao.selectById(boardNo);
		
		req.setAttribute("v", boardDto);
		
		RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/view/boardview.jsp");
		rd.forward(req, resp);
	}
	
}