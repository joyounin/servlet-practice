<%@page import="com.douzone.guestbook.vo.GuestbookVo"%>
<%@page import="com.douzone.guestbook.dao.GuestbookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String no =	request.getParameter("no");
	String password = request.getParameter("password");
	
	new GuestbookDao().deleteByPassword(password, no);
	
	response.sendRedirect(request.getContextPath());
%>