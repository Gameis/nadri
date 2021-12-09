package pop.bean;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.fasterxml.jackson.annotation.JsonAutoDetect;

import lombok.Data;

@Data
public class TripPopImgDTO {
	private int img_seq;
	private String img_name;
	private String img_path;
	private int content_seq;
	private int seq;
	private int main_seq;
	private String mainImg;
}
