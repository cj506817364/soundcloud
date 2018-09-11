package cn.ppj.springBoot.controller.backend;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
import java.util.Properties;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cn.ppj.springBoot.controller.NewsController;
import cn.ppj.springBoot.pojo.Audio;
import cn.ppj.springBoot.service.backend.MusicBackendService;
import cn.ppj.springBoot.utils.POIPagingSheetExcel;

@Controller
@RequestMapping("/backend/music")
public class MusicBackendController {

	@Autowired
	private MusicBackendService musicBackendService;

	@RequestMapping("/musicList")
	public String musicList(Model model) {

		List<Audio> musicList = musicBackendService.findMusicList();
		model.addAttribute("musicList", musicList);

		return "forward:/backend/music/musicList.jsp";
	}

	// 批量启用
	@RequestMapping("/startstate")
	public String startState(@RequestParam("audioId") String[] audioIds) {
		int state = 1;

		musicBackendService.updateState(audioIds, state);
		return "redirect:/backend/music/musicList";
	}

	// 批量禁用
	@RequestMapping("/stopstate")
	public String stopState(@RequestParam("audioId") String[] audioIds) {
		int state = 0;

		musicBackendService.updateState(audioIds, state);
		return "redirect:/backend/music/musicList";
	}

	// 跳转查看单个用户信息页面
	@RequestMapping("/toview")
	public String view(String audioId, Model model) {

		Audio audio = musicBackendService.findMusicById(audioId);
		model.addAttribute("audio", audio);

		return "forward:/backend/music/musicView.jsp";
	}

	// 批量删除
	@RequestMapping("/delete")
	public String delete(@RequestParam("audioId") String[] audioIds) {

		musicBackendService.deleteMusicById(audioIds);

		return "redirect:/backend/music/musicList";
	}

	// 跳转新增音频页面
	@RequestMapping("/tocreate")
	public String tocreate() {

		return "forward:/backend/music/musicCreate.jsp";

	}

	// 新增之后音频信息列表查看
	@RequestMapping("/save")
	public String save(Audio audio,Model model) {
		musicBackendService.saveAudio(audio);

		return "redirect:/backend/music/musicList";
	}

	// 跳转音频修改页面
	@RequestMapping("/toupdate")
	public String toUpdate(String audioId, Model model) {

		Audio audio = musicBackendService.findMusicById(audioId);
		model.addAttribute("audio", audio);

		return "forward:/backend/music/musicUpdate.jsp";
	}

	// 修改之后查看音频信息列表
	@RequestMapping("/update")
	public String update(Audio audio) {

		musicBackendService.updateAudio(audio);

		return "redirect:/backend/music/musicList";
	}

	@RequestMapping("/poi")
	public void poi(HttpServletResponse response) throws IOException {
		// 查询新闻信息列表
		List<Audio> musicList = musicBackendService.findMusicList();

		// 设置表头内容
		String[] header = { "音频id", "音乐名称","播放次数"};

		String[][] dataAll = new String[musicList.size()][header.length];

		// 在配置文件中读取生成的poi报表路径
		InputStream inputStream = NewsController.class.getClassLoader().getResourceAsStream("poiConfig.properties");
		Properties prop = new Properties();
		prop.load(inputStream);
		String path = prop.getProperty("musicpath");
		int maxRow = Integer.parseInt(prop.getProperty("maxRow")); // 每页显示多少条数据

		// 设置表体数据
		for (int i = 0; i < musicList.size(); i++) { // 初始化表格数据
			Audio audio = musicList.get(i);

			dataAll[i][0] = new Integer(i + 1).toString();
			dataAll[i][1] = audio.getAudioname();
			dataAll[i][2] = audio.getPlayNum().toString();
		}

		// 创建excel
		POIPagingSheetExcel.createExcel(header, dataAll, maxRow, path);

		// 告知浏览器以附件下载的方式打开
		response.setHeader("Content-Disposition", "attachment;filename=music-poi.xls");
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
