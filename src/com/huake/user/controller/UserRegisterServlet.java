package com.huake.user.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSONObject;
import com.huake.user.model.UserRegisterDao;
import com.huake.user.pojo.User;

@WebServlet("/userregister")
public class UserRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		User user = accept(request);
		UserRegisterDao dao = new UserRegisterDao();
		int res = dao.insertUser(user);
		JSONObject  jo = new JSONObject();
		if (res==1) {
			jo.put("resultCode", 1);
			jo.put("message", "×¢ƒÔ³É¹¦");
		}else{
			jo.put("resultCode", 0);
			jo.put("message", "×¢ƒÔÊ§”¡");
		}
		response.getWriter().print(jo);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	public User accept(HttpServletRequest request) {
		String email = request.getParameter("email");
		String account = request.getParameter("account");
		String password = request.getParameter("password");
		User user = new User();
		user.setAccount(account);
		user.setEmail(email);
		user.setPassword(password);
		return user;
	}
}