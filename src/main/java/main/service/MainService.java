package main.service;

import area.bean.ImgDTO;
import main.bean.TripMainDTO;

public interface MainService {

	public void mainWrite(TripMainDTO tripMainDTO);

	public void mainImgWrite(ImgDTO imgDTO);

}
