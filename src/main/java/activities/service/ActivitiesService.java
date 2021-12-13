package activities.service;

import activities.bean.OnActivitiesDTO;
import activities.bean.TripActReviewCntDTO;
import activities.bean.TripActReviewDTO;

public interface ActivitiesService {
	public OnActivitiesDTO onActivities(String activity_seq);

	public TripActReviewDTO actReviewWrite(TripActReviewDTO tripActReviewDTO);

	public TripActReviewCntDTO getActReviewCnt();

	public Object getActReviewUserInfo(String member_seq);

}
