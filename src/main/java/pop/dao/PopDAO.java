package pop.dao;

import java.util.List;

import pop.bean.TripPopImgDTO;
import pop.bean.TripPopLocationDTO;

public interface PopDAO {

	public TripPopLocationDTO getLocation(int pop_seq);

	public List<TripPopImgDTO> getPopImg(int pop_seq);

}
