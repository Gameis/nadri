package area.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/area")
public class AreaController {

	@RequestMapping(value = "/popWriteForm", method = RequestMethod.GET)
	public String writeForm() {
		return "/repository/jsp/area/popWriteForm";
	}
}
