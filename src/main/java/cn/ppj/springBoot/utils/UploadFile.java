package cn.ppj.springBoot.utils;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
/**
 * 此方法用于文件的上传
 * @author ppj
 *
 */
@Slf4j
public class UploadFile {
	/**
	 * 
	 * @param flod 你的文件想存放的文件夹 该方法会在webapp下寻找或创建文件夹
	 * @param file 通过springboot注解传参过来的文件,类型为MultipartFile 可参考cn.ppj.springBoot.controller.backend.MovieBackendController
	 * @param request HttpServletRequest
	 * @return boolean true为上传成功
	 */
	public static boolean uploadFile(String flod,MultipartFile file, HttpServletRequest request,String UUIDName){

//		String path = request.getSession().getServletContext().getRealPath("movie");
		String fileName = file.getOriginalFilename();
		String[] names = fileName.split("\\.");
		fileName = UUIDName + "." + names[names.length - 1];
		// String fileName = new Date().getTime()+".jpg";
//		System.out.println(flod);
		log.info(flod);
		File targetFile = new File(flod, fileName);
		if (!targetFile.exists()) {
			try {
				targetFile.createNewFile();
			} catch (IOException e) {
				e.printStackTrace();
				System.out.println("这里本没有异常!");
				return false;
			}
		}
		// 保存
		try {
			file.transferTo(targetFile);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("文件保存出错");
			return false;
		}
		return true;
	}
}
