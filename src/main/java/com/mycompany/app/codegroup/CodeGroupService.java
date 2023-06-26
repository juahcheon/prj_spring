package com.mycompany.app.codegroup;

import java.util.List;

public interface CodeGroupService {
	
	public List<CodeGroup> selectList();
	public CodeGroup selectOne(CodeGroupVo vo);
}
