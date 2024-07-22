package model2.mvcboard;

public class LikeDTO {
	private String idx;
	private String postnum;
	private String id;
	private java.sql.Date likedate;
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
	public java.sql.Date getLikedate() {
		return likedate;
	}
	public void setLikedate(java.sql.Date likedate) {
		this.likedate = likedate;
	}
}
