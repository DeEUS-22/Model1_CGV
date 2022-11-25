<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.model1_cgv.vo.CgvNoticeVO"  %>
<%@ page import="com.model1_cgv.dao.CgvNoticeDAO"  %>
<%
	String nid = request.getParameter("nid");
	CgvNoticeDAO dao = new CgvNoticeDAO();
	CgvNoticeVO vo = dao.select(nid);
	if(vo != null){
		dao.updateHits(nid);
	}
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지 - 공지사항 상세보기</title>
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
		<h1>관리자 페이지 - 공지사항 상세보기</h1>
		<table class="boardContent">	
			<tr>				
				<th>등록일자</th>
				<td><%= vo.getNdate() %></td>
				<th>조회수</th>
				<td><%= vo.getNhits() %></td>
			</tr>		
			<tr>				
				<th>제목</th>
				<td colspan="3"><%= vo.getNtitle() %></td>
			</tr>
			<tr>				
				<th>내용</th>
				<td colspan="3"><%= vo.getNcontent() %><br><br><br><br></td>
			</tr>
			<tr>
				<td colspan="4">
					<a href="admin_notice_update.jsp?nid=<%=vo.getNid()%>"><button type="button" class="btn_style">수정하기</button></a>
					<a href="admin_notice_delete.jsp?nid=<%=vo.getNid()%>"><button type="button" class="btn_style">삭제하기</button></a>
					<a href="admin_notice_list.jsp">
						<button type="button" class="btn_style">리스트</button></a>
					<a href="http://localhost:9000/model1_cgv/admin/admin.jsp"><button type="button" class="btn_style">관리자홈</button></a>
				</td>
			</tr>			
		</table>	
	</div>
	
	<!-------------------->
	<!-- footer Include -->
	<!-------------------->
	<iframe src="http://localhost:9000/model1_cgv/footer.jsp" width="100%" height="530px" scrolling="no" frameborder=0></iframe>
</body>
</html>