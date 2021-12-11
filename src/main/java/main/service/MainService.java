package main.service;

import java.util.List;

import area.bean.ImgDTO;
import main.bean.TripMainDTO;

public interface MainService {

	public void mainWrite(TripMainDTO tripMainDTO);

	public void mainImgWrite(ImgDTO imgDTO);

	public List<TripMainDTO> mainImgPrint(String activity_seq);

}
