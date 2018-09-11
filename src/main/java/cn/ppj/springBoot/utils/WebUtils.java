package cn.ppj.springBoot.utils;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class WebUtils {
	private WebUtils(){}
	/**
	 * 检查字符串是否为null或""
	 * @param str
	 * @return boolean
	 * 		   true 表示空
	 */
	public static boolean isNull(String str){
		return str == null || "".equals(str.trim());
	}

	/**
	 * 使用md5的算法进行加密
	 */
	public static String md5(String plainText) {
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

	public static void main(String[] args) {
		//用于打印md5的结果
		System.out.println(md5("123"));
	}

	/**
	 * 使用md5h的算法进行加密
	 */
	public static String md5h(String plainText) {
		System.out.println("还未添加MD5h算法!!!");
		return null;
		//return new Md5Hash(plainText,plainText,3).toString();
	}


}
