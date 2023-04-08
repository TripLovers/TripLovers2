package domain;

import java.sql.Timestamp;
import java.util.Date;

public class BoardCommentVO {
	int seq;
	int num;
	String comment_id;
	String comment_pass;
	String comment_content;
	Timestamp time;
	String simpleTime;
	
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getComment_id() {
		return comment_id;
	}
	public void setComment_id(String comment_id) {
		this.comment_id = comment_id;
	}
	public String getComment_pass() {
		return comment_pass;
	}
	public void setComment_pass(String comment_pass) {
		this.comment_pass = comment_pass;
	}
	public String getComment_content() {
		return comment_content;
	}
	public void setComment_content(String comment_content) {
		this.comment_content = comment_content;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Timestamp time) {
		this.time = time;
	}
	public String getSimpleTime() {
		return simpleTime;
	}
	public void setSimpleTime(String simpleTime) {
		this.simpleTime = simpleTime;
	}
	

	
	

}
