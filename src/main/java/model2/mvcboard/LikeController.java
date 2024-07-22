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

@WebServlet("/like.do")
public class LikeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		HttpSession session = req.getSession();
        String id = (String) session.getAttribute("UserId");
        String postnum = req.getParameter("postnum");
        String board_type = req.getParameter("board_type");
        
        LikeDAO dao = new LikeDAO();
        
        try {
            int totalCount = dao.selectCount(postnum);
            boolean isLike = dao.isLike(postnum, id);

            req.setAttribute("totalCount", totalCount);
            req.setAttribute("isLike", isLike);
            req.setAttribute("postnum", postnum);
            req.setAttribute("id", id);
            req.setAttribute("board_type", board_type);
            req.getRequestDispatcher("/Like.jsp").forward(req, resp);
        }
        catch (Exception e) {
            e.printStackTrace();
        }
        
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		
        String id = req.getParameter("id");
        String postnum = req.getParameter("postnum");

        LikeDAO dao = new LikeDAO();
        int result = 0;
        
        if (dao.isLike(postnum, id)) {
            result = dao.deleteLike(postnum, id);
        }
        else {
            result = dao.insertLike(postnum, id);
        }
        dao.close();

        String board_type = req.getParameter("board_type");
        String encodedBoardType = URLEncoder.encode(board_type, "UTF-8");
        // 성공 or 실패
        if (result == 1) {
            resp.sendRedirect("View.do?idx=" + postnum + "&board_type=" + encodedBoardType);
        }
        else {
            JSFunction.alertBack(resp, "좋아요 처리 중 오류가 발생했습니다.");
        }
	}
}
