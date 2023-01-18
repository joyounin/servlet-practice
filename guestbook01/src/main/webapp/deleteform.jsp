<%@page import="com.douzone.guestbook.dao.GuestbookDao"%>
<%@ page import="com.douzone.guestbook.vo.GuestbookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String no =	request.getParameter("no");
%>
<title>방명록</title>
</head>
<body>
	<form method="post" action="<%=request.getContextPath()%>/delete.jsp">
	<input type='hidden' name="no" value="<%=no%>">
	<table>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="password"></td>
			<td><input type="submit" value="삭제"></td>
		</tr>
	
	</table>
	</form>
	<br>
	<a href="<%=request.getContextPath()%>">메인으로 돌아가기</a>
</body>
</html>