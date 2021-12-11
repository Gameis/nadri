package main.dao;

import java.util.List;

import area.bean.ImgDTO;
import main.bean.TripMainDTO;

public interface MainDAO {

	public void mainWrite(TripMainDTO tripMainDTO);

	public void mainImgWrite(ImgDTO imgDTO);
	
	public List<TripMainDTO> mainImgPrint(int main_seq);

}
