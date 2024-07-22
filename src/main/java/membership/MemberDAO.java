package membership;

import java.sql.SQLException;

import common.DBConnPool;

public class MemberDAO extends DBConnPool {
	
	public MemberDTO getMemberDTO(String uid, String upass)  {
	    MemberDTO dto = new MemberDTO();
	    String query = "SELECT * FROM member WHERE id=? AND pass=?"; 

	    try {
			psmt = con.prepareStatement(query);
			psmt.setString(1, uid);     
			psmt.setString(2, upass);  
			rs = psmt.executeQuery();  
			if (rs.next()) {
				dto.setId(rs.getString("id"));
				dto.setPass(rs.getString("pass"));
				dto.setName(rs.getString(3));
				dto.setRegidate(rs.getString(4));
				dto.setEmail(rs.getString(5));
				dto.setPhonenum(rs.getString(6));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return dto;

	}
    
    // 아이디 중복 검사
    public boolean idCheck(String id) {
        boolean isDuplicate = false;
        try {
            String query = "SELECT COUNT(*) FROM member WHERE id=?";
            psmt = con.prepareStatement(query);
            psmt.setString(1, id);
            rs = psmt.executeQuery();
            rs.next();
            if (rs.getInt(1) == 1) {
                isDuplicate = true;
            }
        }
        catch (Exception e) {
            e.printStackTrace();
        }
        return isDuplicate;
    }

    // 회원가입 페이지에서 전송한 폼값을 테이블에 insert한다.
    public int insertMember(MemberDTO dto) {
        int affected = 0;
        try {
            String query = "INSERT INTO member ( "
                        +   "id, pass, name, email, phonenum, regidate) "
                        +   "VALUES (?, ?, ?, ?, ?, ?)";
            psmt = con.prepareStatement(query);
            psmt.setString(1, dto.getId());
            psmt.setString(2, dto.getPass());
            psmt.setString(3, dto.getName());
            psmt.setString(4, dto.getEmail());
            psmt.setString(5, dto.getPhonenum());
            psmt.setString(6, dto.getRegidate());
            affected = psmt.executeUpdate();
        }
        catch (Exception e) {
            e.printStackTrace();
        }
        return affected;
    }

    // 회원정보 수정 페이지에서 전송한 폼값을 테이블에 update한다.
    public int updateMember(MemberDTO dto) {
        int affected = 0;
        try {
            String query = "UPDATE member SET "
                        +   "pass=?, name=?, email=?, phonenum=? "
                        +   "WHERE id=?";
            psmt = con.prepareStatement(query);
            psmt.setString(1, dto.getPass());
            psmt.setString(2, dto.getName());
            psmt.setString(3, dto.getEmail());
            psmt.setString(4, dto.getPhonenum());
            psmt.setString(5, dto.getId());
            affected = psmt.executeUpdate();
        }
        catch (Exception e) {
            e.printStackTrace();
        }
        return affected;
    }

    // id를 찾는 메소드
    public String findId(String email) {
        String id = null;
        try {
            String query = "SELECT id FROM member WHERE email=?";
            psmt = con.prepareStatement(query);
            psmt.setString(1, email);
            rs = psmt.executeQuery();
            if (rs.next()) {
                id = rs.getString("id");
            }
        }
        catch (Exception e) {
            e.printStackTrace();
        }
        return id;
    }

    // 비밀번호를 찾는 메소드
    public String findPw(String id, String email) {
        String pw = null;
        try {
            String query = "SELECT pass FROM member WHERE id=? AND email=?";
            psmt = con.prepareStatement(query);
            psmt.setString(1, id);
            psmt.setString(2, email);
            rs = psmt.executeQuery();
            if (rs.next()) {
                pw = rs.getString("pass");
            }
        }
        catch (Exception e) {
            e.printStackTrace();
        }
        return pw;
    }
}