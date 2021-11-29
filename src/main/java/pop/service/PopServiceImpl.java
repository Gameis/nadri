package pop.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pop.bean.TripPopLocationDTO;
import pop.dao.PopDAO;

@Service
public class PopServiceImpl implements PopService {
	@Autowired
	private PopDAO popDAO;
	
	@Override
	public TripPopLocationDTO getLocation(int pop_seq) {
		
		return popDAO.getLocation(pop_seq);
	}

}
