<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%@ include file="include/header.jspf"%>


<main>
		<h3 class="main title" align="center">게시판</h3>
		<table class="table">
			<tbody>
				<tr>
					<th>제목</th>
					<td class="text-align-left text-indent text-strong text-orange"
						colspan="1">${v.boardTitle}</td>
				</tr>
				<tr>
					<th>작성일</th>
					<td class="text-align-left text-indent" colspan="3">${v.boardDate}</td>
				</tr>
				<tr>
					<th>작성자</th>
					<td>${v.userNo}</td>
					<th>조회수</th>
					<td>${v.hit}</td>
				</tr>
				<tr class="content">
					<td colspan="4">${v.boardContents}</td>
				</tr>
			</tbody>
		</table>

	<div class="margin-top">
		<table class="table border-top-default">
			<tbody>

				<tr>
					<td class="text-align-left text-indent"><a
						class="text-blue text-strong"
						href="boardview.do?boardNo=${v.boardNo-1}">이전글</a></td>

					<td class=" text-align-center text-indent"><a
						class="btn btn-list" href="board.do">목록</a></td>

					<td class="text-align-right text-indent"><a
						href="boardview.do?boardNo=${v.boardNo+1}">다음글</a></td>


				</tr>


			</tbody>
		</table>
	</div>
	<div style="text-align:right;">
		<c:choose>
			<c:when test="${v.userNo == sessionID || sessionID == null }">
				<td><a href="boarddelete.do?boardNo=${v.boardNo}">
						<button class="btn1">삭제</button>
				</a></td>
				<td><a href="boardupdate.do?boardNo=${v.boardNo}">
						<button class="btn1">수정</button>
				</a></td>
			</c:when>
		</c:choose>
	</div>

</main>


<%@ include file="include/footer.jspf"%>