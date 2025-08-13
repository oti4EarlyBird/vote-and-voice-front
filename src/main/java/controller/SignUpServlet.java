package controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.HashMap;

@WebServlet("/user/signup")
public class SignUpServlet extends HttpServlet {

    // 임시 계정 저장 (DB 대신)
    private static HashMap<String, String> users = LoginServlet.users;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // GET 요청 → 회원가입 페이지 보여주기
        request.getRequestDispatcher("/signup.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");

        String userid = request.getParameter("userid");
        String password = request.getParameter("password");
        String confirm = request.getParameter("confirm");

        // 간단한 검증
        if (userid == null || userid.isEmpty() || password == null || password.isEmpty()) {
            request.setAttribute("error", "아이디와 비밀번호를 모두 입력해주세요.");
            request.getRequestDispatcher("/signup.jsp").forward(request, response);
            return;
        }

        if (!password.equals(confirm)) {
            request.setAttribute("error", "비밀번호와 확인이 일치하지 않습니다.");
            request.getRequestDispatcher("/signup.jsp").forward(request, response);
            return;
        }

        if (users.containsKey(userid)) {
            request.setAttribute("error", "이미 존재하는 아이디입니다.");
            request.getRequestDispatcher("/signup.jsp").forward(request, response);
            return;
        }

        // 회원가입 성공 → 임시 HashMap에 저장
        users.put(userid, password);
        response.sendRedirect(request.getContextPath() + "/user/login");
    }
}
