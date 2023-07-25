package com.mycompany.app.infra.code;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CodeServiceImpl implements CodeService{
    @Autowired
    CodeDao dao;

    @Override
    public List<Code> selectList(CodeVo vo){return dao.selectList(vo);}

    @Override
    public Code selectOne(CodeVo vo) {
        return dao.selectOne(vo);
    }
    
//	for cache
	@PostConstruct
	public void selectListCachedCodeArrayList() throws Exception {
		List<Code> codeListFromDb = (ArrayList<Code>) dao.selectListCachedCodeArrayList();
		Code.cachedCodeArrayList.clear();
		Code.cachedCodeArrayList.addAll(codeListFromDb);
		System.out.println("cachedCodeArrayList: " + Code.cachedCodeArrayList.size() + " chached !");
	}
	
	public static void clear() throws Exception {
		Code.cachedCodeArrayList.clear();
	}
	
	public static List<Code> selectListCachedCode(String seq) throws Exception {
		List<Code> rt = new ArrayList<Code>();
		for(Code codeRow : Code.cachedCodeArrayList) {
			if(codeRow.getSeq().equals(seq)) {
				rt.add(codeRow);
			} else {
				// by pass
			}
		}
		return rt;
	}

    @Override
    public int update(Code dto) { return dao.update(dto); }


    @Override
    public int delete(Code dto) { return dao.delete(dto);}

    @Override
    public int insert(Code vo) {return dao.insert(vo);}
    
    
}
