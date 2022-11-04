package library.site.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
@Entity
@Table(name="CLUBMAIN")
public class ClubMain {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	long cm_seq;
	@Column
	String cm_img;
	@Column
	String cm_subject;
	@Column
	String cm_detail;
}
