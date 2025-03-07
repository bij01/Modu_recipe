<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/views/common/head.jsp"%>
<!-- 공통 부분 END -->
<link href="/css/board-list.css" rel="stylesheet">
<script src="/js/board-list.js"></script>

<title>모두의 식탁 - 자유게시판 목록</title>

</head>
<body>

	<div id="page" class="hfeed site">
		<!-- start page wrapper -->
		<%@ include file="/WEB-INF/views/common/menu.jsp"%>
		<div class="head-title py-4 m-0">
			<div class="container">
				<p class="page-title m-0 fs-2">free board</p>
			</div>
			<!-- end container -->
		</div>
		<!-- end head-title -->

		<div class="main">
			<div
				class="main-container row d-flex justify-content-center m-0 py-4">
				<div class="main-size col-md-8 row justify-content-center">

					<div id="board-list" class="my-3 row px-0">
						<div class="container p-0">
							<table class="board-table text-center m-0 w-100">
								<div id="board-search"
									class="mb-3 d-flex justify-content-between align-items-center">
									<div class="selects">
										<select class="gold-border p-1 filter-period">
											<option selected="selected">전체기간</option>
											<option>1일</option>
											<option>1주</option>
											<option>1개월</option>
											<option>6개월</option>
											<option>1년</option>
										</select> <select class="gold-border p-1 filter-group">
											<option selected="selected">제목만</option>
											<option>글작성자</option>
											<option>댓글내용</option>
											<option>댓글작성자</option>
										</select>
									</div>
									<div class="d-flex justify-content-end search-box">
										<input id="search" class="border px-2" type="search"
											name="search" placeholder="검색어를 입력해주세요" value="">
										<button type="submit" class="search-btn border">검색</button>
										<select class="gold-border p-1 ms-2">
											<option selected="selected">10</option>
											<option>15</option>
											<option>20</option>
										</select>
									</div>
								</div>
								<!-- end board-search -->
								<thead>
									<tr>
										<th scope="col" class="th-1 id">순번</th>
										<th scope="col" class="th-2 title-td">제목</th>
										<th scope="col" class="th-3 nickname">작성자</th>
										<th scope="col" class="th-4 post-date">작성일</th>
										<th scope="col" class="th-5 hits">조회</th>
									</tr>
								</thead>
								<tbody class="tbody">
									<c:if test="${empty list}">
											<tr align='center' noshade colspan="5">데이터가 없습니다.</tr>
									</c:if>
									<c:forEach items="${list.list}" var="li">
										<tr class="border">
											<td class="id">${li.id}</td>
											<td class="title-td text-start"><a href="detail?id=${li.id}"> <span
													class="title">${li.title}</span> <span class="reply">[${li.reply}]</span>
											</a>
											</th>
											<td class="nickname">${li.MNickname}</td>
											<td class="post-date">${li.postDate}</td>
											<td class="hits">${li.hits}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<div class="write text-end my-3">
								<c:if test="${sessionScope.email == null}">
									<a href="javascript:alert('로그인 후 이용하실 수 있습니다.'); location.href='/member/login';" class="nav-link"					
											><button type="button" id="write-btn"
										class="gold-border gold-btn">글쓰기</button></a>
								</c:if>
								<c:if test="${sessionScope.email != null}">
									<button type="button" id="write-btn"
										class="gold-border gold-btn"
										onclick="location.href='/freeboard/write'">글쓰기</button>
								</c:if>
							</div>
							<div class="page">
								<nav aria-label="Page navigation">
									<ul class="pagination justify-content-center">
										<c:if test="${list.prev}">
											<li class="page-item"><a class="page-link page-previous"
												href="list?curPage=${list.startPage-1}">＜</a></li>
										</c:if>
										<c:if test="${list.endPage lt 6}">
												<c:forEach begin="${list.startPage}" end="${list.endPage}" var="i">
														<li class="page-item"><a
															class="page-link page-number"
															href="list?curPage=${i}">
																<c:choose>
													   			    <c:when test="${i==list.curPage}">
													                	<strong>${i}</strong>
													                </c:when>
													                <c:otherwise>
													                   	 ${i}
													                </c:otherwise>
																</c:choose></a>
														</li>
												</c:forEach>
										</c:if>
										<c:if test="${list.endPage gt 6}">
												<c:forEach begin="${list.startPage}" end="${list.endPage+1}" var="i">
														<li class="page-item"><a
															class="page-link page-number"
															href="list?curPage=${i}">
																<c:choose>
													   			    <c:when test="${i==list.curPage}">
													                	<strong>${i}</strong>
													                </c:when>
													                <c:otherwise>
													                   	 ${i}
													                </c:otherwise>
																</c:choose></a>
														</li>
												</c:forEach>
										</c:if>
										<c:if test="${list.next}">
		                           				<li class="page-item"><a class="page-link page-next"
												href="list?curPage=${list.endPage+1}">></a></li>
		                      			</c:if> 
									</ul>
								</nav>
							</div>
						</div>
					</div>
					<div></div>
					<!-- end main-size -->
				</div>
				<!-- end main-container -->
			</div>
			<!-- end main-size -->
		</div>
		<!-- end main -->
		<%@ include file="/WEB-INF/views/common/bottom.jsp"%>
	</div>
	<!-- end #page hfeed site -->
</body>
</html>