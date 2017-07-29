package cn.equipment.controller;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import cn.equipment.bean.Equipment;
import cn.equipment.service.EquipmentService;
import cn.util.PageBean;

@Controller
@RequestMapping("/equipment")
public class EquipmentAction {
	
	@Autowired
	private EquipmentService equipmentService;
	
	@RequestMapping("/findByPage")
	public String findByPage(HttpServletRequest request){
		String page = request.getParameter("page");
		PageBean<Equipment> pageBean = equipmentService.findByPage(Integer.valueOf(page));
		request.setAttribute("pageBean", pageBean);
		return "equipment";
	}
	
	
}
