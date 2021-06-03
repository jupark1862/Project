<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%@ include file="../../CARE/include/header.jspf"%>


<main>
	<h3 class="main title" align="center">게시판</h3>
	<table class="table">
		<tbody>
			<tr>
				<th>제목</th>
				<td class="text-align-left text-indent text-strong text-orange"
					colspan="1">${n.bbsTitle}</td>
			</tr>
			<tr>
				<th>작성일</th>
				<td class="text-align-left text-indent" colspan="3" ${n.bbsDate}>
				</td>
			</tr>
			<tr>
				<th>작성자</th>
				<td>${n.bbsID}</td>
				<th>조회수</th>
				<td>${n.hit}</td>
			</tr>
			<tr class="content">
				<td colspan="4">${n.bbsContent}</td>
			</tr>
		</tbody>
	</table>


	<div class="margin-top">
		<table class="table border-top-default">
			<tbody>

				<tr>
					<td class="text-align-left text-indent"><a
						class="text-blue text-strong" href="detail?id=${n.bbsID-1}">이전글</a></td>

					<td class=" text-align-center text-indent"><a
						class="btn btn-list" href="board">목록</a></td>

					<td class="text-align-right text-indent"><a
						href="detail?id=${n.bbsID+1}">다음글</a></td>


				</tr>


			</tbody>
		</table>
	</div>

</main>


<%@ include file="../../CARE/include/footer.jspf"%>