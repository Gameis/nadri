package tripmember.bean;

import java.util.Date;

import lombok.Data;

@Data
public class TripmemberDTO {

	private String name;
	private String id;
	private String nickName;
	private String pwd;
	private String tel1;
	private String tel2;
	private String tel3;
	private String email1;
	private String email2;
	private String zipcode;
	private String address;
	private String addressDetail;
	private String profileImg;

	private Date logtime;
}
