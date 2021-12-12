package area.service;

import java.util.List;
import java.util.Map;

import area.bean.ImgDTO;
import area.bean.OnAreaDTO;
import area.bean.PopMainDTO;
import area.bean.TripActivityDTO;
import area.bean.TripPopDTO;
import area.bean.TripPopMapDTO;

public interface AreaService {
	public void popWrite(TripPopDTO tripPopDTO, TripPopMapDTO tripPopMapDTO);

	public void imgPopWrite(ImgDTO imgDTO);

	public List<PopMainDTO> onAreaPop(int main_seq);

	public void activityWrite(TripActivityDTO tripActivityDTO);

	public void imgActivityWrite(ImgDTO imgDTO);

	public List<PopMainDTO> onAreaActivity(int main_seq);

	public List<OnAreaDTO> onArea(String main_seq);

	public Map<String, String> search(String searchText);
}
