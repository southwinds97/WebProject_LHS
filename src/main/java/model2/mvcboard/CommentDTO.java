package model2.mvcboard;

// mvcboard 테이블의 레코드를 저장하기 위한 DTO 클래스
public class CommentDTO {
    private String idx;
	private String postnum;
    private String id;
    private String name;
    private String content;
    private java.sql.Date postdate;

    public String getIdx() {
    	return idx;
    }
    public void setIdx(String idx) {
    	this.idx = idx;
    }
    public String getPostnum() {
    	return postnum;
    }
    public void setPostnum(String postnum) {
    	this.postnum = postnum;
    }
    public String getId() {
    	return id;
    }
    public void setId(String id) {
    	this.id = id;
    }
    public String getName() {
    	return name;
    }
    public void setName(String name) {
    	this.name = name;
    }
    public String getContent() {
    	return content;
    }
    public void setContent(String content) {
    	this.content = content;
    }
    public java.sql.Date getPostdate() {
    	return postdate;
    }
    public void setPostdate(java.sql.Date postdate) {
    	this.postdate = postdate;
    }
}