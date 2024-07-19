package model2.mvcboard;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import utils.BoardPage;

@WebServlet("/commentList.do")
public class CommentListController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		
		CommentDAO dao = new CommentDAO();

        Map<String, Object> map = new HashMap<String, Object>();

        String postnum = req.getParameter("postnum");
        
        // postnum 파라미터가 있는 경우
        if (postnum != null) {
        	map.put("postnum", postnum);
        }
        
		
        int totalCount = dao.selectCount(map);
        
        ServletContext application = getServletContext();
        int pageSize = Integer.parseInt(application.getInitParameter("CMT_PER_PAGE"));
        int blockPage = Integer.parseInt(application.getInitParameter("CMT_PER_BLOCK"));

        int totalPage = (int) Math.ceil((double) totalCount / pageSize);
        map.put("totalPage", totalPage);
        int pageNum = 1; 
        String pageTemp = req.getParameter("pageNum");
        if (pageTemp != null && !pageTemp.equals(""))
            pageNum = Integer.parseInt(pageTemp); 

        int start = (pageNum - 1) * pageSize + 1;  
        int end = pageNum * pageSize; 
        map.put("start", start);
        map.put("end", end);
        
        List<CommentDTO> commentLists = dao.selectListComment(map);
        dao.close();
        
        String pagingImg = BoardPage.pagingStr(totalCount, pageSize,
                blockPage, pageNum, "/commentList.do");
        map.put("pagingImg", pagingImg);
        map.put("totalCount", totalCount);
        map.put("pageSize", pageSize);
        map.put("pageNum", pageNum);
        
        String board_type = req.getParameter("board_type");
        
        req.setAttribute("commentLists", commentLists);
        req.setAttribute("map", map);
        req.setAttribute("totalCount", totalCount);
        req.setAttribute("postnum", postnum);
        req.setAttribute("board_type", board_type);
        req.getRequestDispatcher("/CommentList.jsp").forward(req, resp);
	}
}
