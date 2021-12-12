package area.dao;

import java.util.List;
import java.util.Map;

import area.bean.ImgDTO;
import area.bean.OnAreaDTO;
import area.bean.PopMainDTO;
import area.bean.TripActivityDTO;
import area.bean.TripPopDTO;
import area.bean.TripPopMapDTO;

public interface AreaDAO {

	public void imgPopWrite(ImgDTO imgDTO);

	public void popWrite(TripPopDTO tripPopDTO, TripPopMapDTO tripPopMapDTO);

	public List<PopMainDTO> printPopMain(int main_seq);

	public void activityWrite(TripActivityDTO tripActivityDTO);

	public void imgActivityWrite(ImgDTO imgDTO);

	public List<PopMainDTO> printActivityMain(int main_seq);

	public List<OnAreaDTO> onArea(String main_seq);

	public Map<String, String> search(String searchText);

}
