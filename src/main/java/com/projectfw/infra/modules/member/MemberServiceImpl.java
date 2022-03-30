package com.projectfw.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

//import com.projectfw.infra.common.util.UtilDateTime;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	MemberDao dao;
	
	@Override
	public int selectOneCount(MemberVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}
	
	@Override
	public List<Member> selectList(MemberVo vo) throws Exception {
		return dao.selectList(vo); 
	}
	
	@Override
	public int insert(Member dto) throws Exception {
		/*
		 * try { dto.setRegDateTime(UtilDateTime.nowDate());
		 * dto.setModDateTime(UtilDateTime.nowDate()); }
		 * 
		 * setRegMod(dto);
		 */
		return dao.insert(dto); 
	}
	
	@Override
	public Member selectOne(MemberVo vo) throws Exception {
		return dao.selectOne(vo);
	}
	
	@Override
	public int update(Member dto) throws Exception {
		return dao.update(dto); 
	}

	@Override
	public int delete(MemberVo vo) throws Exception {
		return dao.delete(vo);
	}

	@Override
	public int updateDelete(MemberVo vo) throws Exception {
		return updateDelete(vo);
	}

	@Override
	public Member selectOneLogin(Member dto) {
		return dao.selectOneLogin(dto); 
	}

	
}