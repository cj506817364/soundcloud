package cn.ppj.springBoot.shiro;

import java.util.LinkedHashMap;
import java.util.Map;

import org.apache.shiro.authc.credential.CredentialsMatcher;
import org.apache.shiro.mgt.SecurityManager;
import org.apache.shiro.spring.web.ShiroFilterFactoryBean;
import org.apache.shiro.web.mgt.DefaultWebSecurityManager;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
@Configuration
public class ShiroConfig {
	/**
	 * ShiroFilterFactoryBean 处理拦截资源文件问题。
	 * 注意：单独一个ShiroFilterFactoryBean配置是或报错的，以为在
	 * 初始化ShiroFilterFactoryBean的时候需要注入：SecurityManager
	 *
	 * Filter Chain定义说明 1、一个URL可以配置多个Filter，使用逗号分隔 2、当设置多个过滤器时，全部验证通过，才视为通过
	 * 3、部分过滤器可指定参数，如perms，roles
	 *
	 */
	@Bean
	public ShiroFilterFactoryBean ShiroFilter(SecurityManager securityManager) {
		System.out.println("进入shiro拦截");
		ShiroFilterFactoryBean shiroFilterFactoryBean = new ShiroFilterFactoryBean();
		// 配置securityManager
		shiroFilterFactoryBean.setSecurityManager(securityManager);
		// 拦截器
		Map<String, String> filters = new LinkedHashMap<>();
		// 具体拦截url
		filters.put("/backend/**", "authc");
		filters.put("/pages/jfriendmap", "authc");
//		filters.put("/Tip/addFriendsView", "authc");
//		filters.put("/Tip/addFriends", "authc");
		filters.put("/**", "anon");
		shiroFilterFactoryBean.setLoginUrl("/login/toLogin");
		// 登录成功后要跳转的链接
//		 shiroFilterFactoryBean.setSuccessUrl("/");
		shiroFilterFactoryBean.setFilterChainDefinitionMap(filters);
		return shiroFilterFactoryBean;
	}

    @Bean
    public SecurityManager securityManager(){
        DefaultWebSecurityManager securityManager =  new DefaultWebSecurityManager();
        securityManager.setRealm(authRealm());
        return securityManager;
    }
    
	@Bean
	public AuthRealm authRealm() {
		AuthRealm authRealm = new AuthRealm();
		authRealm.setCredentialsMatcher(myShiroRealm());
		return authRealm;
	}

	/**
	 * 身份认证realm; (这个需要自己写，账号密码校验；权限等)
	 * 
	 * @return
	 */
	@Bean
	public CredentialsMatcher myShiroRealm() {
		return new AuthCredential();
	}
}