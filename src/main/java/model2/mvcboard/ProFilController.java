package model2.mvcboard;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/ProFil.do")
public class ProFilController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
        throws ServletException, IOException {
        // 세션에서 사용자 정보를 가져옵니다.
        HttpSession session = req.getSession();
        String userId = (String) session.getAttribute("UserId");
        String userName = (String) session.getAttribute("UserName");

        // 사용자 정보를 요청 속성에 추가합니다.
        req.setAttribute("UserId", userId);
        req.setAttribute("UserName", userName);

        // 프로필 페이지를 표시합니다.
        req.getRequestDispatcher("ProFil.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
	    throws ServletException, IOException {
	    // 세션에서 사용자 정보를 제거합니다.
	    HttpSession session = req.getSession();
	    session.removeAttribute("UserId");
	    session.removeAttribute("UserName");
	
	    // 세션을 무효화합니다.
	    session.invalidate();
	
	    // 로그인 페이지로 리다이렉트합니다.
	    resp.sendRedirect("login.do");
}
}




