package kr.co.intrip.login_signup.dto;

import java.sql.Date;
import lombok.Data;


@Data
public class MemberDTO {	
	private String id;
	private String name;
	private String pwd;
	private String nick_nm;
	private String email;
	private Date join_Date;	
	private Date last_update;
	private String grade;
}
