package com.projectfw.infra.modules.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.projectfw.infra.common.constants.Constants;

//import com.projectfw.infra.common.util.UtilDateTime;

@Controller
public class MemberController {

	@Autowired
	MemberServiceImpl service;

	@RequestMapping(value = "/member/memberListTest")
	public String memberListTest(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {


//		vo.setShOptionDate(vo.getShOptionDate() == null ? 1 : vo.getShOptionDate());
//		vo.setShDateStart(vo.getShDateStart() == null ? UtilDateTime.calculateDayString(UtilDateTime.nowLocalDateTime(), Constants.DATE_INTERVAL) : UtilDateTime.add00TimeString(vo.getShDateStart()));
//		vo.setShDateEnd(vo.getShDateEnd() == null ? UtilDateTime.nowString() : UtilDateTime.addNowTimeString(vo.getShDateEnd()));
		int count = service.selectOneCount(vo);

		vo.setParamsPaging(count);

		if (count != 0) {
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

	@RequestMapping(value = "/member/memberForm2Test") // 주소입력
	public String memberForm2Test(MemberVo vo, Model model) throws Exception {

		Member rt = service.selectOne(vo);

		model.addAttribute("item", rt);

		return "member/memberForm2Test"; // 보여지는 jsp파일
	}

	@RequestMapping(value = "/member/memberUpdtTest") // 주소입력
	public String memberUpdtTest(Member dto) throws Exception {

		service.update(dto);
		return "redirect:/member/memberViewTest?ifmmSeq=" + dto.getIfmmSeq();
	}

	@RequestMapping(value = "/member/memberDeleTest") // 주소입력
	public String memberDeleTest(MemberVo vo, RedirectAttributes redirectAttributes) throws Exception {

		service.delete(vo);

		redirectAttributes.addAttribute("thisPage", vo.getThisPage());
//		redirectAttributes.addAttribute("shOption", vo.getShOption());	
//		redirectAttributes.addAttribute("shValue", vo.getShValue());	
		return "redirect:/member/memberListTest";
	}

	/*
	 * @RequestMapping(value = "/member/memberMultiUeleTest") //주소입력 public String
	 * memberMultiUeleTest(MemberVo vo, RedirectAttributes redirectAttributes)
	 * throws Exception {
	 * 
	 * String[] checkboxSeqArray = vo.getCheckboxSeqArray();
	 * 
	 * for(String checkboxSeq : checkboxSeqArray) { vo.setIfmmSeq(checkboxSeq);
	 * service.uelete(vo); }
	 * 
	 * redirectAttributes.addFlashAttribute("vo", vo);
	 * 
	 * return "redirect:/member/memberListTest"; }
	 */

	@RequestMapping(value = "/member/loginForm")
	public String loginForm(Model model) throws Exception {

		return "member/loginForm";
	}
	@RequestMapping(value = "/member/loginFormTest")
	public String loginFormTest(Model model) throws Exception {
		
		return "member/loginFormTest";
	}

	@ResponseBody	 
	@RequestMapping(value = "/member/loginProc") public Map<String, Object>
	loginProc(Member dto, HttpSession httpSession) throws Exception { Map<String, Object> returnMap = new HashMap<String, Object>();
	
	System.out.println(dto.getIfmmId());
	System.out.println(dto.getIfmmPassword()); Member rtMember = service.selectOneLogin(dto);
	 
	if(rtMember != null) { 
	// rtMember = service.selectOneLogin(dto);
	  
	if(rtMember.getIfmmSeq() != null) { httpSession.setMaxInactiveInterval( 60 *  Constants.SESSION_MINUTE);
	  
	httpSession.setAttribute("sessSeq", rtMember.getIfmmSeq());
	httpSession.setAttribute("sessId", rtMember.getIfmmId());
	httpSession.setAttribute("sessName", rtMember.getIfmmName());
	  
	returnMap.put("rt", "success"); } else { returnMap.put("rt", "fail"); } 
	} else { returnMap.put("rt", "fail"); } 

	return returnMap; 
	}
	
	@ResponseBody //구글 로그인
	@RequestMapping(value = "/member/loginProcGoogle")
	public Map<String, Object> GloginProc(@RequestParam("ifmmName")String name,Member dto, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		System.out.println(name);
		httpSession.setAttribute("sessSeq","구글 회원입니다");
		httpSession.setAttribute("sessName",name);
		httpSession.setAttribute("sessId","강현준");
	
		returnMap.put("rt", "success");
		
		return returnMap;
	}
	 

	/*
	 * @ResponseBody
	 * 
	 * @RequestMapping(value = "/member/loginProc") public Map<String, Object>
	 * loginProc(Member dto, HttpSession httpSession) throws Exception { Map<String,
	 * Object> returnMap = new HashMap<String, Object>();
	 * 
	 * System.out.println(dto.getIfmmId());
	 * System.out.println(dto.getIfmmPassword());
	 * 
	 * Member rtMember = service.selectOneId(dto);
	 * 
	 * if(rtMember != null) { Member rtMember2 = service.selectOneLogin(dto);
	 * 
	 * if(rtMember2 != null) { httpSession.setMaxInactiveInterval( 60 *
	 * Constants.SESSION_MINUTE);
	 * 
	 * httpSession.setAttribute("sessSeq", rtMember2.getIfmmSeq());
	 * httpSession.setAttribute("sessId", rtMember2.getIfmmId());
	 * httpSession.setAttribute("sessName", rtMember2.getIfmmName());
	 * 
	 * returnMap.put("rt", "success"); } else { returnMap.put("rt", "fail"); } }
	 * else { returnMap.put("rt", "fail"); } return returnMap; }
	 */

//------------------------------------------------------------------	

	@RequestMapping(value = "/member/memberList")
	public String memberList(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {

		int count = service.selectOneCount(vo);

		vo.setParamsPaging(count);

		if (count != 0) {
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

	@RequestMapping(value = "/member/memberForm2") // 주소입력
	public String memberForm2(MemberVo vo, Model model) throws Exception {

		Member rt = service.selectOne(vo);

		model.addAttribute("item", rt);

		return "member/memberForm2"; // 보여지는 jsp파일
	}

	@RequestMapping(value = "/member/memberUpdt") // 주소입력
	public String memberUpdt(Member dto) throws Exception {

		service.update(dto);
		return "redirect:/member/memberView?ifmmSeq=" + dto.getIfmmSeq();
	}
	
	@RequestMapping(value = "/member/modalTest")
	public String modalTest(Model model) throws Exception {

		return "member/modalTest";
	}
}