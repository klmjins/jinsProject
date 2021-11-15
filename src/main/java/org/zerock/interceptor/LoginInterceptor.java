package org.zerock.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
										// LoginInterceptor클래스를 Interceptor로 사용하기 위해
public class LoginInterceptor implements HandlerInterceptor{
	@Override		//Controller에 진입하기 전에 작업을 하기 위해
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object Handler) {
		//System.out.println("loginInterceptor prehandle 작동");
		
		HttpSession session = request.getSession();
		session.invalidate();
		
		return true;
	}
}
