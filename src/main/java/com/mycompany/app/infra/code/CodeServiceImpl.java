package com.mycompany.app.infra.code;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

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


    @Override
    public int update(Code dto) { return dao.update(dto); }


    @Override
    public int delete(Code dto) { return dao.delete(dto);}

    @Override
    public int insert(Code vo) {return dao.insert(vo);}
}
