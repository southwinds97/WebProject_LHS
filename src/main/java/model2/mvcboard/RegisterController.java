package model2.mvcboard;

import java.io.IOException;

import fileupload.FileUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import membership.MemberDAO;
import membership.MemberDTO;
import utils.JSFunction;

public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
	        throws ServletException, IOException {
	    // 회원가입 페이지를 표시합니다.
	    req.getRequestDispatcher("Register.jsp").forward(req, resp);
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
        boolean isDuplicate = dao.idCheck(userId);
        
        //아이디가 6~12자의 영문소문자와 숫자로만 입력되었는지 확인
        if (!userId.matches("^[a-z0-9]{6,12}$")) {
            JSFunction.alertBack(resp, "아이디는 6~12자의 영문소문자와 숫자로만 입력해주세요.");
            return;
        } else if (isDuplicate) {
            // ID가 중복되면 경고창을 표시하고 회원가입 페이지로 돌아갑니다.
            JSFunction.alertBack(resp, "이미 사용 중인 ID입니다.");
            return;
        } else if (!isDuplicate) {
            JSFunction.alertBack(resp, "사용 가능한 ID입니다.");
            return;
        } 
        
	    // DTO 객체를 생성하고 값을 설정합니다.
	    MemberDTO dto = new MemberDTO();
	    dto.setId(userId);
	    dto.setPass(password);
	    dto.setPasschk(passwordConfirm);
	    dto.setName(name);
	    dto.setEmail(email);
	    dto.setPhonenum(phoneNumber);
        dto.setRegidate(new java.text.SimpleDateFormat("yy/MM/dd").format(new java.util.Date()));

        // 회원가입 정보를 테이블에 insert합니다.
        int affected = dao.insertMember(dto);
        

        
	    // 회원가입이 완료되면 로그인 페이지로 리다이렉트하고 문제가 있으면 경고창을 표시합니다.
        if (affected == 1) {
        	JSFunction.alertLocation(resp, "회원가입이 완료되었습니다.", "login.do");
        } else {
            JSFunction.alertBack(resp, "회원가입에 실패했습니다.");
            // 회원가입에 실패하면 작성중인 페이지로 이동합니다.
            req.getRequestDispatcher("Register.jsp").forward(req, resp);
        }
	}
	
	
}
