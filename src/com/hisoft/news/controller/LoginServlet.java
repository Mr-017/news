package com.hisoft.news.controller;

import com.hisoft.news.javabean.NewsUser;
import com.hisoft.news.service.NewsUserService;
import com.hisoft.news.service.impl.NewsUserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

/**
 * @Created by IntelliJ IDEA.
 * @Author: XiaoMing
 * @Date: 2021/6/22
 * @Time: 10:01
 * Come on, boy
 **/
@WebServlet(urlPatterns = ("/login"))
public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=UTF-8");
        //PrintWriter out = response.getWriter();
        Cookie[] cookies = request.getCookies();
        for (Cookie cookie : cookies) {
            if (cookie.getName().equals("login")){
                response.sendRedirect("newspages/admin.jsp");
                return;
            }
        }

        String uname = request.getParameter("uname");
        String upwd = request.getParameter("upwd");
        if (uname == null ||"".equals(uname)){
            request.setAttribute("error","用户名不能为空");
            request.getRequestDispatcher("index.jsp").forward(request,response);
        }else if(upwd == null || "".equals(upwd)){
            request.setAttribute("error","密码不能为空");
            request.getRequestDispatcher("index.jsp").forward(request,response);
        }else {
            //
//        NewsUserDao userDao = new NewsUserDaoImpl();
            NewsUserService userService = new NewsUserServiceImpl();
            NewsUser user = userService.login(uname,upwd);

            if (user == null) {
                request.setAttribute("error","用户名或密码错误，请重新登录");
                request.getRequestDispatcher("index.jsp").forward(request,response);
            }else{
               Cookie c = new Cookie("login","login");
                c.setMaxAge(5*60);
                response.addCookie(c);
                HttpSession session = request.getSession();
                session.setMaxInactiveInterval(20*60);
                session.setAttribute("user",uname);
                //out.print("<script language='javascript'>location.href='/newspages/admin.jsp'</script>");
                request.getRequestDispatcher("newspages/admin.jsp").forward(request,response);
            }

        }







 /*       resp.setContentType("text/html;charset=UTF-8");
        String name = req.getParameter("user");
        String pwd = req.getParameter("pwd");
        PrintWriter out = resp.getWriter();
        if ("admin".equals(name)&&"admin".equals(pwd)){
            out.print("<script language='javascript'>window.location.href='/succeed.jsp'</script>");
        }else{
            out.print("<script language='javascript'>\n alert('用户名或密码错误,请重新输入！');\n </script>");
            out.print("<script language='javascript'>window.location.href='/login.jsp'</script>");

        }*/
    }

}
