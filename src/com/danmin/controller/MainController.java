package com.danmin.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.danmin.beans.BoardInfoBean;
import com.danmin.beans.ContentBean;
import com.danmin.service.MainService;
import com.danmin.service.TopMenuService;

@Controller
public class MainController {

	@Autowired
	private MainService mainService;

	@Autowired
	private TopMenuService topMenuService;

	@GetMapping("/main")
	public String main(Model model) {

		ArrayList<List<ContentBean>> list = new ArrayList<List<ContentBean>>();

		for (int i = 1; i <= 4; i++) {
			List<ContentBean> subList = mainService.getMainList(i);
			list.add(subList);
		}

		model.addAttribute("list", list);

		List<BoardInfoBean> board_list = topMenuService.getTopMenuList();
		model.addAttribute("board_list", board_list);

		return "main";
	}
}
