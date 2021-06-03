<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%@ include file="../include/header.jspf"%>


<h2 class="main title" align="center">게 시 판 </h2>
<div class="container">
	<div class="row">
		<table class="table table-hover"
			style="text-align: center; border: 1px solid #dddddd">
			<thead>

				<tr>
					<th style="background-color: #eeeeee; text-align: center;">번호</th>
					<th style="background-color: #eeeeee; text-align: center;">제목</th>
					<th style="background-color: #eeeeee; text-align: center;">작성자</th>
					<th style="background-color: #eeeeee; text-align: center;">작성일</th>
					<th style="background-color: #eeeeee; text-align: center;">조회수</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="n" items="${list}" begin="0" end="4">
					<tr>
						<td>${n.bbsID}</td>
						<td class="title indent text-dlign-left"><a
							href="detail?id=${n.bbsID}">${n.bbsTitle}</a></td>
						<td>${n.userID}</td>
						<td>${n.bbsDate}</td>
						<td>${n.hit}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div style="text-align:center; margin-left:100px;">
		<c:set var="page" value="${(param.p==null)?1:param.p}" />
		<c:set var="startNum" value="${page-(page-1)%5}" />
		<c:set var="lastNum" value="23" />
		<c:if test="${startNum>1}">
			<a href="?p=${startNum-5}&t&q=" class="btn btn-prev">이전</a>
		</c:if>
		<c:if test="${startNum<=1}">
			<a class="btn btn-prev" onclick="alert('이전 페이지가 없습니다.');">이전</a>
		</c:if>
		<c:forEach var="i" begin="0" end="4">
			<a style="text-align: center;" class="text orange bold"
				href="?p=${startNum+i}&t=&q=">&nbsp;${startNum+i}&nbsp;</a>
		</c:forEach>
		<c:if test="${startNum+5<lastNum}">
			<a href="?p=${startNum+5}&t=&q=" class="btn btn-next">다음</a>
		</c:if>
		<c:if test="${startNum+5>lastNum}">
			<a class="btn btn-next" onclick="alert('다음 페이지가 없습니다.'');">다음</a>
		</c:if>
		<a style="float: right;" href="write.jsp" class="btn btn-primary" style="margin-bottom: 14px;">글쓰기</a>
	</div>
</div>

<%@ include file="../include/footer.jspf"%>