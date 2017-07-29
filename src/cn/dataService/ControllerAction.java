package cn.dataService;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/controller")
public class ControllerAction{
	
	@RequestMapping("/Open")
	public void Open(HttpServletRequest request, HttpServletResponse response){
		try {
			ServerThread server = new ServerThread();
			server.setStr("BACK T 1");
			
			
			server.run();
			response.getWriter().write("Open");
			server.interrupt();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	@RequestMapping("/Close")
	public void Close(HttpServletRequest request, HttpServletResponse response){
		try {
			ServerThread server = new ServerThread();
			server.setStr("BACK T 0");
			
			server.run();
			response.getWriter().write("Close");
			server.interrupt();
		} catch (IOException e) {
			e.printStackTrace();
		}
	
	}
	
	@RequestMapping("/Add")
	public void Add(HttpServletRequest request, HttpServletResponse response){
		try {
			ServerThread server = new ServerThread();
			server.setStr("BACK W +");
			server.run();
			response.getWriter().write("Add");
			server.interrupt();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	@RequestMapping("/Del")
	public void Del(HttpServletRequest request, HttpServletResponse response){
		try {
			ServerThread server = new ServerThread();
			server.setStr("BACK W -");
			server.run();
			response.getWriter().write("Del");
			server.interrupt();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
}
