package com.yc.cloudmusic.filter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.yc.cloudmusic.util.StringUtil;

public class CheckLoginFilter implements Filter{
	private String errorPage="back/login.html";
	
	public void destroy() {
		
	}
	
	public void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain arg2)
			throws IOException, ServletException {
		HttpServletRequest request=(HttpServletRequest) arg0;
		HttpServletResponse response=(HttpServletResponse) arg1;
		
		HttpSession session=request.getSession();
		
		if(session.getAttribute("currentLogin")==null){
			String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";
			response.setContentType("text/html;charset=utf-8");
		
			PrintWriter out=response.getWriter();
			out.print("<script>alert('请先登录');location.href='"+basePath+errorPage+"';</script>");
			out.flush();
			out.close();
		}else{
			arg2.doFilter(arg0, arg1);
		}
	}
	
	public void init(FilterConfig arg0) throws ServletException {
		String page=arg0.getInitParameter("errorPage");
		if(!StringUtil.isNull(page)){
			errorPage=page;
		}
	}
}
