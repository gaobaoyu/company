package cn.user.controller;

import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.data.service.DataService;
import cn.user.bean.User;
import cn.user.service.UserService;

@Controller
@RequestMapping("/user")
public class UserAction {
	@Autowired
	private UserService userService;
	@Autowired
	private DataService dataService;
	
	
	@RequestMapping("/registerPage")
	public String registerPage() {
		return "register";
	}

	@RequestMapping("/register")
	public String register(User user, HttpServletRequest request) {
		
		userService.save(user);
	    request.setAttribute("message", "注册成功");
		return "index";
	}
	@RequestMapping("/andRegister")
	public void andRegister(User user, HttpServletResponse response){
		userService.save(user);
		try {
			response.getWriter().write("ok");
		} catch (IOException e) {

			e.printStackTrace();
		}
	    
		
	}

	@RequestMapping("/andActive")
	public void andActive(User user, HttpServletResponse response) {
		
		User existUser = userService.findByUsername(user.getName());
		if (existUser == null) {
			try {
				response.getWriter().write("active0");
			} catch (IOException e) {
				e.printStackTrace();
			}
		} else {
			existUser.setState(1);
			userService.update(existUser);
			try {
				response.getWriter().write("active1");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	@RequestMapping("/active")
	public String active(User user) {
		// 根据激活码查询用户:
		User existUser = userService.findByUsername(user.getName());
		// 判断
		if (existUser == null) {
			
		} else {
			existUser.setState(1);
			userService.update(existUser);
			
		}
		return "index";
	}

	@RequestMapping("/loginPage")
	public String loginPage() {
		return "login";
	}

	@RequestMapping("/login")
	public String login(User user, HttpServletRequest request, HttpSession session) {
		User existUser = userService.login(user);
		
		if (existUser == null) {
			request.setAttribute("message", "用户名或密码错误");
			return "msg";
		} else {
			session.setAttribute("existUser", existUser);
			return "index";
		}
	
	}
	@RequestMapping("/andLogin")
	public void andLogin(User user, HttpServletResponse response) {
		
		User existUser = userService.login(user);
		// 判断
		if (existUser == null) {
			// 登录失败
			try {
				response.getWriter().write("failure");
			} catch (IOException e) {
				e.printStackTrace();
			}
		} else {
			try {
				
				String data = dataService.findNew().get(0).getData();
				response.getWriter().write("exit"+data);
			
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	
	}
	@RequestMapping("/quit")
	public String quit(HttpSession session){
		session.invalidate();
		return "index";
	}
}
