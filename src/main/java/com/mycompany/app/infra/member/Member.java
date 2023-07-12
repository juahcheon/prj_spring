package com.mycompany.app.infra.member;

public class Member {
//	db_column명 첫글자는 소문자
//	seq는 편의상 db에서 int로, 여기선 String
//	주로 테이블의 컬럼명과 일치

    private String seq;
    private String ID;
    private String PW;
    private String nickName;
    private String gender;
    private String genre;
    private String local;
    
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getID() {
		return ID;
	}
	public void setID(String iD) {
		ID = iD;
	}
	public String getPW() {
		return PW;
	}
	public void setPW(String pW) {
		PW = pW;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public String getLocal() {
		return local;
	}
	public void setLocal(String local) {
		this.local = local;
	}

    
    






}