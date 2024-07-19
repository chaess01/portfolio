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
<style>
 .form-check {
        position: absolute;
        top: 10px;
        right: 10px; /* 페이지 오른쪽 상단에 위치 */
    }
</style>
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
		
		<!-- 다크모드 -->
	<div class="form-check form-switch">
		<input class="form-check-input" type="checkbox" id="mySwitch"
			name="darkmode" value="yes" /> <label class="form-check-label"
			for="mySwitch">Dark Mode</label>
	</div>

	<script>
		const darkSwitch = document.querySelector("#mySwitch");
		let isChecked = true;
		darkSwitch.onclick = function() {
			if (isChecked) {
				document.querySelector("html").setAttribute("data-bs-theme",
						"dark");
				isChecked = false;
			} else {
				document.querySelector("html")
						.setAttribute("data-bs-theme", "");
				isChecked = true;
			}
		};
	</script>
	
</body>
</html>