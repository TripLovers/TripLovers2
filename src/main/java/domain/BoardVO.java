package domain;

import java.sql.Timestamp;

public class BoardVO {
	private int num;
	private String writer;
	private String title;
	private String pass;
	private Timestamp regdate;
	private String simpleTime;
	private String content;
	private String ip;
	private int cnt;
	
	
	
	public String getSimpleTime() {
		return simpleTime;
	}
	public void setSimpleTime(String simpleTime) {
		this.simpleTime = simpleTime;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public Timestamp getRegdate() {
		return regdate;
	}
	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	@Override
	public String toString() {
		return "BoardVO [num=" + num + ", writer=" + writer + ", title=" + title + ", pass=" + pass + ", regdate="
				+ regdate + ", content=" + content + ", ip=" + ip + ", cnt=" + cnt + "]";
	}
	
	
	
	
}
