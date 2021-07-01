package com.hisoft.news.web;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter(filterName = "LoginCheckFilter", urlPatterns = "/newspages/*")
public class LoginCheckFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest request1 = (HttpServletRequest)request;
        HttpServletResponse response1 = (HttpServletResponse)response;
        HttpSession session = request1.getSession(false);
        if (session != null && session.getAttribute("user") != null){
            chain.doFilter(request,response);
        }else{
            response1.sendRedirect(request1.getContextPath()+"/index.jsp");
        }
    }

    @Override
    public void destroy() {

    }
}
