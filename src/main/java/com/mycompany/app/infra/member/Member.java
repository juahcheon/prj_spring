package com.mycompany.app.infra.member;

public class Member {
//	db_column명 첫글자는 소문자
//	seq는 편의상 db에서 int로, 여기선 String
//	주로 테이블의 컬럼명과 일치

    private String seq;
    private String id;
    private String password;
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

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
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