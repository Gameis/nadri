package pop.dao;

import java.util.List;

import pop.bean.TripPopCountDTO;
import pop.bean.TripPopImgDTO;
import pop.bean.TripPopLocationDTO;
import pop.bean.TripPopReviewContentDTO;
import pop.bean.TripPopReviewDTO;

public interface PopDAO {

	public TripPopLocationDTO getLocation(int pop_seq);

	public List<TripPopImgDTO> getPopImg(int pop_seq);

	public void popReviewImgWrite(TripPopImgDTO tripPopImgDTO);

	public void popReviewWrite(TripPopReviewDTO tripPopReviewDTO);

	public TripPopCountDTO getCountView();

	public List<TripPopReviewContentDTO> getReviewContent();

}
