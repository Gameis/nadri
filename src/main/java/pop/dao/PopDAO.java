package pop.dao;

import java.util.List;

import pop.bean.TripPopCountDTO;
import pop.bean.TripPopImgDTO;
import pop.bean.TripPopLocationDTO;
import pop.bean.TripPopReviewContentDTO;
import pop.bean.TripPopReviewDTO;
import pop.bean.TripPopReviewImgDTO;
import pop.bean.TripPopReviewSearchDTO;

public interface PopDAO {

	public TripPopLocationDTO getLocation(int pop_seq);

	public List<TripPopImgDTO> getPopImg(int pop_seq);

	public void popReviewImgWrite(TripPopImgDTO tripPopImgDTO);

	public void popReviewWrite(TripPopReviewDTO tripPopReviewDTO);

	public TripPopCountDTO getCountView();

	public int getReviewContentCnt(TripPopReviewSearchDTO tripPopReviewSearchDTO);
	
	public List<TripPopReviewContentDTO> getReviewContent(TripPopReviewSearchDTO tripPopReviewSearchDTO);

	public Object getReviewContentPhotoCnt(TripPopReviewSearchDTO tripPopReviewSearchDTO);

	public Object getReviewContentPhoto(TripPopReviewSearchDTO tripPopReviewSearchDTO);

	public Object getReviewContentPhotoList(TripPopReviewSearchDTO tripPopReviewSearchDTO);

}
