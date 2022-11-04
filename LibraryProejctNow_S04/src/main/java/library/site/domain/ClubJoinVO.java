package library.site.domain;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class ClubJoinVO {
	private Date ca_date;
	private String cc_subject;
	private String cc_leader;
}
