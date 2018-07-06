package team.singal.coffee.utils;

import java.io.File;
import java.io.FileOutputStream;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

/**
 * 文件上传工具类
 * @author 胡春
 *
 */
public class UpUtils {
	public static String getSrc(MultipartFile filedata,HttpServletRequest request) {
		//获取我门的当前路径（项目部署在tomcat中的跟路径）
		String proPath = request.getSession().getServletContext().getRealPath("/");
		//获取我们本机工作区的项目跟路径
		String relPath="E:\\java_project\\book\\src\\main\\webapp\\";
		//设置文件上传后的保存路径
		String savePath="images/fileUp";
		//声明文件路径并创建该文件目录

		File file=new File(proPath+savePath);
		if(!file.exists()) {
			file.mkdirs();
		}
		//保证跟路径下的图片位置存在
		File file1=new File(relPath+savePath);
		if(!file1.exists()) {
			file1.mkdirs();
		}
		
		try {
			//获取上传文件的名称
			String orgName = filedata.getOriginalFilename();
			String end=orgName.substring(orgName.lastIndexOf("."));
			String start=String.valueOf(System.currentTimeMillis());
			String imgPath=savePath+"/"+start+end;//+orgName;
			//创建文件输出流
			FileOutputStream fos = new FileOutputStream(proPath+imgPath,true);
			FileOutputStream fos1 = new FileOutputStream(relPath+imgPath,true);
			fos1.write(filedata.getBytes());
			fos.write(filedata.getBytes());
			fos.flush();
			fos1.flush();
			fos.close();
			fos1.close();
			return imgPath;

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return "";
		}
		
	}
}
