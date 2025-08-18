package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/user/comreport/*")
public class CommentReportServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//url에서 comnum 추출
		String pathInfo = request.getPathInfo();
		int comnum = Integer.parseInt(pathInfo.substring(1));
		
		//신고 사유 받기
		String reason = request.getParameter("reason");
		String userid = (String)request.getSession().getAttribute("userid");
		
		// 결과 응답
		// JSP로 결과 전달 (예: actdetail.jsp로 redirect)
        response.sendRedirect(request.getContextPath() + "/user/actdetail");
	}

}
