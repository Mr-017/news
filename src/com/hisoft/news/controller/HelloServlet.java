package com.hisoft.news.controller;

import com.hisoft.news.javabean.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = ("/hello"))
public class HelloServlet extends HttpServlet {
/*
    @Override
    public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
        System.out.println("service_HelloServlet---------------");
    }*/

    @Override
    public void destroy() {
        System.out.println("destroy_HelloServlet---------------");
    }

    @Override
    public void init() throws ServletException {
        System.out.println("init_HelloServlet---------------");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     /*   request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=UTF-8");*/
        String username = request.getParameter("username");
        String city = request.getParameter("city");
        String[] language = request.getParameterValues("language");
        User user = new User(username, city, language);
        request.setAttribute("user",user);
        request.getRequestDispatcher("registerInfo.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 /*       request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        System.out.println("处理请求时,doGet()方法被调用.");
        String initParam = getInitParameter( "initParam" );
        System.out.println("Servlet初始化参数" + initParam);
        System.out.println("---------------------");
        String contextParam = this.getServletContext().getInitParameter( "contextParam" );
        System.out.println("系统初始化参数" + contextParam);*/
        //out.print("系统初始化参数:" + contextParam);
        doPost(request,response);
    }

}
