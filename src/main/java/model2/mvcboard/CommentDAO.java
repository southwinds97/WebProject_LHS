package model2.mvcboard;

import java.sql.PreparedStatement;
import java.util.List;
import java.util.Map;
import java.util.Vector;

import common.DBConnPool;

//커넥션풀을 통한 DB연결을 위해 클래스 상속 
public class CommentDAO extends DBConnPool {
	
	//기본생성자(정의하지 않아도 자동으로 삽입된다)
    public CommentDAO() {
        super();
    }

    // 댓글 갯수를 카운트하는 함수
    public int selectCount(Map<String, Object> map) {
        int totalCount = 0;
        String query = "SELECT COUNT(*) FROM comments WHERE 1=1";
    
        // postnum이 있으면 해당 게시물의 댓글만 카운트
        if (map.get("postnum") != null) {
            query += " AND postnum = ?";
        }
    
        try {
            PreparedStatement pstmt = con.prepareStatement(query);
            if (map.get("postnum") != null) {
                pstmt.setInt(1, Integer.parseInt((String) map.get("postnum")));
            }
            rs = pstmt.executeQuery();
            rs.next();
            totalCount = rs.getInt(1);
            
        }
        catch (Exception e) {
            System.out.println("댓글 카운트 중 예외 발생");
            e.printStackTrace();
        }
        return totalCount;
    }
    
    // 댓글 목록을 가져오는 함수
    public List<CommentDTO> selectListComment(Map<String,Object> map) {
        List<CommentDTO> comments = new Vector<CommentDTO>();
        String query = "SELECT * FROM ( "
                     + "    SELECT Tb.*, ROWNUM rNum FROM ( "
                     + "        SELECT * FROM comments WHERE 1=1 ";

        // postnum이 있으면 해당 게시물의 댓글만 가져옴
        if (map.get("postnum") != null) {
            query += " AND postnum = " + map.get("postnum");
        }
        
        query += "        ORDER BY idx DESC "
                + "    ) Tb "
                + " ) "
                + " WHERE rNum BETWEEN ? AND ?";

        try {
        	psmt = con.prepareStatement(query);
            psmt.setString(1, map.get("start").toString());
            psmt.setString(2, map.get("end").toString());
            rs = psmt.executeQuery();
            
            while (rs.next()) {
                CommentDTO dto = new CommentDTO();
                dto.setIdx(rs.getString(1));
                dto.setPostnum(rs.getString(2));
                dto.setId(rs.getString(3));
                dto.setName(rs.getString(4));
                dto.setContent(rs.getString(5));
                dto.setPostdate(rs.getDate(6));
                
                comments.add(dto);
            }
        }
        catch (Exception e) {
            System.out.println("댓글 조회 중 예외 발생");
            e.printStackTrace();
        }
		return comments;
    }

	public int insertWrite(CommentDTO dto) {
        int result = 0;
        try {
            String query = "INSERT INTO comments ( "
                         + " idx, postnum, id, name, content) "
                         + " VALUES ( "
                         + " seq_comments_idx.NEXTVAL, ?, ?, ?, ?)";
            
            psmt = con.prepareStatement(query);
            psmt.setString(1, dto.getPostnum());
            psmt.setString(2, dto.getId());
            psmt.setString(3, dto.getName());
            psmt.setString(4, dto.getContent());
            
            result = psmt.executeUpdate();
        }
        catch (Exception e) {
            System.out.println("댓글 입력 중 예외 발생");
            e.printStackTrace();

	    }
        return result;
    }
	
	//일련번호에 해당하는 댓글 1개를 삭제한다. 
    public int deleteComment(String id, String idx) {
        int result = 0;
        try {
            String query = "DELETE FROM comments WHERE id=? AND idx=?";
            psmt = con.prepareStatement(query);
            psmt.setString(1, id);
            psmt.setString(2, idx);
            result = psmt.executeUpdate();
        }
        catch (Exception e) {
            System.out.println("댓글 삭제 중 예외 발생");
            e.printStackTrace();
        }
        return result;
    }

	public int updateComment(CommentDTO dto) {
		int result = 0;
		
        try {
            String query = "UPDATE comments SET name=?, content=? WHERE idx=? and id=?";
            psmt = con.prepareStatement(query);
            psmt.setString(1, dto.getName());
            psmt.setString(2, dto.getContent());
            psmt.setString(3, dto.getIdx());
            psmt.setString(4, dto.getId());

            result = psmt.executeUpdate();
        }
        catch (Exception e) {
            System.out.println("댓글 수정 중 예외 발생");
            e.printStackTrace();
        }

		return result;
	}
}
