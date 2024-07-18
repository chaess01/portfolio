<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC게시판</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<h2 class="alert alert-warning" align="center"><td>번호</td><td>${dto.idx}</td></h2>
	<table class="table table-bordered" width="90%">
		<colgroup>
			<col width="15%"><col width="35%">
			<col width="15%"><col width="*">
		</colgroup>
		<tr>
			<td>번호</td><td>${dto.idx}</td>
			<td>작성자</td><td>${dto.name}</td>
		</tr>
		<tr>
			<td>작성일</td><td>${dto.postdate}</td>
			<td>조회수</td><td>${dto.visitcount}</td>
		</tr>
		<tr>
			<td>제목</td>
			<td colspan="3">${dto.title}</td>
		</tr>
		<tr>
			<td>내용</td>
			<td colspan="3" height="100">${dto.content}</td>
		</tr>		
		<tr>
			<td>첨부파일</td>
			<td>
				<c:if test="${not empty dto.ofile}">
				${dto.ofile}
				<a href="/download.do?ofile=${dto.ofile}&file=${dto.sfile}&idx=${dto.idx}">[다운로드]</a>
				</c:if>	
			</td>
		</tr>
		<tr>
			<td colspan="4" align="center">
				<button type="button" class="btn btn-outline-secondary" onclick="location.href='/pass.do?mode=edit&idx=${param.idx}'">수정</button>
				<button type="button" class="btn btn-outline-secondary" onclick="location.href='/pass.do?mode=delete&idx=${param.idx}'">삭제</button>
				<button type="button" class="btn btn-outline-secondary" onclick="location.href='/list.do'">목록</button>
			</td>
		</tr>		
		
	</table>
</body>
</html>











