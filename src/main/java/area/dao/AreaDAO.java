package area.dao;

import java.util.List;

import area.bean.ImgDTO;
import area.bean.PopMainDTO;
import area.bean.TripPopDTO;
import area.bean.TripPopMapDTO;

public interface AreaDAO {

	public void imgWrite(ImgDTO imgDTO);

	public void popWrite(TripPopDTO tripPopDTO, TripPopMapDTO tripPopMapDTO);

	public List<PopMainDTO> printPopMain(int main_seq);

}
