package com.mycompany.app.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CodeGroupServiceImpl implements CodeGroupService{
	@Autowired
	CodeGroupDao dao;
	@Override
	public CodeGroup selectOne(CodeGroupVo vo) {
		// TODO Auto-generated method stub
		return dao.selectOne(vo);
	}
	
	@Override
	public List<CodeGroup> selectList(){return dao.selectList();}

}