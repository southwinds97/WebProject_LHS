package model2.mvcboard;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import membership.MemberDAO;
import utils.JSFunction;

@WebServlet("/chkId.do")
public class ChkIdController extends HttpServlet {
	
	@Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
            throws ServletException, IOException {
        String userId = req.getParameter("user_id");

        MemberDAO dao = new MemberDAO();
        boolean isDuplicate = dao.idCheck(userId);

        resp.setContentType("application/json");
        PrintWriter out = resp.getWriter();

        // 아이디가 6~12자의 영문소문자와 숫자로만 입력되었는지 확인
        if (!userId.matches("^[a-z0-9]{6,12}$")) {
            out.print("{\"success\": false, \"message\": \"아이디는 6~12자의 영문소문자와 숫자로만 입력해주세요.\"}");
        } else if (isDuplicate) {
            // ID가 중복되면 경고창을 표시하고 회원가입 페이지로 돌아갑니다.
            out.print("{\"success\": false, \"message\": \"이미 사용 중인 ID입니다.\"}");
        } else {
            out.print("{\"success\": true, \"message\": \"사용 가능한 ID입니다.\"}");
        }
        out.flush();
    }
}
