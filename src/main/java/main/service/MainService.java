package main.service;

import java.util.List;

import area.bean.ImgDTO;
import main.bean.TripMainDTO;
import main.bean.TripMainImgDTO;

public interface MainService {

	public void mainWrite(TripMainDTO tripMainDTO);

	public void mainImgWrite(ImgDTO imgDTO);
	
	public List<TripMainImgDTO> mainImgPrint();

}
