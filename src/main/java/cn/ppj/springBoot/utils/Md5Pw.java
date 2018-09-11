package cn.ppj.springBoot.utils;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import org.apache.shiro.crypto.hash.Md5Hash;

public class Md5Pw {
	
	/**
	 * 使用md5哈希的算法进行加密
	 */
	public static String getMd5HPW(String password,String username){
		
		Md5Hash md5Hash = new Md5Hash(password,username,3);
		
		return md5Hash.toString();
	}
	public static void main(String[] args) {
		System.out.println(getMd5HPW("123456","ppj"));
	}
	
	/**
	 * 使用md5的算法进行加密
	 */
	public static String getMd5pw(String plainText,String username) {
		byte[] secretBytes = null;
		try {
			secretBytes = MessageDigest.getInstance("md5").digest(
					plainText.getBytes());
		} catch (NoSuchAlgorithmException e) {
			throw new RuntimeException("没有md5这个算法！");
		}
		String md5code = new BigInteger(1, secretBytes).toString(16);
		for (int i = 0; i < 32 - md5code.length(); i++) {
			md5code = "0" + md5code;
		}
		return md5code;
	}
}
