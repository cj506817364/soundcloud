package cn.ppj.springBoot.utils;

import java.text.NumberFormat;
//此工具类中用于存放所有算法
public class Calculate {
	
	public static String percent(double num1, double num2) {
		// 创建一个数值格式化对象
		NumberFormat numberFormat = NumberFormat.getInstance();
		// 设置精确到小数点后2位
		numberFormat.setMaximumFractionDigits(2);

		return numberFormat.format((float) num1 / (float) num2 * 100);
	}
}
