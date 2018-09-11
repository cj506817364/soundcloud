package cn.ppj.springBoot.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.databind.ObjectMapper;

import cn.ppj.springBoot.pojo.CityNum;
import cn.ppj.springBoot.pojo.User;
import cn.ppj.springBoot.service.VectorMapService;
import cn.ppj.springBoot.utils.Calculate;

/**
 * 此类用于拦截用户访问矢量地图的请求, 并通过查数据库,动态传值给前端页面, 让echarts开发的成品图表显示数据!
 * 
 * @author 皮皮今
 *
 */
@Controller
public class FriendMapController {

	@Autowired
	private VectorMapService vectorMapService;

	@RequestMapping(value = { "/pages/jfriendmap" })
	public String toMap(Model model,HttpSession session) {
		String userId = ((User)session.getAttribute("userSession")).getUserId();
		List<CityNum> list = vectorMapService.findFriend(userId);

		// 使用工具类实现集合逆序,让前端展现美观
		Collections.reverse(list);

		// 定义两个数组来存储list集合中的name和value
		String[] city = new String[list.size()];
		int[] num = new int[list.size()];

		for (int i = 0; i < city.length; i++) {
			city[i] = list.get(i).getName();
			num[i] = list.get(i).getValue();
		}

		// 由于前台数据Json需要,这里手动拼接Json串
		for (int i = 0; i < city.length; i++) {
			city[i] = "\"" + city[i] + "\"";
		}

		model.addAttribute("city", Arrays.toString(city));
		model.addAttribute("num", Arrays.toString(num));

		list = vectorMapService.findFriend(userId);
		for (int i = 0; i < city.length; i++) {
			city[i] = list.get(i).getName();
			num[i] = list.get(i).getValue();
		}
		List<CityNum> newList = new ArrayList<CityNum>();
		for (int i = 0; i < city.length; i++) {
			city[i] = list.get(i).getName();
			char last = city[i].charAt(city[i].length() - 1);
			char a = '市';
			if(a == last){
//				System.out.println("有市字");
				city[i] = city[i].substring(0, city[i].length() - 1);
//				System.out.println(city[i]);
			}
			System.out.println("city:"+city[i]);
			num[i] = list.get(i).getValue();
			newList.add(new CityNum(city[i],num[i]));
		}
//		System.out.println(newList);
		String json = null;
		// 将对象转化为JSON串
		try {
			for (int i = 0; i < newList.size(); i++) {
				CityNum cityNum = newList.get(i);
				cityNum.setValue(cityNum.getValue() * 100);
			}
			// 使用JackJson自动转换Json
			json = new ObjectMapper().writeValueAsString(newList);
			 System.out.println("json"+json);
			model.addAttribute("mapJson", json);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		
		//计算百分比
		CityNum cityNum = vectorMapService.findByCondition("gender", "男");
		model.addAttribute("manAll", Calculate.percent(Double.parseDouble(cityNum.getName()), (double) cityNum.getValue()));
		
		//计算百分比
		cityNum = vectorMapService.findByCondition("gender", "女");
		model.addAttribute("womanAll",  Calculate.percent(Double.parseDouble(cityNum.getName()), (double) cityNum.getValue()));
		
		//计算百分比
		cityNum = vectorMapService.findByCondition("city", "武汉");
		model.addAttribute("wuhanAll",  Calculate.percent(Double.parseDouble(cityNum.getName()), (double) cityNum.getValue()));
		
		//计算百分比
		cityNum = vectorMapService.findByCondition("city", "北京");
		model.addAttribute("beijinAll", Calculate.percent(Double.parseDouble(cityNum.getName()), (double) cityNum.getValue()));
		return "forward:/pages/jfriendmap.jsp";
	}
	

}
