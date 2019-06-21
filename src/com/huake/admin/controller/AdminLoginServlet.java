package com.huake.admin.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSONObject;
import com.huake.admin.model.AdminLoginDao;
import com.huake.admin.pojo.Admin;

@WebServlet("/adminlogin")
public class AdminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Admin admin = accept(request);
		AdminLoginDao dao = new AdminLoginDao();
		boolean res = dao.selectAdmin(admin);
		JSONObject jo = new JSONObject();
		if(res) {
			jo.put("flag", "success");
		}
		response.getWriter().print(jo);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	public Admin accept(HttpServletRequest request) {
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		Admin admin = new Admin();
		admin.setUser_name(name);
		admin.setPassword(password);
		return admin;
	}
}
