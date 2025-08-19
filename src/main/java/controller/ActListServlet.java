package controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.*;

@WebServlet("/user/actlist")
public class ActListServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static List<Map<String, String>> actList = new ArrayList<>();

    static {
        // 샘플 데이터 25개 생성 (테스트용)
        for (int i = 1; i <= 25; i++) {
            Map<String, String> act = new HashMap<>();
            act.put("num", String.valueOf(i));
            act.put("title", "의안 제목 " + i);
            act.put("billnum", "220" + (1000 + i));
            act.put("where", "소관위원회 " + i);
            act.put("result", "의결 결과 " + i);
            act.put("date", "2025-08-" + String.format("%02d", i % 30 + 1));
            actList.add(act);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int pageSize = 10; // 한 페이지당 10개
        int page = 1;      // 기본 페이지 번호
        String pageParam = request.getParameter("page");
        if (pageParam != null && pageParam.matches("\\d+")) {
            page = Integer.parseInt(pageParam);
        }

        int totalItems = actList.size();
        int totalPages = (int) Math.ceil((double) totalItems / pageSize);

        int start = (page - 1) * pageSize;
        int end = Math.min(start + pageSize, totalItems);

        List<Map<String, String>> pageList = actList.subList(start, end);

        request.setAttribute("actList", pageList);
        request.setAttribute("currentPage", page);
        request.setAttribute("totalPages", totalPages);

        request.getRequestDispatcher("/actlist.jsp").forward(request, response);
    }
}
