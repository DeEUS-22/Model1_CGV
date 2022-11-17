<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.model1_cgv.vo.CgvBoardVO" %>
<%@ page import = "com.model1_cgv.dao.CgvBoardDAO" %>
<jsp:useBean id="vo" class="com.model1_cgv.vo.CgvBoardVO"/>
<jsp:setProperty name="vo" property="*" />

<%
	CgvBoardDAO dao = new CgvBoardDAO();
	int result = dao.insert(vo);
	if(result == 1){
		response.sendRedirect("board_list.jsp");
	}else{
		response.sendRedirect("../errorPage.jsp");
	}
%>