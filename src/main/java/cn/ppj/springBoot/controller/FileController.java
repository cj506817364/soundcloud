package cn.ppj.springBoot.controller;

import cn.hutool.core.io.resource.ResourceUtil;
import cn.hutool.core.util.StrUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.util.Properties;


@Controller
public class FileController {

    @RequestMapping("/movie/{name}")
    public void showMovie(HttpServletResponse response, HttpSession session, @PathVariable("name") String name) {
        try {
            InputStream is = ResourceUtil.getStream("file.properties");
            Properties prop = new Properties();
            try {
                prop.load(is);
            } catch (IOException e1) {
                e1.printStackTrace();
            }
            String movie = prop.get("movie").toString();
            String url = StrUtil.format( "{}{}{}.mkv",movie,File.separator,name);
            System.out.println(url);
            //获取文件的路径
//            String url = findServerPath();
            FileInputStream fis = null;
            try {
                fis = new FileInputStream(url);
            } catch (FileNotFoundException e) {
                e.printStackTrace();
                url = StrUtil.format( "{}{}{}.mp4",movie,File.separator,name);
                fis = new FileInputStream(url);
            }
            ServletOutputStream fos = response.getOutputStream();

            byte[] buf = new byte[1024];
            int len;
            while ((len = fis.read(buf)) != -1)  {
                fos.write(buf, 0, len);
            }
            System.out.println(url);

        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    @RequestMapping("/music/{name}")
    public void showMusic(HttpServletResponse response, HttpSession session, @PathVariable("name") String name) {
        if("666".equals(name))
            return;
        try {
            InputStream is = ResourceUtil.getStream("file.properties");
            Properties prop = new Properties();
            try {
                prop.load(is);
            } catch (IOException e1) {
                e1.printStackTrace();
            }
            String movie = prop.get("music").toString();
            String url = StrUtil.format( "{}{}{}.mp3",movie,File.separator,name);
            System.out.println(url);
            //获取文件的路径
//            String url = findServerPath();
            FileInputStream fis = new FileInputStream(url);
            ServletOutputStream fos = response.getOutputStream();

            byte[] buf = new byte[1024];
            int len;
            while ((len = fis.read(buf)) != -1)  {
                fos.write(buf, 0, len);
            }
            System.out.println(url);

        }catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

}
