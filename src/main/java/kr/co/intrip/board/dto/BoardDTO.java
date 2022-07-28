package kr.co.intrip.board.dto;

import java.sql.Date;

import lombok.Data;

@Data
public class BoardDTO {
	
	private int POST_NUM;
	private String id;
	private int BOARD_NUM;
	private int POST_TITLE;
	private String POST_CONTENT;
	private Date POST_DATE;
	private String VISITCOUNT;
	private String COUNT_COMMENT;
	
}
