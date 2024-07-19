package model2.mvcboard;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/View.do")
public class ViewController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp)
        throws ServletException, IOException {
        MVCBoardDAO dao = new MVCBoardDAO();
        String idx = req.getParameter("idx");
        String boardType = req.getParameter("board_type");
        String name = (String) req.getSession().getAttribute("UserName");
        String id = (String) req.getSession().getAttribute("user_id");
        
        req.setAttribute("board_type", boardType);
        req.setAttribute("idx", idx);
        req.setAttribute("id", id);
        req.setAttribute("name", name);
        dao.updateVisitCount(idx, req, resp);
        MVCBoardDTO dto = dao.selectView(idx);
        
        dao.close();

        dto.setContent(dto.getContent().replaceAll("\r\n", "<br/>"));
        
        String ext = null, fileName = dto.getSfile(), mimeType =null;
        if(fileName!=null) {
            ext = fileName.substring(fileName.lastIndexOf(".")+1);
        }
        
        String[] extArray1 = {"png", "jpg", "gif"};
        String[] extArray2 = {"mp3", "wav"};
        String[] extArray3 = {"mp4", "avi", "wmv"};
        
        List<String> mimeList1 = Arrays.asList(extArray1);
        List<String> mimeList2 = Arrays.asList(extArray2);
        List<String> mimeList3 = Arrays.asList(extArray3);
        
        boolean isImage = false;
        if (mimeList1.contains(ext)) {
            mimeType = "img";
            isImage = true;
        }
        else if(mimeList2.contains(ext))
            mimeType = "audio";
        else if(mimeList3.contains(ext))
            mimeType = "video";
                
        req.setAttribute("dto", dto);
        req.setAttribute("mimeType", mimeType);
        req.setAttribute("isImage", isImage);
        req.getRequestDispatcher("/View.jsp").forward(req, resp);
    }
}