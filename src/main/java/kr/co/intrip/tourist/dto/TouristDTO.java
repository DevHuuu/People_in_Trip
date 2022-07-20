package kr.co.intrip.tourist.dto;

import java.sql.Date;

import kr.co.intrip.login_signup.dto.MemberDTO;
import lombok.Data;

/*TOUR_POSTNUM	NUMBER PRIMARY KEY
, ID  			VARCHAR2(20) NOT NULL
, TOUR_TITLE	VARCHAR2(100) NOT NULL
, TOUR_CONTENT	VARCHAR2(4000) NOT NULL
, TOUR_DATE 	DATE DEFAULT SYSDATE NOT NULL
, VISITCOUNT	NUMBER DEFAULT 0 NOT NULL
, COUNT_STAR	NUMBER
, COUNT_COMMENT NUMBER
, COUNT_HEART NUMBER
, OFILE			VARCHAR2(200)
, SFILE 		VARCHAR2(30)
, FOREIGN KEY(ID) REFERENCES P_MEMBER (ID)*/

@Data
public class TouristDTO {
	private String id;
	private String tour_title;
	private String tour_content;
	private String tour_date;
	private String visitcount;
	private String count_star;
	private String count_commnet;
	private String count_heart;
	private String ofile;
	private String sfile;
	
}
