package blog.controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import blog.vo.MenuVO;

@Controller
public class SogaeController {
	
	private static final Logger logger  = LoggerFactory.getLogger(SogaeController.class);
	
	@RequestMapping(value = "/sogae", method = RequestMethod.GET)
	public String sogae(Model model) throws Exception {
		return "sogae";
	}
	
	@RequestMapping(value = "/player", method = RequestMethod.GET)
	public String player(Model model) throws Exception {
		return "player";
	}
	
	@RequestMapping(value = "/mainpage", method = RequestMethod.GET)
	public String mainpage(Model model) throws Exception {
		return "mainpage";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String home(Model model) throws Exception {
		return "login";
	}

}
