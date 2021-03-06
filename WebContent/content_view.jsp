<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="./css/content_view.css" />
<title>내용(Content) 확인</title>

<style type="text/css">

.btnGoModify{
	height:40px;
	width:100px;
	font-size:20px;
	font-weight: bold;
}


</style>

<script type="text/javascript">
function fnDeleteAction(bId) {
	if(confirm("정말 삭제하시겠습니까?")) {
		location.href="delete.do?bId="+bId;
	} else {
		return;
	}
}
</script>
</head>
<body>

	<table class="contentTB" width = "700" cellpadding = "0" cellspacing = "0" border = "1">
		<form action = "modify.do" method = "post">
			<input type = "hidden" name = "bId" value = "${content_view.bId}">
			<tr>
				<th> 번호 </th>
				<td> ${content_view.bId} </td>
			</tr>
			<tr>
				<th> 히트 </th>
				<td> ${content_view.bHit} </td>
			</tr>
			<tr>
				<th> 이름 </th>
				<td> <input type="text" name="bName" value="${content_view.bName}" size="80" style="height:25px;"> </td>
			</tr>
			<tr>
				<th> 제목 </th>
				<td> <input type="text" name="bTitle" value="${content_view.bTitle}" size="80" style="height:25px;"> </td>
			</tr>
			<tr>
				<th> 내용 </th>
				<td> <textarea rows="10" name="bContent" size="80" style="height:200px; width:600px"> ${content_view.bContent}</textarea></td>
			</tr>
			<tr>
				<td colspan="2">
				<button type="submit" class="btnGoModify">수정</button>&nbsp;&nbsp; 
				<a href="list.do">목록보기</a>&nbsp;&nbsp;
				<a href="#" onclick="javascript:fnDeleteAction('${content_view.bId}')">삭제</a>&nbsp;&nbsp;
				<a href="/reply_view.do?bId=${content_view.bId}">답변</a>
				</td>
			</tr>
		</form>
	</table>

</body>
</html>