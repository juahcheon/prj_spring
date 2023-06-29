package com.mycompany.app.infra.codegroup;

public class CodeGroup {
//	db_column명 첫글자는 소문자
//	seq는 편의상 db에서 int로, 여기선 String
//	주로 테이블의 컬럼명과 일치

    private String seq;
    private String name;
    private String theme;
    
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTheme() {
		return theme;
	}
	public void setTheme(String theme) {
		this.theme = theme;
	}
    
    






}