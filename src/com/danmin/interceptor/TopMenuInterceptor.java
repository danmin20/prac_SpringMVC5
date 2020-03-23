package com.danmin.interceptor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;

import com.danmin.beans.BoardInfoBean;
import com.danmin.service.TopMenuService;

public class TopMenuInterceptor implements HandlerInterceptor {

	private TopMenuService topMenuService;

	// Interceptor에서는 Bean을 자동주입 받지 못하므로 생성자로 넘겨야 함
	public TopMenuInterceptor(TopMenuService topMenuService) {
		this.topMenuService = topMenuService;
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		List<BoardInfoBean> topMenuList = topMenuService.getTopMenuList();
		request.setAttribute("topMenuList", topMenuList);

		return true;
	}
}
