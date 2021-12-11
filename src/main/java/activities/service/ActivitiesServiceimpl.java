package activities.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import activities.bean.OnActivitiesDTO;
import activities.dao.ActivitiesDAO;

@Component
public class ActivitiesServiceimpl implements ActivitiesService {
	@Autowired
	private ActivitiesDAO activitiesDAO;

	@Override
	public OnActivitiesDTO onActivities(String activity_seq) {
		return activitiesDAO.onActivities(activity_seq);
	}

}
