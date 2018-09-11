/*package cn.ppj.springBoot;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.context.embedded.ConfigurableEmbeddedServletContainer;
import org.springframework.boot.context.embedded.EmbeddedServletContainerCustomizer;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

//此类用于导入项目测试springboot是否搭建完毕
@Controller
@EnableAutoConfiguration
public class Hello implements EmbeddedServletContainerCustomizer{

	@ResponseBody
	@RequestMapping("/")
	public String hello(){
		return "hello springboot";
	}
	
	public static void main(String[] args) {
		SpringApplication.run(Hello.class, args);
	}
	
	@Override
	public void customize(ConfigurableEmbeddedServletContainer container) {
		container.setPort(8090);
	}

}
*/