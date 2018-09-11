package cn.ppj.springBoot.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.ppj.springBoot.pojo.User;
import cn.ppj.springBoot.service.UserService;

/**
 * Created by LYJ on 2017/10/17.
 */
@Controller
public class UserController {

    @Autowired
    private UserService userService;
    
    @RequestMapping("/findUserList")
    //@ResponseBody    //需要页面跳转时，不需要添加该注解
    public String findUserList(Model model){

        List<User> userList = userService.findUserList();
        model.addAttribute("userList",userList);
        //跳转回用户列表页面
        return "forward:/backend/user/userList.jsp";
    }
    
    @RequestMapping("/ajax_check")
    @ResponseBody
    public void findUserByUsername(String username,HttpServletResponse response) throws IOException{
    	
    	User user = userService.findUserByUsername(username);

    	  if(user!=null){
    	      response.getWriter().print(false);
    	     }
    	     else{
    	      response.getWriter().print(true);
    	     }
    	  
    }

}
