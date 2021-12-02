package pop.service;

import java.util.List;

import pop.bean.TripPopImgDTO;
import pop.bean.TripPopLocationDTO;

public interface PopService {

	public TripPopLocationDTO getLocation(int pop_seq);

	public List<TripPopImgDTO> getPopImg(int pop_seq);

}
