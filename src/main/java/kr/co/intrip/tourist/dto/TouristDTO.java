package kr.co.intrip.tourist.dto;

import java.sql.Date;

import kr.co.intrip.login_signup.dto.MemberDTO;
import lombok.Data;

/*
		TOUR_POSTNUM	NUMBER PRIMARY KEY
		, TOUR_TITLE	VARCHAR2(100) DEFAULT '제목' NOT NULL
		, TOUR_ADDR		VARCHAR2(500) DEFAULT '주소' NOT NULL
		, TOUR_CONTENT	VARCHAR2(4000) DEFAULT '내용' NOT NULL
		, TOUR_DATE 	DATE DEFAULT SYSDATE NOT NULL
		, VISITCOUNT	NUMBER DEFAULT 0 NOT NULL
		, COUNT_STAR	NUMBER DEFAULT 0 NOT NULL
		, COUNT_COMMENT NUMBER DEFAULT 0 NOT NULL
		, COUNT_HEART NUMBER DEFAULT 0 NOT NULL
		, OFILE			VARCHAR2(200)
		, SFILE 		VARCHAR2(30)
*/

@Data
public class TouristDTO {
	private int tour_postnum;
	private String tour_title;
	private String tour_addr;
	private String tour_content;
	private String tour_date;
	private String visitcount;
	private String count_recommend;
	private String count_comment;
	private String count_heart;
	private String ofile;
	private String sfile;
}
