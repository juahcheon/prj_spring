package com.mycompany.app.infra.code;


import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import javax.inject.Inject;

import java.util.ArrayList;
import java.util.List;

@Repository
public class CodeDao{

    @Inject
    @Resource(name="sqlSession")
    private SqlSession sqlSession;

    private static String namespace = "com.mycompany.app.infra.code.CodeMapper";

//    public List<CodeGroup> selectList(CodeGroupVo vo){return sqlSession.selectList(namespace+".selectList",vo);}

    public List<Code> selectList(CodeVo vo){
        return sqlSession.selectList(namespace+".selectList",vo);
    }

//    public List<CodeGroup> selectOne(CodeGroupVo vo){
//        return sqlSession.selectOne(namespace+".selectOne",vo);
//    }

    public Code selectOne(CodeVo vo){
        Code code = sqlSession.selectOne(namespace+".selectOne",vo);
        return code;
//        return sqlSession.selectOne(namespace+".selectList",vo);
    }

    public int update(Code dto){ return sqlSession.update(namespace + ".update",dto);
//        return sqlSession.selectOne(namespace+".selectList",vo);
    }

    public int delete(Code dto){ return sqlSession.delete(namespace + ".delete",dto);}

    public int insert(Code vo){ return sqlSession.insert(namespace + ".insert",vo);}

//    for cache
    public List<Code> selectListCachedCodeArrayList() {
    	return sqlSession.selectList(namespace + ".selectListCachedCodeArrayList", null);
    }


}