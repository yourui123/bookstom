package cn.ces.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.ces.service.LoginService;

@Controller
public class LoginController {

	private final LoginService loginService;
	
	@Autowired
	public LoginController(LoginService loginService) {
		this.loginService = loginService;
	}
	
	@PostMapping(value = "/login")
    @ResponseBody 
    public Map<String, Object> login(Integer uid,Integer rid,String pwd){
		Map<String, Object> result = loginService.loginService(uid, pwd, rid);
		return result;
	}
	
}