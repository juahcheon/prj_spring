package com.mycompany.app.infra.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MemberServiceImpl implements MemberService{
    @Autowired
    MemberDao dao;

    @Override
    public List<Member> selectList(MemberVo vo){return dao.selectList(vo);}

    @Override
    public Member selectOne(MemberVo vo) {
        return dao.selectOne(vo);
    }


    @Override
    public int update(Member dto) { return dao.update(dto); }


    @Override
    public int delete(Member dto) { return dao.delete(dto);}

    @Override
    public int insert(Member vo) {return dao.insert(vo);}

	public int selectOneCheckId(MemberVo vo) {
		// TODO Auto-generated method stub
		return 0;
	}


	public Member selectOneAjax(MemberVo vo) {
		// TODO Auto-generated method stub
		return dao.selectOneAjax(vo);
	}

	@Override public int selectOneCount(MemberVo vo) {  return dao.selectOneCount(vo); }

	
	
}
