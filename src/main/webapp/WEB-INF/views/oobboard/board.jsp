<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@include file="../includes/header.jsp" %>
	<div id="container"> 
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
                                        <option value="" value="${pageMaker.cri.type==null?'selected':''}" > ----------</option>
                                        <option value="T" value="${pageMaker.cri.type=='T'?'selected':''}" > 제목</option>
                                        <option value="C" value="${pageMaker.cri.type=='C'?'selected':''}" >내용</option>
                                        <option value="W" value="${pageMaker.cri.type=='W'?'selected':''}" >작성자</option>
                                        <option value="TC" value="${pageMaker.cri.type=='TC'?'selected':''}" >제목+내용</option>
                                        <option value="TW" value="${pageMaker.cri.type=='TW'?'selected':''}" >제목+작성자</option>
                                        <option value="TWC" value="${pageMaker.cri.type=='TWC'?'selected':''}" >제목+작성자+내용</option>
                                    </select>
                                    <input type="text" class="bs_input_text" id="bs_pd_name" name="keyword" value="${pageMaker.cri.keyword}">
                                    <button class="btn btn-primary bs_input_btn" id="bs_sesarch_submit">검색</button>
                                </form>
                            </div>
                        </div><!-- .row -->
                    </fieldset>
                </form>
            </div><!-- .board-search -->
            <div class="goto-register"><a href="./register"><span class="r-img">register이미지</span><span class="r-text">OOTD 올리기</span></a></div>
            <div class="board-list">
                <ul>
                    <li>
                        <div>
                            <p class="like">
                                <span class="my_like"></span>
                                <span class=".like_click"></span>
                                <span class="likeCnt">0</span>
                            </p>
                        </div>
                        <span class="like_click"></span>
                        <a href=""> 
                            <img alt="" src="../resources/img/ootd1.jpg">
                            <p class="bo_title">asdaasdfadfasdfasdfadfadsfadsadfadsffdfafdsf</p>
                            <span class="ctCnt">( 0 )</span>
                        </a>
                    </li>
                    
                </ul>
            </div>
	</div><!-- #container -->
<%@include file="../includes/footer.jsp" %>