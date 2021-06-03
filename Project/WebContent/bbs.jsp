<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="guestbook.service.Message"%>
<%@ page import="guestbook.service.MessageListView"%>
<%@ page import="guestbook.service.GetMessageListService"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="include/header.jspf"%>



<div class="container">
<div class ="row">
<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
<thead>
<tr>
<th style = "background-color: #eeeeee; text-align: center;">번호</th>
<th style = "background-color: #eeeeee; text-align: center;">제목</th>
<th style = "background-color: #eeeeee; text-align: center;">작성자</th>
<th style = "background-color: #eeeeee; text-align: center;">작성일</th>
</tr>
</thead>
<tbody>
<tr>
<td>1</td>
<td>너무 어려워요 ㅠ</td>
<td>박주형</td>
<td>2017-05-04</td>
</tr>
</tbody>
</table>
<div class="pull-right>">
<a href="write.jsp" class="btn btn-primary float-right">글쓰기</a>
</div>
</div>
</div>





			<%@ include file="include/footer.jspf"%>