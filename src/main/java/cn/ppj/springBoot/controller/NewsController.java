package cn.ppj.springBoot.controller;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Properties;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.ppj.springBoot.pojo.News;
import cn.ppj.springBoot.service.NewsService;
import cn.ppj.springBoot.utils.POIPagingSheetExcel;

@Controller
@RequestMapping("/news")
public class NewsController {
	@Autowired
	private NewsService newsService;

	@RequestMapping("/tonews")
	public String toNews(HttpServletRequest request, Model model) {

		String pageNum = request.getParameter("pageNum");
		String pageSize = request.getParameter("pageSize");
		int num = 1;
		int size = 5;
		if (pageNum != null && !"".equals(pageNum)) {
			num = Integer.parseInt(pageNum);
		}
		if (pageSize != null && !"".equals(pageSize)) {
			size = Integer.parseInt(pageSize);
		}
		// String sortString = "id.desc";
		// Order.formString(sortString);

		PageHelper.startPage(num, size);

		List<News> newsList = newsService.findAllNews();

		PageInfo<News> pagehelper = new PageInfo<News>(newsList);

		model.addAttribute("pagehelper", pagehelper);

		return "/blog";
	}

	@RequestMapping("/poi")
	public void poi(HttpServletResponse response) throws IOException {
		// 查询新闻信息列表
		List<News> newsList = newsService.findAllNews();

		// 设置表头内容
		String[] header = { "新闻id", "新闻标题", "新闻内容", "更新时间", "图片链接", "新闻链接" };

		String[][] dataAll = new String[newsList.size()][header.length];

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

		// 在配置文件中读取生成的poi报表路径
		InputStream inputStream = NewsController.class.getClassLoader().getResourceAsStream("poiConfig.properties");
		Properties prop = new Properties();
		prop.load(inputStream);
		String path = prop.getProperty("newspath");
		int maxRow = Integer.parseInt(prop.getProperty("maxRow")); // 每页显示多少条数据

		// 设置表体数据
		for (int i = 0; i < newsList.size(); i++) { // 初始化表格数据
			News news = newsList.get(i);

			dataAll[i][0] = new Integer(i + 1).toString();
			dataAll[i][1] = news.getTitle();
			dataAll[i][2] = news.getContent();
			dataAll[i][3] = sdf.format(news.getPupdate());
			dataAll[i][4] = news.getRedirectUrl();
			dataAll[i][5] = news.getImgLink();
		}

		// 创建excel
		POIPagingSheetExcel.createExcel(header, dataAll, maxRow, path);

		// 告知浏览器以附件下载的方式打开
		response.setHeader("Content-Disposition", "attachment;filename=news-poi.xls");
		// 处理文件内容的乱码
		response.setContentType("text/html;charset=gbk");
		InputStream in = new FileInputStream(path);
		OutputStream out = response.getOutputStream();

		int len = 0;
		while ((len = in.read()) != -1) {
			out.write(len);
		}
		in.close();
		out.close();
	}
}
