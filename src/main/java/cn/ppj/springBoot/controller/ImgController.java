package cn.ppj.springBoot.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.ppj.springBoot.utils.VerifyCode;

@Controller
@RequestMapping("/img")
public class ImgController {

	@RequestMapping("/getImg")
	public String getImg(Model model,HttpServletResponse response) throws IOException{
		response.setDateHeader("Expires", -1);
		response.setHeader("Cache-Control", "no-cache");
		
		VerifyCode verifyCode = new VerifyCode();
		verifyCode.drawImage(response.getOutputStream());
		
		String code = verifyCode.getCode();
		model.addAttribute("code", code);
		
		return "backend/login";
	}
	
}
