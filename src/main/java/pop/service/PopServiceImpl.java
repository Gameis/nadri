package pop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pop.bean.TripPopCountDTO;
import pop.bean.TripPopImgDTO;
import pop.bean.TripPopLocationDTO;
import pop.bean.TripPopReviewContentDTO;
import pop.bean.TripPopReviewDTO;
import pop.dao.PopDAO;

@Service
public class PopServiceImpl implements PopService {
	@Autowired
	private PopDAO popDAO;
	
	@Override
	public TripPopLocationDTO getLocation(int pop_seq) {
		
		return popDAO.getLocation(pop_seq);
	}

	@Override
	public List<TripPopImgDTO> getPopImg(int pop_seq) {
		
		return popDAO.getPopImg(pop_seq);
	}

	@Override
	public void popReviewImgWrite(TripPopImgDTO tripPopImgDTO) {
		
		popDAO.popReviewImgWrite(tripPopImgDTO);
	}

	@Override
	public void popReviewWrite(TripPopReviewDTO tripPopReviewDTO) {
		popDAO.popReviewWrite(tripPopReviewDTO);
	}

	@Override
	public TripPopCountDTO getCountView() {
		return popDAO.getCountView();
	}

	@Override
	public List<TripPopReviewContentDTO> getReviewContent() {
		
		return popDAO.getReviewContent();
	}

}
