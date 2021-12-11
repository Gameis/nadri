package activities.dao;

import java.util.List;

import activities.bean.OnActivitiesDTO;

public interface ActivitiesDAO {

	List<OnActivitiesDTO> onActivities(String activity_seq);

}
