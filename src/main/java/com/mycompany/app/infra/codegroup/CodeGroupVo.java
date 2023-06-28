package com.mycompany.app.infra.codegroup;

public class CodeGroupVo {

    private String name;
    private String type;

    private String seq;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getSeq() {
        return seq;
    }

    public void setSeq(String seq) {
        this.seq = seq;
    }

    private String shKeyword;

    public Integer getShOption() {
        return shOption;
    }

    public void setShOption(Integer shOption) {
        this.shOption = shOption;
    }

    private Integer shOption;

    public String getShKeyword() {
        return shKeyword;
    }

    public void setShKeyword(String shKeyword) {
        this.shKeyword = shKeyword;
    }
}