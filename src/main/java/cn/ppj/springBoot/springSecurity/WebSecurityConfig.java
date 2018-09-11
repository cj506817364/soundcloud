//package cn.ppj.springBoot.springSecurity;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
//import org.springframework.security.config.annotation.web.builders.HttpSecurity;
//import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
//import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
//
////@EnableWebSecurity
//public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
//	
//	protected void configure(HttpSecurity http) throws Exception {
//		http
//			.authorizeRequests()
//				.antMatchers("/css/**", "/fonts/**", "/images/**","/js/**","/pages/**")
//				.permitAll()                  
//				.antMatchers("/backend/**").hasRole("admin")                                      
////				.antMatchers("/db/**").access("hasRole('ADMIN') and hasRole('DBA')")            
////				.anyRequest().authenticated()
//				.and()
//			.formLogin()
//				.loginPage("/pages/login.jsp") 
//				.permitAll();  
//	}
//	
////	@Autowired
////	public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
////		auth
////			.inMemoryAuthentication()
////				.withUser("longcong").password("123456").roles("admin");
////	}
//}