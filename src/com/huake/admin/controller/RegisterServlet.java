package com.huake.admin.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSONObject;
import com.huake.admin.model.RegisterDao;
import com.huake.admin.pojo.Admin;

@WebServlet("/registeradmin")
public class RegisterServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Admin admin = accept(request);
		RegisterDao dao = new RegisterDao();
		int res = dao.insertAdmin(admin);
		JSONObject jo = new JSONObject();
		jo.put("success", res);
		response.getWriter().print(jo);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	private Admin accept(HttpServletRequest request) {
		String userName = request.getParameter("userName");
		String account = request.getParameter("account");
		String password = request.getParameter("password");
		String phone = request.getParameter("phone");
		
		Admin admin = new Admin();
		admin.setUser_name(userName);
		admin.setAccount(account);
		admin.setPassword(password);
		admin.setUser_phone(phone);
		return admin;
	}
}
