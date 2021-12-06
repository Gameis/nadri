package pop.bean;

import lombok.Data;

@Data
public class TripPopReviewDTO {
	int pop_seq;
	private String pop_review_content;
	private int pop_reivew_score;
	private String pop_review_logtime;
	private String pop_review_imageName;
	private int pop_count_totalReview;
	private int pop_count_positReview;
	private int pop_count_negetReview;
	private int pop_count_photoReview;
}
