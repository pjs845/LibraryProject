package library.site.domain;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
public class BookVo {
	private int cp = 1; //페이지 번호 
	private int ps = 5; //페이지 사이즈 
	//{cp =1; ps=5;}
	public int getStartRow() {
		return (cp-1)*ps; //ex) 0 * 5 = 0
	}
	public int getEndRow() {
		return cp*ps; //ex) 1 * 5 = 5
	}
	public BookVo(int cp, int ps){  
		this.cp = cp;
		this.ps = ps;
	}
	
	int catgo; //for Search 
	String keyword; //for Search 
	public int getCatgo() { //for Search
		return catgo;
	}
	public String getKeyword() { //for Search
		return keyword;
	}
}
