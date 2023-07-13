package com.mycompany.app.infra.member;


import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import javax.inject.Inject;
import java.util.List;

@Repository
public class MemberDao{

    @Inject
    @Resource(name="sqlSession")
    private SqlSession sqlSession;

    private static String namespace = "com.mycompany.app.infra.member.MemberMapper";

//    public List<CodeGroup> selectList(CodeGroupVo vo){return sqlSession.selectList(namespace+".selectList",vo);}

    public List<Member> selectList(MemberVo vo){
        return sqlSession.selectList(namespace+".selectList",vo);
    }

//    public List<CodeGroup> selectOne(CodeGroupVo vo){
//        return sqlSession.selectOne(namespace+".selectOne",vo);
//    }
	
	 public int selectOneCount(MemberVo vo){ return sqlSession.selectOne(namespace
	  + ".selectOneCount", vo); }
	 
    
    public Member selectOne(MemberVo vo){
//        CodeGroup codeGroup = sqlSession.selectOne(namespace+".selectOne",vo);
//        return codeGroup;
        return sqlSession.selectOne(namespace+".selectOne",vo);
    }
    
    public int selectCheckId(MemberVo vo) { return sqlSession.selectOne(namespace+".selectOneCheckId",vo); };

    public int update(Member dto){ return sqlSession.update(namespace + ".update",dto);
//        return sqlSession.selectOne(namespace+".selectList",vo);
    }

    public int delete(Member dto){ return sqlSession.delete(namespace + ".delete",dto);}

    public int insert(Member vo){ return sqlSession.insert(namespace + ".insert",vo);}

    public Member selectOneAjax(MemberVo vo) {return sqlSession.selectOne(namespace + ".selectOneAjax", vo); }

}