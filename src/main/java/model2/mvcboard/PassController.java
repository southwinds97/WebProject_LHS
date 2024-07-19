
package model2.mvcboard;

import java.io.IOException;
import java.net.URLEncoder;

import fileupload.FileUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import utils.JSFunction;

@WebServlet("/pass.do")
public class PassController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
        throws ServletException, IOException {
        String idx = req.getParameter("idx");
        String mode = req.getParameter("mode");
        String boardType = req.getParameter("board_type");
        String encodedBoardType = "";
        if (boardType != null) {
            encodedBoardType = URLEncoder.encode(boardType, "UTF-8");
        }

        MVCBoardDAO dao = new MVCBoardDAO();
        MVCBoardDTO dto = dao.selectView(idx);

        HttpSession session = req.getSession();
        String id = (String) session.getAttribute("UserId");
        String loggedUser = (String) session.getAttribute("UserName"); // 로그인한 사용자

        if (dto.getName().equals(loggedUser)) { // 작성자와 로그인한 사용자가 일치하는 경우
        	if (mode.equals("edit")) {
        	    dao.close();
        	    if (!encodedBoardType.isEmpty()) {
        	        resp.sendRedirect("edit.do?idx=" + idx + "&board_type=" + encodedBoardType);
        	    } else {
        	        resp.sendRedirect("edit.do?idx=" + idx);
        	    }
        	}
            else if (mode.equals("delete")) {
                int result = dao.deletePost(id, idx);
                //게시물 삭제 성공 시 첨부파일도 삭제
                if (result == 1) {  
                    //서버에 실제 저장된 파일명으로 삭제한다. 
                    String saveFileName = dto.getSfile();
                    FileUtil.deleteFile(req, "/Uploads", saveFileName);
                }
                dao.close();
                resp.sendRedirect("List.do?board_type=" + encodedBoardType); // 삭제 후 List.do로 리디렉션
            }
        }
        else {
            dao.close();
            JSFunction.alertBack(resp, "권한이 없습니다.");
        }
    }
}
