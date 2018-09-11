package cn.ppj.jsoup;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import cn.ppj.springBoot.pojo.News;

public class NewsSpider {
	public static void main(String[] args) throws IOException {
	}

	public static List<News> spiderNews() {

		String url = "http://news.yule.com.cn/music/";
		List<News> newsList = new LinkedList<News>();
		Document document;
		try {

			// for (int i = 1; i < 50; i++) {
			// String url = "http://news.yule.com.cn/music/index" + i + ".html";

			document = Jsoup.connect(url).userAgent("Mozilla/5.0 (Windows NT 6.1; rv:30.0) Gecko/20100101 Firefox/30.0")
					.get();

			Elements elements = document.select(".TWAll .TArea .MBL > ul > li");
			for (Element element : elements) {
				News news = new News();
				Elements titleElement = element.select(".titname");
				String title = titleElement.text();
				String link = titleElement.select("> a").attr("href").trim();

				String summary = element.select(".introduce > a").text();
				String time = element.select(".other #time").text();
				String imgLink = element.select(".img >a > img").attr("src");

				Date pupdate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(time);

				news.setContent(summary);
				news.setImgLink(imgLink);
				news.setPupdate(pupdate);
				news.setRedirectUrl(link);
				news.setTitle(title);
				/*System.out.println(news);
				System.out.println("标题:" + title);
				System.out.println("链接:" + link);
				System.out.println("摘要:" + summary);
				System.out.println("图片:" + imgLink);
				System.out.println("时间:" + time);
				System.out.println("*******************");
*/
				newsList.add(news);
				// }
				// System.out.println(i);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println(newsList);
		return newsList;
	}

}
