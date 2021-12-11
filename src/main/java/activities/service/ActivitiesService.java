package activities.service;

import java.util.List;

import activities.bean.OnActivitiesDTO;

public interface ActivitiesService {
	public List<OnActivitiesDTO> onActivities(String activity_seq);

}
