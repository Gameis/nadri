package area.bean;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class TripPopMapDTO {

	private int pop_seq;
	private String map_x;
	private String map_y;
}
