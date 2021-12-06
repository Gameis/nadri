package tripmoment.bean;

import java.util.Date;

import javax.validation.constraints.NotNull;

import lombok.Data;

@Data
@NotNull
public class TripmomentImgDTO {
	private int moment_seq;
	private String image1;
	private String image2;
	private String moment_title;
	private String moment_content;
	private String pop_name;
	private Date moment_logdate;
}