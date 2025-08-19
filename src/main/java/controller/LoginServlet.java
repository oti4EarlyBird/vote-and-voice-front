package controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.HashMap;

@WebServlet("/user/login")
public class LoginServlet extends HttpServlet {

    // 임시 계정 데이터 (DB 대신)
    public static HashMap<String, String> users = new HashMap<>();
    static {
        users.put("test", "1234"); // 아이디:test, 비번:1234
    }

    // GET 요청 → 로그인 페이지 보여주기
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/login.jsp").forward(request, response);
    }

    // POST 요청 → 로그인 처리
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");

        String userid = request.getParameter("userid");
        String password = request.getParameter("password");
        System.out.println(userid);
        if (userid != null && password != null &&
            users.containsKey(userid) && users.get(userid).equals(password)) {
        	
            HttpSession session = request.getSession();
            session.setAttribute("userid", userid);
            response.sendRedirect(request.getContextPath() + "/main");

        } else {
            // 로그인 실패 → 에러 메시지 전달
            request.setAttribute("error", "아이디 또는 비밀번호가 틀렸습니다.");
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        }
    }
}

