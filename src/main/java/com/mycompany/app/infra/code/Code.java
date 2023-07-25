package com.mycompany.app.infra.code;

import java.util.ArrayList;
import java.util.List;

public class Code {
//	db_column명 첫글자는 소문자
//	seq는 편의상 db에서 int로, 여기선 String
//	주로 테이블의 컬럼명과 일치


	private String seq;
    private String name;
    private String defaultNy;
    private String themeTitle;
    private String gender;
    
// for cache
    public static List<Code> cachedCodeArrayList = new ArrayList<Code>();
    
    
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
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
	public String getDefaultNy() {
		return defaultNy;
	}
	public void setDefaultNy(String defaultNy) {
		this.defaultNy = defaultNy;
	}
	public String getThemeTitle() {
		return themeTitle;
	}
	public void setThemeTitle(String themeTitle) {
		this.themeTitle = themeTitle;
	}

    
    
    






}