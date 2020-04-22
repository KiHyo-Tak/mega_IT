package com.tj.test06.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tj.test06.dto.Clike;
import com.tj.test06.dto.Member;

@Controller
public class MyController {
	@Autowired
	private SqlSession sessionTemplate;
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String loginForm() {
		return "login";
	}
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String login(Member member, Model model, HttpSession session) {
		member = sessionTemplate.selectOne("login", member);
		if(member!=null) {
			session.setAttribute("member", member);
			model.addAttribute("catgoryList", sessionTemplate.selectList("getCategory"));
			List<Object> mycategoryList = (List<Object>) sessionTemplate.selectList("getClike", member.getMid());
			String mylist = "";
			for(Object c : mycategoryList) {
				mylist += ((Clike)c).getCno() + ", ";
			}
			model.addAttribute("mylist", mylist);
			return "categoryList";
		}else {
			model.addAttribute("result", "ID와 PW를 체크하세요");
			return "login";
		}
	}
}
