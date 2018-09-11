package cn.ppj.springBoot.shiro;

import cn.ppj.springBoot.utils.Md5Pw;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authc.credential.SimpleCredentialsMatcher;


public class AuthCredential extends  SimpleCredentialsMatcher{

	//重写加密处理
	@Override
	public boolean doCredentialsMatch(AuthenticationToken token, AuthenticationInfo info) {
		//将用户的明文进行加密处理
		UsernamePasswordToken loginToken = (UsernamePasswordToken)token;
		String username = loginToken.getUsername();
		String password = String.valueOf(loginToken.getPassword());
		//将密码进行加密处理
		String md5password = Md5Pw.getMd5HPW(password, username);

		loginToken.setPassword(md5password.toCharArray());
		
		return super.doCredentialsMatch(loginToken, info);
	}

}
