package pop.bean;

import lombok.Data;

@Data
public class TripPopDTO {
	private int pop_seq;//명소고유번호
	private String pop_name;//명소이름
	private String pop_businessTime;//영업시간
	private String pop_tourismTime;//추천관광시간
	private String pop_call;//명소전화번호??
	private int nadri_seq;
}
