<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%@ include file="include/header.jspf"%>

<style>
.button {
	padding: 5px 12px;
	background-color: white;
	border-color: rgb(180, 180, 180);
	border-width: 1px;
}
</style>

<main>
		<h3 class="main title" align="center">게시글 수정</h3>
		<form action="bbsupdate.do" method="post">
		<table class="table">
			<tbody>
				<tr>
					<th>제목</th>
					<td class="text-align-left text-indent text-strong text-orange"
						colspan="2"><input style="width: 700px; height: 24px;"
						type="text" name="bbsTitle" value="${bbsupdate.bbsTitle}" /></td>
				</tr>
				<tr>
					<th>작성일</th>
					<td class="text-align-left text-indent" colspan="3">날짜</td>
				</tr>
				<tr>
					<th>작성자</th>
					<td>${bbsupdate.id}</td>
					<th>조회수</th>
					<td>${bbsupdate.bbsHit}</td>
				</tr>
				<tr class="content">
					<td colspan="4"><textarea name="bbsContent" rows="20" cols="200">${bbsupdate.bbsContent}</textarea></td>
				</tr>
			</tbody>
		</table>
		<div class="margin-top">
			<table class="table border-top-default">
					<tr>
						<th align="center"><input type="submit" value="작성"
							class="button"></th>
						<th align="center"><input type="reset" value="초기화"
							class="button"></th>
					</tr>
			</table>
		</div>
		<div style="display: none;">
			<input type="text" name="bbsId" value="${bbsupdate.bbsId}" />
		</div>
	</form>
</main>


<%@ include file="include/footer.jspf"%>