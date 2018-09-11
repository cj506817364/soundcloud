package cn.ppj.springBoot;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomesController {
	// 拦截用户输入的任何地址
	@RequestMapping("/*")
	public String toIndex(){
		return "redirect:/goHome";
	}
}
