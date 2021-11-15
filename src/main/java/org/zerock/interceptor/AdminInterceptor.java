package org.zerock.interceptor;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.zerock.domain.UserDTO;

public class AdminInterceptor implements HandlerInterceptor{
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		
		HttpSession session = request.getSession();
		UserDTO lvo = (UserDTO)session.getAttribute("user");
		
		if(lvo==null||lvo.getAdminCk()==0) {	// 관리자 계정이 아닌 경우
			response.sendRedirect("/oobboard/board");	// 메인페이지로 리다이렉트
			return false;
		}
		
		return true;	//관리자 로그인 시 
	}
}
