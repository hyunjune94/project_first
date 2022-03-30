package com.projectfw.infra.modules.index;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.projectfw.infra.modules.member.MemberServiceImpl;

//import com.projectfw.infra.common.util.UtilDateTime;


@Controller
public class indexController {

	@Autowired
	MemberServiceImpl service;
	
	@RequestMapping(value = "/member/indexView")
	public String indexView(Model model) throws Exception {
		
		return "member/indexView";
	}

}