package cn.ppj.springBoot.controller.backend;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.ppj.springBoot.pojo.BaseUser;
import cn.ppj.springBoot.pojo.RequestModel;
import cn.ppj.springBoot.service.backend.IndexBackendService;

@Controller
@RequestMapping("/backend")
public class IndexBackendController {
	@Autowired
	private IndexBackendService indexBackendService;
	
	@RequestMapping("/index")
	public String indexBackend(HttpServletRequest request,Model model){
		//返回全部歌曲/电影/用户/新闻数量给前台
		model.addAttribute("allMusic",indexBackendService.findAllMusic());
		model.addAttribute("allVideo",indexBackendService.findAllVideo());
		model.addAttribute("allUser",indexBackendService.findAllUser());
		model.addAttribute("allNews",indexBackendService.findAllNews());
		model.addAttribute("VIP",indexBackendService.findAllVIP());

		model.addAttribute("baseUserList",indexBackendService.findBackendUserList());
		RequestModel requestModel = toNews(request,model);
		model = requestModel.getModel();
		request = requestModel.getRequest();
		return "forward:/backend/index.jsp";
	}
	
	public RequestModel toNews(HttpServletRequest request, Model model) {

		String pageNum = request.getParameter("pageNum");
		String pageSize = request.getParameter("pageSize");
		int num = 1;
		int size = 15;
		if (pageNum != null && !"".equals(pageNum)) {
			num = Integer.parseInt(pageNum);
		}
		if (pageSize != null && !"".equals(pageSize)) {
			size = Integer.parseInt(pageSize);
		}
	//	String sortString = "id.desc";
	//	Order.formString(sortString);

		PageHelper.startPage(num, size);

		List<BaseUser> baseUserList = indexBackendService.findBackendUserList();
		
		PageInfo<BaseUser> pagehelper = new PageInfo<BaseUser>(baseUserList);

		model.addAttribute("pagehelper", pagehelper);
		
		return new RequestModel(request,model);
	}
}
