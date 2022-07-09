package kr.co.intrip.login_signup.dto;

import java.sql.Date;

import lombok.Data;

@Data
public class LoginDTO {
	
	private String id;
	private String nick_nm;
	private String email;
	private Date join_Date;	
}
