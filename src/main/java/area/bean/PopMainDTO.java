package area.bean;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Scope("prototype")
@Data
public class PopMainDTO {
	private int pop_seq;
	private String pop_name;
	private String img_name;
	private String img_path;
}
