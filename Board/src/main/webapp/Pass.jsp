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
</body>
</html>