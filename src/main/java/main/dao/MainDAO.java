package main.dao;

import area.bean.ImgDTO;
import main.bean.TripMainDTO;

public interface MainDAO {

	public void mainWrite(TripMainDTO tripMainDTO);

	public void mainImgWrite(ImgDTO imgDTO);

}
