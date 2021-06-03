<%@page import="controller.entity.Notice"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%@ include file="../include/header.jspf"%>


<h3 class="main title" align="center">게시판</h3>
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

				<%
					List<Notice> list = (List<Notice>) request.getAttribute("list");
				for (Notice n : list) {
					pageContext.setAttribute("n", n);
				%>

				<tr>
					<td>${n.bbsID}</td>
					<td class="title indent text-dlign-left"><a href="detail?id=${bbsID}">${n.bbsTitle}</a></td>
					<td>${n.userID}</td>
					<td>${n.bbsDate}</td>
					<td>${n.hit}</td>
				</tr>
				<%
					}
				%>
			</tbody>
		</table>
		<div class="col text-right">
			<a href="write.jsp" class="btn btn-primary" style="margin-bottom: 14px;">글쓰기</a>
			</div>
	</div>
</div>

<%@ include file="../include/footer.jspf"%>