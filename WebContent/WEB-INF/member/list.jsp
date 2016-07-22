<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../global/top.jsp" />
<jsp:include page="../global/header.jsp" />
<jsp:include page="../global/nav.jsp" />
	<style>
	table {
		font-family: arial, sans-serif;
		border-collapse: collapse;
		width: 100%;
	}
	td, th {
		border: 1px solid #dddddd;
		text-align: left;
		padding: 8px;
	}
	tr:nth-child(even) {
		background-color: #dddddd;
	}
	</style>
	<div class="box">
		목록보기 <br />
		<table>
			<tr>
				<th>ID</th>
				<th>NAME</th>
				<th>REGDATE</th>
				<th>BIRTH</th>
			</tr>
			<c:forEach items="${list}" var="member">
				<tr>
					<td><a href="${context}/member.do?action=detail&page=detail&id=${member.id}">${member.id}</a></td>
					<td>${member.name}</td>
					<td>${member.regDate}</td>
					<td>${member.birth}</td>
				</tr>
			</c:forEach>
			
		</table>
		<a href="${context}/global.do"><img src="${img}/home.png" alt="home" width="50" height="50"/></a>
		<a href="${context}/member.do?action=logout"><img src="${img}/logout.png" alt="home" width="50" height="50"/></a>
	</div>
<jsp:include page="../global/footer.jsp" />
<jsp:include page="../global/end.jsp" />