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
	a{
	text-decoration:none; /* 링크 밑줄 없애기 */
	}
	 .pagination a {
            color: black; /* 글자 색상 검정색으로 */
        }

 .form-check {
        position: absolute;
        top: 10px;
        right: 10px; /* 페이지 오른쪽 상단에 위치 */
    }
        
</style>
</head>
<body>
	<div class="container">
		<h2 class="alert alert-success" align="center" style="margin: 50px">목록</h2>
		<!-- 검색 폼 -->
		<form method="get">
			<table  width="100%">
			<tr>
				<td align="center">
				<div class="input-group mb-3" style="width:50%;">
					<select name="searchField" class="form-control" style="width:50px;">
						<option value="title"> 제목</option>
						<option value="content"> 내용</option>
					</select>
					<input type="text" name="searchWord" class="form-control">
					<input class="btn btn-outline-success btn-sm" type="submit" value="검색">
				</div>
				</td>
			</tr>
			</table>
		</form>
	</div>
		<!-- 검색폼.end -->
		
		 <table class="table table-hover"  width="90%">
		 <tr align="center">
		 	<th width="10%">번호</th>
		 	<th width="*">제목</th>
		 	<th width="15%">작성자</th>
		 	<th width="10%">조회수</th>
		 	<th width="15%">작성일</th>
		 	<th width="8%">첨부</th>
		 </tr>
		 <c:choose>
			 <c:when test="${empty boardLists}">
			 <tr>
			 	<td colspan="6" align="center">
			 		등록된 게시물이 없습니다.
			 	</td>
			 </tr>
			 </c:when>
			 <c:otherwise>
				 <c:forEach items="${boardLists}" var="row" varStatus="loop">
				 <tr align="center">
				 	<td>${row.idx}</td>
				 	<td>
				 	<a href="/view.do?idx=${row.idx}" class="table table-hover">${row.title}</a>
				 	</td>
				 	<td>${row.name}</td>
				 	<td>${row.visitcount}</td>
				 	<td>${row.postdate}</td>
				 	<td>
				 	<c:if test="${not empty row.ofile}">
				 		<a href="/download.do?ofile=${row.ofile}&sfile=${row.sfile}" class="table table-hover">[Down]</a>
				 	</c:if>
				 	[Down]</td>
				 	
				 </tr>
				 </c:forEach>
			 </c:otherwise>
		 </c:choose>
		 
		 </table>
		 
		 <!-- 페이지 번호. 글쓰기------------------------------- -->
		 <div class="pagination justify-content-center">
		 <table class="page-item" width="100%">
		 	<tr align="center">
		 	
		 		<td class="page-link" href="#" >
		 			${map.pagingImg}
		 		</td>
		 		<td width="100">
		 			<button type="button" class="btn btn-outline-success btn-sm" onclick="location.href='write.do'">글쓰기</button>
		 	</tr>
		 </table>
	</div>

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

















