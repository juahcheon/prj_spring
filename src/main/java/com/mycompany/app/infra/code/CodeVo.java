package com.mycompany.app.infra.code;

public class CodeVo {

    private String name;
    private String defaultNy;
    private String themeTitle;
    private String seq;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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