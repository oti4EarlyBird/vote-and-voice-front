package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MainServlet
 */
@WebServlet("/main")
public class MainServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// main.jsp 파일의 경로를 지정합니다.
        // 프로젝트 구조 상 main.jsp는 /webapp/main.jsp에 위치합니다.
        String path = "/main.jsp";
        
        // RequestDispatcher 객체를 사용하여 요청을 JSP로 전달합니다.
        RequestDispatcher dispatcher = request.getRequestDispatcher(path);
        
        // 포워딩을 수행하여 클라이언트의 요청과 응답 객체를 JSP로 넘겨줍니다.
        dispatcher.forward(request, response);
    }
}