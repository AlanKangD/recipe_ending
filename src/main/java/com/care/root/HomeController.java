package com.care.root;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {

		return "redirect:/recipe/recipeList.do";
	}
	
	@RequestMapping("/index")
	public String indexTest() {
		
		
		return "/index";
	}
	
	@RequestMapping("kakao/kakaoLoginSucess")
	public String kakaologin() {
		return "kakao/kakaoLoginSucess";
	}

	@GetMapping("template.do")
	public String template() {
		return "common/template";
	}


}
