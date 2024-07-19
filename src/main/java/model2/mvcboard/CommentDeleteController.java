package model2.mvcboard;

import java.io.IOException;
import java.net.URLEncoder;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import utils.JSFunction;

@WebServlet("/commentDelete.do")
public class CommentDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		
		String idx = req.getParameter("idx");
		String id = (String) req.getSession().getAttribute("user_id");
		String postnum = req.getParameter("postnum");
		String board_type = req.getParameter("board_type");
		String encodedBoardType = URLEncoder.encode(board_type, "UTF-8");

        CommentDAO commentDAO = new CommentDAO();
        int result = commentDAO.deleteComment(id, idx);

        // id가 없는 경우
        if (id == null) {
        	resp.sendRedirect("View.do?idx=" + postnum + "&board_type=" + encodedBoardType);
        }
        
        // 댓글 삭제 성공 시
        if (result == 1) {
        	resp.sendRedirect("View.do?idx=" + postnum + "&board_type=" + encodedBoardType);
        } else {
        	JSFunction.alertBack(resp, "삭제에 실패했습니다.");
        }
	}
}
