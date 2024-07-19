package model2.mvcboard;

import java.io.IOException;
import java.net.URLEncoder;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import utils.JSFunction;

@WebServlet("/commentWrite.do")
public class CommentWriteController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String postnum = req.getParameter("postnum");
        String id = req.getParameter("id");
        String name = req.getParameter("name");
        String board_type = req.getParameter("board_type");
        
        req.setAttribute("postnum", postnum);
        req.setAttribute("name", name);
        req.setAttribute("id", id);
        req.setAttribute("board_type", board_type);
        req.getRequestDispatcher("/CommentWrite.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		//폼값을 DTO에 저장
		CommentDTO dto = new CommentDTO();
		dto.setPostnum(req.getParameter("postnum"));
		dto.setId(req.getParameter("id"));
		dto.setName(req.getParameter("name"));
        dto.setContent(req.getParameter("content"));
        
        // user_id가 있는 경우만 글쓰기 가능
        if (dto.getId() == null) {
        	JSFunction.alertBack(resp, "로그인이 필요합니다.");
        	return;
        }
        
        CommentDAO dao = new CommentDAO();
        int result = dao.insertWrite(dto);
        dao.close();
 
        String postnum = req.getParameter("postnum"); 
        String board_type = req.getParameter("board_type");
        String encodedBoardType = URLEncoder.encode(board_type, "UTF-8");
        
        // 성공 or 실패?
        
        if (result == 1) {
            resp.sendRedirect("View.do?idx=" + postnum + "&board_type=" + encodedBoardType);
        }
        else {
        	JSFunction.alertBack(resp, "댓글 작성에 실패했습니다.");
        }
	}
}
