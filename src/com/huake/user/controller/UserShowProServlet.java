package com.huake.user.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSONObject;
import com.huake.admin.pojo.Product;
import com.huake.user.model.UserShowProDao;

@WebServlet("/user_show_pro")
public class UserShowProServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("application/json; charset=utf-8");
		UserShowProDao dao = new UserShowProDao();
		List<Product> list = dao.selectGoods();
		JSONObject jo = new JSONObject();
		jo.put("data", list);
		response.getWriter().print(jo);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}