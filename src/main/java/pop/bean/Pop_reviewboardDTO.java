package pop.bean;

import lombok.Data;

@Data
public class Pop_reviewboardDTO {
	private int pop_seq;
	private String member_name;
	private String pop_review_content;
	private String pop_review_imageName;
	private int pop_reivew_score;
	private String pop_review_logtime;
}
