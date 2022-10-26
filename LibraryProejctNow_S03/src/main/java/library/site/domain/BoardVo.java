package library.site.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class BoardVo {
	private int cp=1; //��������ȣ
	private int ps=5; //������������
	public int getStartRow() {
		return (cp-1)*ps; 
	}
	public int getEndRow() {
		return cp*ps;
	}
	public BoardVo(int cp,int ps) {
		this.cp=cp;
		this.ps=10;
	}
	//for Search
	String catgo;
	String keyword;
	public String getCatgo() {
		return catgo;
	}
	public String getKeyword() {
		return keyword;
	}
	
}
