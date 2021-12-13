package activities.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import activities.bean.OnActivitiesDTO;
import activities.bean.TripActReviewCntDTO;
import activities.bean.TripActReviewDTO;
import activities.dao.ActivitiesDAO;

@Component
public class ActivitiesServiceimpl implements ActivitiesService {
	@Autowired
	private ActivitiesDAO activitiesDAO;

	@Override
	public OnActivitiesDTO onActivities(String activity_seq) {
		return activitiesDAO.onActivities(activity_seq);
	}

	@Override
	public TripActReviewDTO actReviewWrite(TripActReviewDTO tripActReviewDTO) {
		return activitiesDAO.actReviewWrite(tripActReviewDTO);
	}

	@Override
	public TripActReviewCntDTO getActReviewCnt() {
		return activitiesDAO.getActReviewCnt();
	}

	@Override
	public Object getActReviewUserInfo(String member_seq) {
		return activitiesDAO.getActReviewUserInfo(member_seq);
	}

}
