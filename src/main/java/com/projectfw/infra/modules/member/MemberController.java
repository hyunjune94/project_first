package com.projectfw.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {

	@Autowired
	MemberServiceImpl service;
	
	@RequestMapping(value = "/member/memberListTest")
	public String memberListTest(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {

		int count = service.selectOneCount(vo);
		
		vo.setParamsPaging(count);
		
		if(count != 0) {
			List<Member> list = service.selectList(vo);
			model.addAttribute("list", list);
		} else {
			// by pass
		}

		return "member/memberListTest";
	}
	
	@RequestMapping(value = "/member/memberViewTest")
	public String memberViewTest(MemberVo vo, Model model) throws Exception {

		System.out.println("vo.getIfmmSeq(): " + vo.getIfmmSeq());

		Member rt = service.selectOne(vo);
		
		model.addAttribute("item", rt);
		
		return "member/memberViewTest";
	}
	
	@RequestMapping(value = "/member/memberFormTest")
	public String memberFormTest(Model model) throws Exception {

		return "member/memberFormTest";
	}
	
	@RequestMapping(value = "/member/memberInstTest")
	public String memberInstTest(Model model, Member dto) throws Exception {

		service.insert(dto);
		
		return "redirect:/member/memberListTest";
	}
	
	@RequestMapping(value = "/member/memberForm2Test")	//주소입력
	public String memberForm2Test(MemberVo vo, Model model) throws Exception {
		
		Member rt = service.selectOne(vo);
		
		model.addAttribute("item",rt);
		
		return "member/memberForm2Test";	//보여지는 jsp파일
	}
	
	@RequestMapping(value = "/member/memberUpdtTest")	//주소입력
	public String memberUpdtTest(Member dto) throws Exception {
		
		service.update(dto);
		return "redirect:/member/memberViewTest?ifmmSeq=" + dto.getIfmmSeq();
	}

//------------------------------------------------------------------	
	
	
	@RequestMapping(value = "/member/memberList")
	public String memberList(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {

		int count = service.selectOneCount(vo);
		
		vo.setParamsPaging(count);
		
		if(count != 0) {
			List<Member> list = service.selectList(vo);
			model.addAttribute("list", list);
		} else {
			// by pass
		}

		return "member/memberList";
	}
	
	@RequestMapping(value = "/member/memberForm")
	public String memberForm(Model model) throws Exception {

		return "member/memberForm";
	}
	
	@RequestMapping(value = "/member/memberInst")
	public String memberInst(Model model, Member dto) throws Exception {

		service.insert(dto);
		
		return "redirect:/member/memberList";
	}
	
	@RequestMapping(value = "/member/memberView")
	public String memberView(MemberVo vo, Model model) throws Exception {

		System.out.println("vo.getIfmmSeq(): " + vo.getIfmmSeq());

		Member rt = service.selectOne(vo);
		
		model.addAttribute("item", rt);
		
		return "member/memberView";
	}
	
	@RequestMapping(value = "/member/memberForm2")	//주소입력
	public String memberForm2(MemberVo vo, Model model) throws Exception {
		
		Member rt = service.selectOne(vo);
		
		model.addAttribute("item",rt);
		
		return "member/memberForm2";	//보여지는 jsp파일
	}
	
	@RequestMapping(value = "/member/memberUpdt")	//주소입력
	public String memberUpdt(Member dto) throws Exception {
		
		service.update(dto);
		return "redirect:/member/memberView?ifmmSeq=" + dto.getIfmmSeq();
	}
}