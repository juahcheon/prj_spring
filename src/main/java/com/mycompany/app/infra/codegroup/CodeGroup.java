package com.mycompany.app.infra.codegroup;

public class CodeGroup {
//	db_column명 첫글자는 소문자
//	seq는 편의상 db에서 int로, 여기선 String
//	주로 테이블의 컬럼명과 일치

    private String seq;
    private String type;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    private String name;
//	-----
    /**
     * @return the seq
     */
    public String getSeq() {
        return seq;
    }
    /**
     * @param seq the seq to set
     */
    public void setSeq(String seq) {
        this.seq = seq;
    }
    /**
     * @return the type
     */
    public String getType() {
        return type;
    }
    /**
     * @param type the type to set
     */
    public void setType(String type) {
        this.type = type;
    }




}