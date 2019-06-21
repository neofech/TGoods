package com.huake.admin.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSONObject;
import com.huake.admin.model.DelProductDao;

@WebServlet("/delproduct")
public class DelProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String projectId = request.getParameter("projectId");
		DelProductDao dao = new DelProductDao();
		int res = dao.deleteProduct(projectId);
		JSONObject jo=new JSONObject();
		jo.put("keys", res);
		response.getWriter().print(jo);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
