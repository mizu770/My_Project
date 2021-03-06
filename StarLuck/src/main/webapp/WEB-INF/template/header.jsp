<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header>
	<div id="logo">		
		<a href="${ pageContext.servletContext.contextPath }/">
		<img src="http://placehold.it/150x60s" alt="Books2U" width="150" 
			height="60" /></a></div>			
	<div id="header_link">
		<ul>			
			<c:if test="${ sessionScope.isLogin }" >
			<li>			
				<span id="message">안녕하세요 ${ sessionScope.member.name }님</span>
			</li>				
			</c:if>			
			<li>	
			<!--
				이 애플리케이션은 여러 경로에서 로그인/로그아웃을 해야 하기 때문에
				ContextRoot를 기준으로 절대경로를 지정했다.	
			-->				
				<a href='${pageContext.servletContext.contextPath}/
					${ sessionScope.isLogin ? "logout" : "loginForm" }'>
					${ sessionScope.isLogin ? "로그아웃" : "로그인" }</a>
			</li>			
			<li>
				<a href="boardList">게시 글 리스트</a>
			</li>			
			<li>
				<c:if test="${ not sessionScope.isLogin }" >	
					<a href="joinForm">회원가입</a>
				</c:if>
				<c:if test="${ sessionScope.isLogin }" >
					<a href="memberUpdateForm?id=${ sessionScope.member.id }">정보수정</a>
				</c:if>
			</li>
			<li><a href="#">주문/배송조회</a></li>		
			<li class="no_line"><a href="#">고객센터</a></li>
		</ul>
	</div>
</header>