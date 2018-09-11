package cn.ppj.springBoot.controller;

import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import cn.ppj.springBoot.pojo.JsonVideo;
import cn.ppj.springBoot.pojo.Video;
import cn.ppj.springBoot.service.VideoService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Slf4j
@Controller
@RequestMapping("/video/")
public class VideoController {

    private Integer pageSize = 8;
    private Integer pageRows = -1; //通过数据库查询获取到
    private Integer pageCount = pageRows / pageSize;//通过pageRows计算到
    private Integer pageButtonNum = 5;//显示多少个按钮

    @Autowired
    private VideoService videoService;

    @Value("${addr}")
    private String addr;

    @Value("${port}")
    private String port;

    @RequestMapping("/getVideos")
    public String getVideos(Model model, Integer pageNow) {
        //shujufengye
        pageRows = videoService.getVideosRows();
        pageCount = (pageRows - 1) / pageSize + 1;

        List<Video> videoList = videoService.getVideos(pageSize * (pageNow - 1), pageSize);
        model.addAttribute("videoList", videoList);

        model.addAttribute("pageCount", pageCount);
        model.addAttribute("pageNow", pageNow);
        model.addAttribute("pageSize", pageSize);
        model.addAttribute("pageButtonNum", pageButtonNum);

        return "/video";
    }

    @RequestMapping("toPlayVideo")
    public String toPlayVideo(String videoId, Model model, Integer num, HttpServletRequest request) {
        // 推介8首
        Integer rows = videoService.getVideosRows();
        if(rows == 0){
            model.addAttribute("videoList", null);
        } else if(rows < 8){
//			int offset = new Random().nextInt(rows);
            List<Video> videoList = videoService.getVideos8(0, 8);
            model.addAttribute("videoList", videoList);
        } else {
            int offset = new Random().nextInt(rows - 8) + 8;
            List<Video> videoList = videoService.getVideos8(offset, 8);
            model.addAttribute("videoList", videoList);
        }
        // 即将播放的视频
        Video jsonVideo = videoService.getVideoByVideoId(videoId);
        model.addAttribute("jsonVideo", jsonVideo);
        // 封装成json数据
        JsonVideo jsVideo = new JsonVideo();

        String url = "http://" + addr + ":" + port + request.getContextPath() + jsonVideo.getVideoUrl() + "." + jsonVideo.getExpandedName();

        // 需要谷歌浏览器，mac的safari不支持jpalyer播放mkv格式
        log.info(url);
        jsVideo.setMkv(url);
        jsVideo.setOgv(url);
        jsVideo.setWebmv(url);
        jsVideo.setMp4(url);
        jsVideo.setPoster(request.getContextPath() + "/images/m4" + num + ".jpg");
        jsVideo.setTitle(jsonVideo.getVideoname());
        try {
            model.addAttribute("jsVideo", new ObjectMapper().writeValueAsString(jsVideo));
        } catch (JsonProcessingException e) {
            e.printStackTrace();
            System.out.println("解析成json时报错");
        }
        return "/video-detail";
    }
}
