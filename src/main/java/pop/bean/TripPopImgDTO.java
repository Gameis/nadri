package pop.bean;

import com.fasterxml.jackson.annotation.JsonAutoDetect;

import lombok.Data;

@Data
public class TripPopImgDTO {
	private int img_seq;
	private String img_name;
	private String img_path;
}
