package cn.info.controller;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.info.bean.Info;
import cn.info.service.InfoService;
import cn.user.bean.User;
import cn.util.PageBean;
import cn.util.PicUtils;
import cn.util.UploadUtils;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;


@Controller
@RequestMapping("/info")
public class InfoAction {
	
	@Autowired
	private InfoService infoService;

	@RequestMapping("/upload")
	public void upload(Info info, HttpServletRequest request, HttpServletResponse response) throws IOException{
		Map<String , String[]> map = new HashMap<String, String[]>();
		DiskFileItemFactory factory = new DiskFileItemFactory();
		factory.setSizeThreshold(1024*1024*5);
		factory.setRepository(new File(request.getSession().getServletContext().getRealPath("/temp")));
		ServletFileUpload upload = new ServletFileUpload(factory);
		if(upload.isMultipartContent(request)){
			upload.setHeaderEncoding("UTF-8");
			try {
				List<FileItem> items = upload.parseRequest(request);
				for(FileItem item : items){
					if(item.isFormField()){
						String fileName = item.getFieldName();
						String value = item.getString("UTF-8");
						map.put(fileName, new String[]{value});
					}else{
						String fileName = item.getName();
						System.out.println(fileName);
						fileName = UploadUtils.subFileName(fileName);
						String uuidFileName = UploadUtils.generateRandonFileName(fileName);
						String randomDir = UploadUtils.generateRandomDir(uuidFileName);
						String path = request.getSession().getServletContext().getRealPath("/upload"+randomDir);
						File filePath = new File(path);
						if(!filePath.exists()){
							filePath.mkdirs();
						}
						String imgurl = "/upload"+randomDir+"/"+uuidFileName;
						map.put("photo", new String[]{imgurl});
						try {
							item.write(new File(filePath,uuidFileName));
						} catch (Exception e) {
							e.printStackTrace();
						}
					}
				}
			} catch (FileUploadException e) {
				e.printStackTrace();
			}
			map.put("infoId", new String[]{UUID.randomUUID().toString()});
			
			try {
				BeanUtils.populate(info, map);
			} catch (IllegalAccessException e) {
				e.printStackTrace();
			} catch (InvocationTargetException e) {
				e.printStackTrace();
			}
			PicUtils picUtils;
			try {
				System.out.println(request.getSession().getServletContext().getRealPath(
						info.getPhoto()));
				picUtils = new PicUtils(request.getSession().getServletContext().getRealPath(
						info.getPhoto()));
				picUtils.resize(200, 200);
			} catch (Exception e1) {
				e1.printStackTrace();
			}
			try {
				infoService.save(info);
				response.getWriter().write("true");
			} catch (Exception e) {
				e.printStackTrace();
				response.getWriter().write("false");
			}
			
		}
	}
	
	@RequestMapping("/findByUserId")
	public void findByUserId(User user, HttpServletResponse response, HttpServletRequest request){
		response.setHeader("Access-Control-Allow-Origin", "*");  
		try {
			List<Info> list = infoService.findByUserId(user.getUserId());
			JSONObject jsonObject = new JSONObject();
			JSONArray array = new JSONArray();
			for(int i=0; i<list.size(); i++){
				Info info = list.get(i);
				jsonObject.put("id", info.getInfoId());
				jsonObject.put("info", info.getInfo());
				jsonObject.put("image", "http://139.199.97.82:8080/info"+info.getPhoto());
				array.add(jsonObject);
			}
			response.setContentType("text/html;charset=UTF-8");
			response.getWriter().write(array.toString());
		} catch (IOException e) {
			
		}
	}
	
	@RequestMapping("/findByPage")
	public void findByPage(HttpServletRequest request, HttpServletResponse response){
		String page = request.getParameter("page");
		PageBean<Info> pageBean = infoService.findByPage(Integer.parseInt(page));
		List<Info> list = pageBean.getList();
		JSONObject jsonObject = new JSONObject();
		JSONArray array = new JSONArray();
		
		for(int i=0; i<list.size(); i++){
			Info info = list.get(i);
			jsonObject.put("id", info.getInfoId());
			jsonObject.put("info", info.getInfo());
			jsonObject.put("image", "http://139.199.97.82:8080/info"+info.getPhoto());
			array.add(jsonObject);
		}
		response.setContentType("text/html;charset=UTF-8");
		try {
			response.getWriter().write(array.toString());
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
