package area.bean;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
@Scope("prototype")
public class ImgDTO {
	private int img_seq;
	private String img_name;
	private String img_path;
	private int nadri_seq;
}
