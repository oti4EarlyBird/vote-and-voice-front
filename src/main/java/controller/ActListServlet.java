package controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.*;

@WebServlet("/user/actlist")
public class ActListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    // 임시 데이터 (DB 대신)
    private static List<Map<String, String>> actList = new ArrayList<>();

    static {
        Map<String, String> act1 = new HashMap<>();
        act1.put("num", "1");
        act1.put("title", "환경 보호법 개정안");
        act1.put("billnum", "2204732");
        act1.put("where", "법사위원회");
        act1.put("result", "대안반영폐기");
        act1.put("date", "2025-07-03");

        Map<String, String> act2 = new HashMap<>();
        act2.put("num", "2");
        act2.put("title", "교통 안전 강화안");
        act1.put("billnum", "2206839");
        act2.put("where", "과학기술정보방송통신위원회");
        act2.put("result", "대안반영폐기");
        act1.put("date", "2025-08-05");
        
        actList.add(act1);
        actList.add(act2);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("actList", actList);
        request.getRequestDispatcher("/actlist.jsp").forward(request, response);
    }
}

