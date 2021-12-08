package pop.bean;

import java.util.List;

import lombok.Data;

@Data
public class TripPopReviewContentDTO {
	private int pop_review_seq;
	private String user_name;
	private int review_score;
	private String review_content;
	private String review_logtime;
	private List<TripPopReviewImgDTO> imgList;
}
