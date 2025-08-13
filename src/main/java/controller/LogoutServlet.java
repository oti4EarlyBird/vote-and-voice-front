package controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/user/logout")
public class LogoutServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 세션 무효화 (로그아웃)
        HttpSession session = request.getSession(false); // 세션 없으면 null 반환
        if (session != null) {
            session.invalidate();
        }
        // 로그아웃 후 로그인 페이지로 리다이렉트
        response.sendRedirect("/user/login");
    }
}

