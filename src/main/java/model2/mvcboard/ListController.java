package model2.mvcboard;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import utils.BoardPage;

public class ListController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        
        MVCBoardDAO dao = new MVCBoardDAO();

        Map<String, Object> map = new HashMap<String, Object>();        
        
        String searchField = req.getParameter("searchField");
        String searchWord = req.getParameter("searchWord");
        if (searchWord != null) {
            map.put("searchField", searchField);
            map.put("searchWord", searchWord);
        }
        String boardType = req.getParameter("board_type");
        if (boardType != null) {
        	map.put("board_type", boardType);
        }
        
        int totalCount = dao.selectCount(map); 

        ServletContext application = getServletContext();
        int pageSize = Integer.parseInt(application.getInitParameter("POSTS_PER_PAGE"));
        int blockPage = Integer.parseInt(application.getInitParameter("PAGES_PER_BLOCK"));

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

        
        List<MVCBoardDTO> boardLists = dao.selectListPage(map);  
        dao.close();  

        String pagingImg = BoardPage.pagingStr(totalCount, pageSize,
                blockPage, pageNum, "/List.do");
        map.put("pagingImg", pagingImg);
        map.put("totalCount", totalCount);
        map.put("pageSize", pageSize);
        map.put("pageNum", pageNum);
        
        req.setAttribute("boardLists", boardLists);
        req.setAttribute("map", map);
        req.setAttribute("totalCount", totalCount);
        req.setAttribute("board_type", boardType);
        
        RequestDispatcher dispatcher;
        if ("자유게시판".equals(boardType)) {
            dispatcher = req.getRequestDispatcher("/List.jsp");
        } else if ("QA".equals(boardType)) {
            dispatcher = req.getRequestDispatcher("/QA.jsp");
        } else if ("자료실".equals(boardType)) {
            dispatcher = req.getRequestDispatcher("/PDS.jsp");
        } else {
            dispatcher = req.getRequestDispatcher("/error.jsp");
        }
        dispatcher.forward(req, resp);
    }
}