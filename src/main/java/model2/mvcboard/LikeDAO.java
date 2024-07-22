package model2.mvcboard;

import common.DBConnPool;

public class LikeDAO extends DBConnPool {
	
	// 좋아요 갯수를 카운트하는 메서드
    public int selectCount(String postnum) {
        int totalCount = 0;
        String query = "SELECT COUNT(*) FROM likes WHERE postnum = ?";

        try {
            psmt = con.prepareStatement(query);
            psmt.setString(1, postnum);
            rs = psmt.executeQuery();
            rs.next();
            totalCount = rs.getInt(1);
        }
        catch (Exception e) {
            System.out.println("좋아요 카운트 중 예외 발생");
            e.printStackTrace();
        }

        return totalCount;
    }

    // 좋아요를 누른 사용자인지 판별하는 메서드
    public boolean isLike(String postnum, String id) {
        boolean isLike = false;
        String query = "SELECT COUNT(*) FROM likes WHERE postnum = ? AND id = ?";

        try {
            psmt = con.prepareStatement(query);
            psmt.setString(1, postnum);
            psmt.setString(2, id);
            rs = psmt.executeQuery();
            rs.next();
            if (rs.getInt(1) == 1) {
                isLike = true;
            }
        }
        catch (Exception e) {
            System.out.println("좋아요 판별 중 예외 발생");
            e.printStackTrace();
        }
        
        return isLike;
    }

    // 좋아요를 추가하는 메서드
    public int insertLike(String postnum, String id) {
        int result = 0;

        try {
        	String query = "INSERT INTO likes ( "
                    + " idx, postnum, id) "
                    + " VALUES ( "
                    + " seq_likes_idx.NEXTVAL, ?, ?)";
            psmt = con.prepareStatement(query);
            psmt.setString(1, postnum);
            psmt.setString(2, id);
            result = psmt.executeUpdate();
        }
        catch (Exception e) {
            System.out.println("좋아요 추가 중 예외 발생");
            e.printStackTrace();
        }

        return result;
    }

    // 좋아요를 취소하는 메서드
    public int deleteLike(String postnum, String id) {
        int result = 0;

        try {
        	String query = "DELETE FROM likes WHERE postnum = ? AND id = ?";
            psmt = con.prepareStatement(query);
            psmt.setString(1, postnum);
            psmt.setString(2, id);
            result = psmt.executeUpdate();
        }
        catch (Exception e) {
            System.out.println("좋아요 취소 중 예외 발생");
            e.printStackTrace();
        }

        return result;
    }
}
