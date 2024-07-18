<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 첨부형 게시판</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<h2 class="alert alert-secondary" align="center">글 수정</h2>
	<form name="writeFrm" method="post" enctype="multipart/form-data" action="/edit.do" onsubmit="return validateForm(this);">
		<input type="hidden" name="idx" value="${dto.idx}">
		<input type="hidden" name="prevOfile" value="${dto.ofile}">
		<input type="hidden" name="prevSfile" value="${dto.sfile}">
    
		<table class="table" border="1" width="90%">
		    <tr>
		        <td>작성자</td>
		        <td>
		            <input type="text" name="name" style="width:150px;" value="${dto.name}">
		        </td>
		    </tr>
		    <tr>
		        <td>제목</td>
		        <td>
		            <input type="text" name="title" style="width:90%;" value="${dto.title}">
		        </td>
		    </tr>
		    <tr>
		        <td>내용</td>
		        <td>
		            <textarea name="content" style="width:90%;height:100px;">${dto.content}</textarea>
		        </td>
		    </tr>
		    <tr>
		        <td>첨부 파일</td>
		        <td>
		            <input type="file" name="ofile" />
		        </td>
		    </tr>
		    <tr>
		        <td colspan="2" align="center">
		            <button type="submit" class="btn btn-outline-success">수정</button>
		            <button type="reset" class="btn btn-outline-danger">취소</button>
		            <button type="button" class="btn btn-outline-secondary" onclick="location.href='../list.do';">목록</button>
		        </td>
		    </tr>
		</table>    
		</form>
</body>
</html>