package activities.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import activities.bean.OnActivitiesDTO;
import activities.service.ActivitiesService;

@Controller
@RequestMapping(value = "/activities")
public class ActivitiesController {
	@Autowired
	private ActivitiesService activitiesService;

	@RequestMapping(value = "/onActivities", method = RequestMethod.GET)
	@ResponseBody
	public OnActivitiesDTO onActivities(@RequestParam("activity_seq") String activity_seq) {
		System.out.println("컨트롤러 실행");
		System.out.println("activity_seq = " + activity_seq);
		return activitiesService.onActivities(activity_seq);
	}
}
