package model2.mvcboard;

import java.io.IOException;
import java.net.URLEncoder;

import fileupload.FileUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import utils.JSFunction;

public class WriteController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/* 글쓰기 페이지로 진입할때는 다른 로직없이 포워드만 진행한다. */
	@Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        
        // 글쓰기 페이지 이동전 로그인 확인
        if (req.getSession().getAttribute("user_id") == null) {
            // 로그인이 되어있지 않다면 로그인 페이지로 이동
            // 원래 요청했던 URL을 세션에 저장
            req.getSession().setAttribute("prevPage", req.getRequestURI());
            resp.sendRedirect("login.do");
            return;
        }

        // 사용자 이름을 세션에서 가져와서 요청 속성에 추가
        String name = (String) req.getSession().getAttribute("UserName");
        String id = (String) req.getSession().getAttribute("user_id");
        // board_type 파라미터를 요청 속성에 추가
        String boardType = req.getParameter("board_type");
        
        req.setAttribute("name", name);
        req.setAttribute("id", id);
        req.setAttribute("board_type", boardType);
        req.getRequestDispatcher("/Write.jsp").forward(req, resp);
    }

	//글쓰기는 post방식의 전송이므로 doPost()에서 요청을 처리한다. 
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        // 1. 파일 업로드 처리 =============================
        // 업로드 디렉터리의 물리적 경로 확인
        String saveDirectory = req.getServletContext().getRealPath("/Uploads");
                
        // 파일 업로드
        String originalFileName = "";
        try {
        	//업로드가 정상적으로 완료되면 원본 파일명을 반환한다. 
        	originalFileName = FileUtil.uploadFile(req, saveDirectory);
        }
        catch (Exception e) {
        	/* 파일업로드 시 오류가 발생되면 경고창을 띄운후 작성페이지로 
        	이동한다. 예외 발생의 이유를 확인하기 위해 printStackTrace()메서드를 
        	사용하는것이 좋다. */
        	e.printStackTrace();
        	JSFunction.alertLocation(resp, "파일 업로드 오류입니다.",
                    "Write.do");
        	return;
		}

        // 2. 파일 업로드 외 처리 =============================
        // 첨부파일 이외의 폼값을 DTO에 저장
        MVCBoardDTO dto = new MVCBoardDTO(); 
        dto.setName(req.getParameter("name"));
        dto.setTitle(req.getParameter("title"));
        dto.setContent(req.getParameter("content"));
        dto.setId(req.getParameter("id"));
        dto.setBoard_type(req.getParameter("board_type"));
        
        // 첨부파일이 정상적으로 등록되어 원본파일명이 반환되었다면
        if (originalFileName != "") { 
        	// 파일명을 "날짜_시간.확장자"형식으로 변경한다. 
        	String savedFileName = FileUtil.renameFile(saveDirectory, originalFileName);
        	
        	//원본과 변경된 파일명을 DTO에 저장한다.
            dto.setOfile(originalFileName);  // 원래 파일 이름
            dto.setSfile(savedFileName);  // 서버에 저장된 파일 이름
        }
        // user_id가 있는 경우만 글쓰기 가능
        if (dto.getId() == null) {
        	JSFunction.alertBack(resp, "로그인이 필요합니다.");
        	return;
        }
        // board_type = "자료실"인 경우 user_id가 admin인 경우에만 글쓰기 가능
        if ("자료실".equals(dto.getBoard_type()) && !"admin".equals(dto.getId())) {
        	JSFunction.alertBack(resp, "권한이 없습니다.");
        	return;
        }
        
        // DAO를 통해 DB에 게시 내용 저장
        MVCBoardDAO dao = new MVCBoardDAO();
        int result = dao.insertWrite(dto);
        dao.close();

        String boardType = req.getParameter("board_type");
        String encodedBoardType = URLEncoder.encode(boardType, "UTF-8");

        // 성공 or 실패?
        if (result == 1) {  
        	// 글쓰기 성공시 목록 페이지로 이동
            resp.sendRedirect("List.do?board_type=" + encodedBoardType);
        }
        else {  
        	// 글쓰기 실패시 쓰기 페이지로 이동 
        	 JSFunction.alertLocation(resp, "글쓰기에 실패했습니다.",
                    "Write.do?board_type=" + encodedBoardType);
        }
    }
}

