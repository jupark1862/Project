<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%@ include file="include/header.jspf"%>


<main>
	<form action="modify.do" method="post">
		<input type="hidden" name="bld" value="${content_view.boardNo}">
		<h3 class="main title" align="center">게시판</h3>
		<table class="table">
			<tbody>
				<tr>
					<th>제목</th>
					<td class="text-align-left text-indent text-strong text-orange"
						colspan="1">${bbsview.bbsTitle}</td>
				</tr>
				<tr>
					<th>작성일</th>
					<td class="text-align-left text-indent" colspan="3">${bbsview.bbsDate}</td>
				</tr>
				<tr>
					<th>작성자</th>
					<td>${bbsview.id}</td>
					<th>조회수</th>
					<td>${bbsview.bbsHit}</td>
				</tr>
				<tr class="content">
					<td colspan="4">${bbsview.bbsContent}</td>
				</tr>
			</tbody>
		</table>
	</form>


	<div class="margin-top">
		<table class="table border-top-default">
			<tbody>

				<tr>
					<td class="text-align-left text-indent"><a
						class="text-blue text-strong"
						href="bbsview.do?bbsId=${bbsview.bbsId-1}">이전글</a></td>

					<td class=" text-align-center text-indent"><a
						class="btn btn-list" href="bbs.do">목록</a></td>

					<td class="text-align-right text-indent"><a
						href="bbsview.do?bbsId=${bbsview.bbsId+1}">다음글</a></td>


				</tr>


			</tbody>
		</table>
	</div>
	<div style="text-align:right;">
		<c:choose>
			<c:when test="${bbsview.id == sessionID || sessionID == null }">
				<td><a href="bbsdelete.do?bbsId=${bbsview.bbsId}">
						<button class="btn1">삭제</button>
				</a></td>
				<td><a href="bbsupdate.do?bbsId=${bbsview.bbsId}">
						<button class="btn1">수정</button>
				</a></td>
			</c:when>
		</c:choose>
	</div>

</main>


<%@ include file="include/footer.jspf"%>