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

<script type="text/javascript">
    function validateForm(form) {
        if (form.pass.value == "") {
            alert("비밀번호를 입력하세요.");
            form.pass.focus();
            return false;
        }
    }
</script>
</head>
<body>    
	<h2 style="margin:50px" >비밀번호 검증</h2>
	<form name="writeFrm" method="post" action="/pass.do" onsubmit="return validateForm(this);">
	<input type="hidden" name="idx" value="${param.idx}">
	<input type="hidden" name="mode" value="${param.mode}">
	<table class="table" border="1" width="90%" align="right">
	    <tr>
	       <td  >비밀번호</td>
	       <td>
	       		<input type="password" name="pass" style="width:500px;">
	       </td>
	    </tr>
	    <tr>
	        <td colspan="2" align="center">
	        	<button class="btn btn-outline-success">확인</button>
	            <button type="reset" class="btn btn-outline-danger" onclick="location.href='/list.do';">취소</button>
	            <button type="button" class="btn btn-outline-secondary" onclick="location.href='/list.do';">목록</button>
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