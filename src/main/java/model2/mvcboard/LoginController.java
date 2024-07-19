package model2.mvcboard;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import membership.MemberDAO;
import membership.MemberDTO;
import utils.JSFunction;

//@WebServlet("/login.do")
public class LoginController extends HttpServlet {
	    private static final long serialVersionUID = 1L;
	
	    protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
	        throws ServletException, IOException {
	    // 로그인 페이지를 표시합니다.
	    	
	    req.getRequestDispatcher("/login.jsp").forward(req, resp);
	}
	
	    protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
	        throws ServletException, IOException {
	    // POST 요청을 처리하는 로직을 여기에 작성합니다.
	    String userId = req.getParameter("user_id");
	    String userPwd = req.getParameter("user_pw");
	  
	    MemberDAO dao = new MemberDAO();
        MemberDTO dto = dao.getMemberDTO(userId, userPwd);
    
        if (dto != null && dto.getId() != null) {
            HttpSession session = req.getSession();
            session.setAttribute("UserId", dto.getId()); 
            session.setAttribute("UserName", dto.getName());
            session.setAttribute("user_id", userId); 
            session.setAttribute("user_pw", userPwd);
        
            String prevPage = (String) session.getAttribute("prevPage");
            if (prevPage != null) {
                // 이전 페이지로 리다이렉트
                resp.sendRedirect(prevPage);
                // 세션에서 이전 페이지 정보 제거
                session.removeAttribute("prevPage");
            } else {
                // 기본 페이지로 리다이렉트
                resp.sendRedirect("index.do");
            }
        } else {
            JSFunction.alertBack(resp, "아이디 혹은 비밀번호가 틀렸습니다.");
            return;
        }
    }
}