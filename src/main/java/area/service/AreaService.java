package area.service;

<<<<<<< HEAD
=======
import java.util.List;

>>>>>>> 2504f6c86868ff1a4df0c57beb2167582e7dc8ae
import area.bean.ImgDTO;
import area.bean.PopMainDTO;
import area.bean.TripPopDTO;
import area.bean.TripPopMapDTO;

public interface AreaService {
	public void popWrite(TripPopDTO tripPopDTO, TripPopMapDTO tripPopMapDTO);

	public void imgWrite(ImgDTO imgDTO);

	public List<PopMainDTO> onArea();
}
