package com.projectfw.infra.modules.member;

import java.util.List;


public interface MemberService {
	
	int selectOneCount(MemberVo vo) throws Exception;
	List<Member> selectList(MemberVo vo) throws Exception; 
	int insert(Member dto) throws Exception; 
	Member selectOne(MemberVo vo) throws Exception;
	int update(Member dto) throws Exception;
	int delete(MemberVo vo) throws Exception;
	int updateDelete(MemberVo vo) throws Exception;
	Member selectOneLogin(Member dto) throws Exception;
	
}