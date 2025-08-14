package controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.*;

@WebServlet("/user/actdetail")
public class ActDetailServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // 가짜 의안 데이터
        Map<String, String> bill = new HashMap<>();
        bill.put("title", "2025년 신규 교육 정책 제안");
        bill.put("author", "김철수");
        bill.put("type", "교육");
        bill.put("content", "이번 정책은 전국 학생들의 학습 환경 개선을 목표로 하며, 구체적으로 교사 배치, 교재 개선, 온라인 학습 인프라 확충 등을 포함합니다.");

        // 가짜 댓글 데이터
        List<Map<String, String>> comments = new ArrayList<>();
        Map<String, String> comment1 = new HashMap<>();
        comment1.put("userName", "박영희");
        comment1.put("content", "정책 내용이 구체적이네요. 찬성합니다!");
        comment1.put("createdAt", "2025-08-13 14:30");
        comments.add(comment1);

        Map<String, String> comment2 = new HashMap<>();
        comment2.put("userName", "이민수");
        comment2.put("content", "효과가 있을지 조금 의문입니다.");
        comment2.put("createdAt", "2025-08-13 15:05");
        comments.add(comment2);

        request.setAttribute("bill", bill);
        request.setAttribute("comments", comments);

        request.getRequestDispatcher("/actdetail.jsp").forward(request, response);
    }
}

