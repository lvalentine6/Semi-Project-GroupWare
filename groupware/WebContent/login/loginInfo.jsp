<%@page import="groupware.beans.boardDto"%>
<%@page import="java.util.List"%>
<%@page import="groupware.beans.boardDao"%>
<%@page import="groupware.beans.employeesDto"%>
<%@page import="groupware.beans.employeesDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%String empNo = (String)session.getAttribute("id");
    
    employeesDao employeesdao = new employeesDao();
    employeesDto employeesdto = employeesdao.loginInfo(empNo);
   
    
// 	자신이 작성한 게시글 목록 조회
	boardDao boarddao = new boardDao();
	List<boardDto> myList = boarddao.searchByWriter(empNo, 1, 5);
    %>
    
<style>
	.my-board-list {
		margin: 0;
		padding:0;
		list-style: none;
		border:1px solid black;
	}
	.my-board-list > li{
		padding:0.5rem;
	}
	.my-board-list > li:nth-child(2n) {
		background-color:rgba(0, 0, 0, 0.1);
	}
	.my-board-list > li > a{
		text-decoration: none;
		color:black;
	}
	.my-board-list > li > a:hover{
		color:red;
	}
</style>
    
<jsp:include page="/template/header.jsp"></jsp:include>

<jsp:include page="/template/section.jsp"></jsp:include>
<div class="container-900">
<table class="table table-border table-striped">
	<tbody>
		<tr>
			<th>사원번호</th>
			<td> <%=employeesdto.getEmpNo()%></td>
		</tr>	
		<tr>
			<th>직급</th>
			<td><%=employeesdao.position(empNo)%></td>
		</tr>	
		<tr>
			<th>이름</th>
			<td><%=employeesdto.getEmpName()%></td>
		</tr>
		<tr>
			<th>입사일</th>
			<td><%=employeesdto.getJoinDate()%></td>
		</tr>
		<tr>
			<th>번호</th>
			<td><%=employeesdto.getEmpPhone()%></td>
		</tr>
		<tr>
			<th>이메일</th>
			<td><%=employeesdto.getEmail()%></td>
		</tr>
		<tr>
			<th>주소</th>
			<td><%=employeesdto.getAddress()%></td>
		</tr>	
	</tbody>
</table>
</div>

<div class="row text-left">
		<h4>내가 작성한 게시글</h4>
	</div>
	<div class="row text-left">
		<ul class="my-board-list">
			<%for(boardDto boarddto : myList){ %>
			<li>
				<a href="<%=request.getContextPath()%>/board/boardDetail.jsp?boardNo=<%=boarddto.getBoardNo()%>">
					<%=boarddto.getBoTitle()%>
				</a>
			</li>
			<%} %>
		</ul>
	</div>

<div class="container-900 text-right">
<a href = "<%=request.getContextPath()%>/login/loginInfoEdit.jsp">회원정보 수정</a><!-- 회원정보 수정 페이지로 이동 -->
</div>

<jsp:include page="/template/footer.jsp"></jsp:include>