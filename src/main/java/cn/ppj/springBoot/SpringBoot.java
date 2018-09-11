package cn.ppj.springBoot;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.support.SpringBootServletInitializer;
import org.springframework.transaction.annotation.EnableTransactionManagement;


/**
 * Created by LYJ on 2017/10/17.
 */	
@EnableTransactionManagement //开启事物管理器
@SpringBootApplication
@MapperScan("cn.ppj.springBoot.mapper")  //扫描接口 为接口创建代理对象
public class SpringBoot extends SpringBootServletInitializer{

	@Override
    protected SpringApplicationBuilder configure(
            SpringApplicationBuilder application) {
        return application.sources(SpringBoot.class);
    }
	
    public static void main(String[] args){
    	System.out.println("=================开始启动项目=================");
        SpringApplication.run(SpringBoot.class,args);
        System.out.println("=================启动项目完毕=================");
    }
}
