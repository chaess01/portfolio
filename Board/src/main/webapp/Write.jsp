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
<style>
 .form-check {
        position: absolute;
        top: 10px;
        right: 10px; /* 페이지 오른쪽 상단에 위치 */
    }
</style>
<script type="text/javascript" >
	function validateForm(form){
		if(form.name.value==""){
			alert("작성자를 입력하세요");
			form.name.focus();
			return false;
		}
		if(form.title.value==""){
			alert("제목을 입력하세요");
			form.title.focus();
			return false;
		}
		if(form.content.value==""){
			alert("내용을 입력하세요");
			form.content.focus();
			return false;
		}
		if(form.pass.value==""){
			alert("비밀번호를 입력하세요");
			form.pass.focus();
			return false;
		}
		//파일 크기제크
		var inputFile = document.getElementById("file");
		var files = inputFile.files;
		if(files[0].size>5*1024*1024){
			alert("파일크기는 5Mbyte를 초과할 수 없습니다.");
			return false;
		}
	}
</script>
</head>
<body>
	<h2 class="alert alert-primary" align="center">글쓰기</h2>
	<form name="writeFrm" method="post" action="/write.do" enctype="multipart/form-data" onsubmit="return validateForm(this);">
		<table  class="table table-bordered" width="90%">
			<tr>
				<td>작성자</td>
				<td>
					<input type="text" name="name" style="width:150px;">
				</td>
			</tr>
			<tr>
				<td>제목</td>
				<td>
					<input type="text" name="title" style="width:90%;">
				</td>
			</tr>
			<tr>
				<td>내용</td>
				<td>
					<textarea type="text" name="content" rows="20" style="width:90%;"></textarea>
				</td>
			</tr>
			<tr>
				<td>첨부파일</td>
				<td>
					<input type="file" class="btn btn-outline-secondary" name="ofile" id="file" multiple>
				</td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td>
					<input type="password" name="pass" style="width:100px;">
				</td>
			</tr>
			<tr>
			
				<td colspan="2" align="center">
					<button type="submit" class="btn btn-outline-secondary">등록</button>
					<button type="reset" class="btn btn-outline-secondary" onclick="location.href='/list.do'">취소</button>
					<button type="button" class="btn btn-outline-secondary" onclick="location.href='/list.do'">목록</button>
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
