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

@WebServlet("/ProFilEdit.do")
public class ProFilEditController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
	        throws ServletException, IOException {
		// 세션을 가져옵니다.
	    HttpSession session = req.getSession();
	    // 세션에서 user_id와 user_pw를 읽어옵니다.
	    String id = (String) session.getAttribute("user_id");
	    String pass = (String) session.getAttribute("user_pw");
		//DAO객체를 생성한 후 기존 게시물의 내용을 가져온다. 
        MemberDAO dao = new MemberDAO();
        MemberDTO dto = dao.getMemberDTO(id, pass);
        //DTO객체를 request영역에 저장한 후 포워드한다.
        req.setAttribute("dto", dto);
	    // 정보수정 페이지를 표시합니다.
	    req.getRequestDispatcher("ProFilEdit.jsp").forward(req, resp);
	    System.out.println(id + pass);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
	    throws ServletException, IOException {
	    // 요청 파라미터를 읽습니다.
	    String userId = req.getParameter("user_id");
	    String password = req.getParameter("user_pw");
	    String passwordConfirm = req.getParameter("password_confirm");
	    String name = req.getParameter("name");
	    String email = req.getParameter("email");
	    String phoneNumber = req.getParameter("phone_number");
        
        MemberDAO dao = new MemberDAO();
        
	    // DTO 객체를 생성하고 값을 설정합니다.
	    MemberDTO dto = new MemberDTO();
	    dto.setId(userId);
	    dto.setPass(password);
	    dto.setPasschk(passwordConfirm);
	    dto.setName(name);
	    dto.setEmail(email);
	    dto.setPhonenum(phoneNumber);
        dto.setRegidate(new java.text.SimpleDateFormat("yy/MM/dd").format(new java.util.Date()));

        // 정보수정 정보를 테이블에 update합니다.
        int affected = dao.updateMember(dto);
        
	    // 정보수정이 완료되면 프로필페이지로 리다이렉트하고 문제가 있으면 경고창을 표시합니다.
        if (affected == 1) {
        	JSFunction.alertLocation(resp, "정보수정이 완료되었습니다.", "ProFil.do");
        } else {
            JSFunction.alertBack(resp, "정보수정에 실패했습니다.");
            // 회원가입에 실패하면 작성중인 페이지로 이동합니다.
            req.getRequestDispatcher("ProFilEdit.jsp").forward(req, resp);
        }
	}
	
	
}
