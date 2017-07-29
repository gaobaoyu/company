package cn.data.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import cn.data.bean.Data;
import cn.data.service.DataService;
import cn.equipment.bean.Equipment;
import cn.equipment.service.EquipmentService;
import cn.user.bean.User;
import cn.util.PageBean;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;


@Controller
@RequestMapping("/data")
public class DataAction {
	@Autowired
	private DataService dataService;
	
	@Autowired
	private EquipmentService equipmentService;
	
	@RequestMapping("/index")
	public String data(HttpSession session, HttpServletRequest request){
		User user = (User) session.getAttribute("user");
		if(user == null){
			return "login";
		}
		return "data";
	}
	
	@RequestMapping("/findNew")
     public void findNew(HttpServletResponse response, HttpServletRequest request) throws ServletException, IOException{				
		
		response.setHeader("Access-Control-Allow-Origin", "*");  
		try {
			List<Data> list = dataService.findNew();
			JSONObject json = new JSONObject();
			JSONArray array = new JSONArray();
			int m = 0;
			for(int i=0; i<list.size(); i++){
				String str = list.get(i).getData();
				String[] strs = str.split(" ");
				
				for(int j=4; j<strs.length; j+=2){
					json.put("time", strs[2]);
					json.put((char)('A'+m), strs[j]);
					m++;
				}
				m = 0;
				array.add(json);
			}
			response.setContentType("text/html;charset=UTF-8");
			response.getWriter().write(array.toString());
		} catch (IOException e) {
			request.getRequestDispatcher("/404.jsp").forward(request, response);
		}
		
	}
	
	
	@RequestMapping("findById")
	public String findById(HttpServletRequest request){
		String equipmentId = request.getParameter("equipmentId");
		Data data = dataService.findById(Integer.parseInt(equipmentId));
		request.setAttribute("data", data);
		List<Equipment> list = equipmentService.findNew();
		request.setAttribute("list", list);
		return "demo";
	}
	
	@RequestMapping("find")
	public String find(HttpServletRequest request){
		
		return "datas";
	}
	
	@RequestMapping("/save")
    public void save(HttpServletRequest request, Data data, HttpServletResponse response){
		String id = request.getParameter("equipmentId");
		response.setContentType("text/html;charset=UTF-8");
		data.setEquipmentId(Integer.valueOf(id));
		data.setEquipmentName(id+"ºÅ»ú·¿");
		String time = request.getParameter("time");
		data.setTime(time);
    	dataService.save(data);
	}
	
	@RequestMapping("/findByPage")
	public String findByPage(HttpServletRequest request, HttpSession session){
		User user = (User) session.getAttribute("existUser");
		if(user == null){
			return "login";
		}
		String page = request.getParameter("page");
		PageBean<Equipment> pageBean = equipmentService.findByPage(Integer.valueOf(page));
		request.setAttribute("pageBean", pageBean);
		return "data";
	}
	
	
}
