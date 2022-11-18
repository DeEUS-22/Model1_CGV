<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.model1_cgv.vo.CgvNoticeVO" %>
<%@ page import = "com.model1_cgv.dao.CgvNoticeDAO" %>
<%@ page import = "java.util.ArrayList" %>
<%
	CgvNoticeDAO dao = new CgvNoticeDAO();
	ArrayList<CgvNoticeVO> list = dao.select();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지관리 - 공지사항 리스트</title>
<link rel="stylesheet"  href="http://localhost:9000/model1_cgv/css/cgv.css">
</head>
<body>
	<!-------------------->
	<!-- header Include -->
	<!-------------------->
	<iframe src="http://localhost:9000/model1_cgv/header.jsp" width="100%" height="160px" scrolling="no" frameborder=0 ></iframe>
	
	<!-------------------->
	<!----- content ------>
	<!-------------------->
	<div class="content">
		<h1>공지사항-리스트</h1>
		<table class="board">
			<tr>
				<td colspan="4">
					<a href="admin_notice_write.jsp">
					<button type="button" class="btn_style">글쓰기</button>
					</a>
				</td>
			</tr>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>등록날짜</th>
				<th>조회수</th>
			</tr>
			<% for(CgvNoticeVO vo : list){ %>
			<tr>
				<td><%= vo.getRno() %></td>
				<td><a href="admin_notice_content.jsp?nid=<%=vo.getNid()%>"><%= vo.getNtitle() %></a></td>
				<td><%= vo.getNdate() %></td>
				<td><%= vo.getNhits() %></td>
			</tr>
			<% } %>
			<tr>
				<td colspan="4"><div id="ampaginationsm"></div></td>
			</tr>
		</table>	
	</div>
	
	<!-------------------->
	<!-- footer Include -->
	<!-------------------->
	<iframe src="http://localhost:9000/model1_cgv/footer.jsp" width="100%" height="530px" scrolling="no" frameborder=0></iframe>
</body>
</html>