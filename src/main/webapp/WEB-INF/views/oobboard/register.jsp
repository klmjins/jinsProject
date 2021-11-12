<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@include file="../includes/header.jsp" %>
<h1 class="r-title">OOTD 등록</h1>
    <div id="write-wrap">
        <div class="category">
            <select name="" id="category-select">
                <option value="">게시판 선택</option>
                <option value="w-category">WOMEN'S</option>
                <option value="m-category">MEN'S</option>
            </select>
        </div>
        <div class="write-title"><span>제목 : </span>
            <input type="text" id="bo-title">
        </div>
        <div class="write-main">
            <div class="uploadImg">
                <div class='uploadDiv'>
                    <input class="upload-name" value="파일명" disabled="disabled">
                    <label for="ex_filename">업로드</label>
                    <input type='file' id="ex_filename" class="upload-hidden"name='uploadFile'>
                </div>
                <div class='bigPictureWrapper'>
                    <div class='bigPicture'>이미지
                    </div>
                </div>
                
            
                <!-- <div class='uploadResult'>
                    <ul>
                
                    </ul>
                </div>  -->
                <!-- <button id='uploadBtn'>Upload</button> -->
            </div>
            <div class="write-text">
                <textarea name="bo-text" placeholder="내용을 입력하세요" id="bo-text" cols="100" rows="100" maxlength="2000" style="resize: none;"></textarea>
            </div>
        </div>
        <div class="register-btn">
            <ul>
                <li><button type="submit">등록</button></li>
                <li><button type="reset">취소</button></li>
            </ul>
        </div>
        
    </div><!--#write-wrap-->
<%@include file="../includes/footer.jsp" %>