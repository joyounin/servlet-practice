<%@page import="java.util.List"%>
<%@page import="com.douzone.guestbook.vo.GuestbookVo"%>
<%@page import="com.douzone.guestbook.dao.GuestbookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	List<GuestbookVo> list = (List<GuestbookVo>)request.getAttribute("list");
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록</title>
</head>
<body>
	<form action="/guestbook02/gb" method="post">
	<input type="hidden" name="a" value="add">
	<table border=1 width=500>
		<tr>
			<td>아이디</td><td><input type="text" name="name"></td>
			<td>비밀번호</td><td><input type="password" name="password"></td>
		</tr>
		<tr>
			<td colspan=4><textarea name="message" cols=60 rows=5></textarea></td>
		</tr>
		<tr>
			<td colspan=4 align=right><input type="submit" VALUE="확인"></td>
		</tr>
	</table>
	</form>
	
	
	<% 
		int count = list.size();
		for(GuestbookVo vo : list){ 
	%>
		<br>
		<table width=510 border=1>
			<tr>
				<td>[<%=count-- %>]</td>
				<td>이름:<%=vo.getName() %></td>
				<td><%=vo.getReg_date() %></td>
				<td><a href="/guestbook02/gb?a=deleteform&no=<%=vo.getNo()%>">삭제</a></td>
			</tr>
			<tr>
				<td colspan=4><%=vo.getMessage() %></td>
			</tr>
		</table>
	<%
	}
	%>
</body>
</html>