<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="../includes/header.jsp" %>
	<div id="board-wrap"> 
		<div id="board-main">
		
			<div class="board-list">
				<ul>
					<li>
						<a href="">
							<span class="my_like like_click"><img alt="" src=""></span>
							<img alt="" src="">
						</a>
					</li>
					
				</ul>
			</div>
			<%-- 
			<div class="board-search">
				<form action="" name="b_search_box">
					<fieldset>
						<legend>검색</legend>
						<div class="row">
							<div class="col-lg-12">
								<form id="searchForm" action="">
									<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}"><!-- 검색을 했을 때 주소창에 나오게 하는것 -->
									<input type="hidden" name="amount" value="${pageMaker.cri.amount}">  <!-- 검색을 했을 때 주소창에 나오게 하는것 -->
									<select name="type">
										<option value="" <c:out value="${pageMaker.cri.type==null?'selected':''}" /> >--</option>
										<option value="T" <c:out value="${pageMaker.cri.type=='T'?'selected':''}" /> >제목</option>
										<option value="C" <c:out value="${pageMaker.cri.type=='C'?'selected':''}" />>내용</option>
										<option value="W" <c:out value="${pageMaker.cri.type=='W'?'selected':''}" />>작성자</option>
										<option value="TC" <c:out value="${pageMaker.cri.type=='TC'?'selected':''}" />>제목+내용</option>
										<option value="TW" <c:out value="${pageMaker.cri.type=='TW'?'selected':''}" />>제목+작성자</option>
										<option value="TWC" <c:out value="${pageMaker.cri.type=='TWC'?'selected':''}" />>제목+작성자+내용</option>
									</select>
									<input type="text" class="bs_input_text" id="bs_pd_name" name="keyword" value="${pageMaker.cri.keyword}">
									<button class="btn btn-primary bs_input_btn" id="bs_sesarch_submit">검색</button>
								</form>
							</div>
						</div><!-- .row -->
					</fieldset>
				</form>
			</div><!-- .board-search -->
			<div class="board-list">
				<table>
					<tr><td>No.</td><td>제목</td><td>작성자</td><td>작성일</td></tr>
					<c:forEach var="boardlist" items="${list}">
						<tr>
							<td class="bo_num">${boardlist.bo_num}</td>
							<td class="bo_title"><a href="/hobbyboard/read?bo_num=${boardlist.bo_num}">${boardlist.bo_title}</a>(${boardlist.ctCnt})</td>
							<td class="user_id">${boardlist.user_id}</td>
							<td class="bo_date">${boardlist.bo_date}</td>
						</tr>
					</c:forEach>
				</table>
			</div><!-- .board-list -->--%>
                   
                        
			<ul class="pagination">
				<c:if test="${pageMaker.prev}">
					<li class="paginate_button page-item prev"><a href="/hobbyboard/list?pageNum=${pageMaker.startPage-1}&amount=${pageMaker.cri.amount}&type=${pageMaker.cri.type}&keyword=${pageMaker.cri.keyword}">Prev</a></li>
				</c:if>
				<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
					<li class="paginate_button page-item "><a href="/hobbyboard/list?pageNum=${num}&amount=${pageMaker.cri.amount}&type=${pageMaker.cri.type}&keyword=${pageMaker.cri.keyword}" class="page-link">${num}</a></li>
				</c:forEach>        																							<!-- 					페이지를 누르면 나오게 하는것            			 -->
				<c:if test="${pageMaker.next}">
					<li class="paginate_button page-item next"><a href="/hobbyboard/list?pageNum=${pageMaker.endPage}&amount=${pageMaker.cri.amount}&type=${pageMaker.cri.type}&keyword=${pageMaker.cri.keyword}" class="page-link">Next</a></li>
				</c:if>
			</ul>
			<div class="goto-write"><a href="/hobbyboard/register">글쓰기</a></div>
			
			
        </div><!-- #borad-main -->
    </div><!-- #board-wrap -->
</div><!-- #wrap -->
   