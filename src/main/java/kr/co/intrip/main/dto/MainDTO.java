package kr.co.intrip.main.dto;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component("mainDTO")
public class MainDTO {

	private int post_num;
	private String id;
	private int board_num;
	private String post_title;
	private String post_content;
	private Date post_date;
	private String visitcount;
	private String count_comment;
	
	public MainDTO() {
		// TODO Auto-generated constructor stub
	}
	
	public MainDTO(String post_title, String visitcount) {
		this.post_title = post_title;
		this.visitcount = visitcount;
	}

	public int getPost_num() {
		return post_num;
	}

	public void setPost_num(int post_num) {
		this.post_num = post_num;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getBoard_num() {
		return board_num;
	}

	public void setBoard_num(int board_num) {
		this.board_num = board_num;
	}

	public String getPost_title() {
		return post_title;
	}

	public void setPost_title(String post_title) {
		this.post_title = post_title;
	}

	public String getPost_content() {
		return post_content;
	}

	public void setPost_content(String post_content) {
		this.post_content = post_content;
	}

	public Date getPost_date() {
		return post_date;
	}

	public void setPost_date(Date post_date) {
		this.post_date = post_date;
	}

	public String getVisitcount() {
		return visitcount;
	}

	public void setVisitcount(String visitcount) {
		this.visitcount = visitcount;
	}

	public String getCount_comment() {
		return count_comment;
	}

	public void setCount_comment(String count_comment) {
		this.count_comment = count_comment;
	}
	
}
