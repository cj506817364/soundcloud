package cn.ppj.springBoot.shiro;

import java.util.ArrayList;
import java.util.List;

import cn.ppj.springBoot.pojo.User;
import cn.ppj.springBoot.service.UserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;

public class AuthRealm extends AuthorizingRealm{
	@Autowired
    private UserService userService;

    //    权限控制
	/**
	 * 认证信息.(身份验证) : Authentication 是用来验证用户身份
	 * 
	 * @param token
	 * @return
	 * @throws Authenticationppj
	 */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        Subject subject = SecurityUtils.getSubject();
        // 从session中取出当前登陆的用户
        User user= (User) subject.getSession().getAttribute("userSession");
//        System.out.println("用户:"+user);
        String userId = user.getUserId();
        List<String> priList = new ArrayList<String>();
//        System.out.println(userId.length());
        priList.add("好友地图");
        // 如果userId是1位数的为管理员
        if (userId.length() == 1){
            priList.add("后台管理");
        }
//        System.out.println("拥有权限:" + priList);
        SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
        info.addStringPermissions(priList);
        return info;
    }

//    登录认证
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
    	// 获得token
        UsernamePasswordToken token = (UsernamePasswordToken) authenticationToken;
        String username = token.getUsername();
        User user = userService.findUserByUsername(username);
        AuthenticationInfo info = new SimpleAuthenticationInfo(user, user.getPassword(), this.getName());
        return info;
    }
}
