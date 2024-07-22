package model2.mvcboard;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import membership.MemberDAO;
import utils.JSFunction;

@WebServlet("/find.do")
public class FindController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
	    throws ServletException, IOException {
	    
	    String mode = req.getParameter("mode");
	
	    req.setAttribute("mode", mode);
	    req.getRequestDispatcher("/IdPwFinder.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
	    throws ServletException, IOException {
	    
	    String mode = req.getParameter("mode");
	    String id = req.getParameter("id");
	    String email = req.getParameter("email");
	    
	    MemberDAO dao = new MemberDAO();
	    
	    if ("findId".equals(mode)) {
	        // 아이디를 찾는 메서드를 호출
	        String foundId = dao.findId(email);
	        req.setAttribute("foundId", foundId);
	    } else if ("findPw".equals(mode)) {
	        // 비밀번호를 찾는 메서드를 호출
	        String foundPw = dao.findPw(id, email);
	        req.setAttribute("foundPw", foundPw);
	    } else {
        	JSFunction.alertBack(resp, "아이디 혹은 비밀번호를 찾는데 실패했습니다.");
        }
	    
	    req.getRequestDispatcher("/IdPwFinder.jsp").forward(req, resp);
	}
}
