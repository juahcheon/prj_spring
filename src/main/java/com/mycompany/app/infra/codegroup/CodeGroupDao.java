package com.mycompany.app.infra.codegroup;


import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import javax.inject.Inject;
import java.util.List;

@Repository
public class CodeGroupDao{

    @Inject
    @Resource(name="sqlSession")
    private SqlSession sqlSession;

    private static String namespace = "com.mycompany.app.infra.codegroup.CodeGroupMapper";

//    public List<CodeGroup> selectList(CodeGroupVo vo){return sqlSession.selectList(namespace+".selectList",vo);}

    public List<CodeGroup> selectList(CodeGroupVo vo){
        return sqlSession.selectList(namespace+".selectList",vo);
    }

//    public List<CodeGroup> selectOne(CodeGroupVo vo){
//        return sqlSession.selectOne(namespace+".selectOne",vo);
//    }
    public int selectOneCount(CodeGroupVo vo){ return sqlSession.selectOne(namespace + ".selectOneCount", vo); }
    
    public CodeGroup selectOne(CodeGroupVo vo){
//        CodeGroup codeGroup = sqlSession.selectOne(namespace+".selectOne",vo);
//        return codeGroup;
        return sqlSession.selectOne(namespace+".selectOne",vo);
    }

    public int update(CodeGroup dto){ return sqlSession.update(namespace + ".update",dto);
//        return sqlSession.selectOne(namespace+".selectList",vo);
    }

    public int delete(CodeGroup dto){ return sqlSession.delete(namespace + ".delete",dto);}

    public int insert(CodeGroup vo){ return sqlSession.insert(namespace + ".insert",vo);}



}