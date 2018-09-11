package cn.ppj.springBoot;

import javax.servlet.MultipartConfigElement;

import org.springframework.boot.web.servlet.MultipartConfigFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
/**
 * 这个类用于配制上传文件大小限制
 * @author Administrator
 *
 */
@Configuration
public class FileUpLoad {
	@Bean
	public MultipartConfigElement multipartConfigElement() {
		MultipartConfigFactory factory = new MultipartConfigFactory();
		// 单个文件最大
		factory.setMaxFileSize("100MB"); // KB,MB
		// 设置总上传数据总大小
		factory.setMaxRequestSize("1000MB");
		return factory.createMultipartConfig();
	}
}
