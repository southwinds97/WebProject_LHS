package model2.mvcboard;

import java.io.IOException;
import java.net.URLEncoder;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import utils.JSFunction;

@WebServlet("/commentEdit.do")
public class CommentEditController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String idx = req.getParameter("idx");
		String postnum = req.getParameter("postnum");
		String board_type = req.getParameter("board_type");
        String id = req.getParameter("id");
        String name = req.getParameter("name");
        String content = req.getParameter("content");
        
        System.out.println(postnum + board_type);
        
        req.setAttribute("idx", idx);
        req.setAttribute("postnum", postnum);
        req.setAttribute("name", name);
        req.setAttribute("id", id);
        req.setAttribute("content", content);
        req.setAttribute("board_type", board_type);
        req.getRequestDispatcher("/CommentEdit.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
        
        CommentDTO dto = new CommentDTO();
        
        String idx = req.getParameter("idx");
        String id = req.getParameter("id");
        String name = req.getParameter("name");
        String content = req.getParameter("content");
        
        
        dto.setIdx(idx);
		dto.setId(id);
		dto.setName(name);
        dto.setContent(content);

        CommentDAO dao = new CommentDAO();
        int result = dao.updateComment(dto);
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
