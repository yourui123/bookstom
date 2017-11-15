package cn.ces.controller;

import java.util.Map;

import cn.ces.entity.Users;
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
    public Map<String, Object> login(Users users){
		Map<String, Object> result = loginService.loginService(users.getUid(), users.getPwd(), users.getRid());
		return result;
	}
	
}
