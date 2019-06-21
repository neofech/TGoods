package com.huake.admin.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.huake.admin.model.ShowProductDao;
import com.huake.admin.pojo.Product;

@WebServlet("/showpro")
public class ShowProServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ShowProductDao dao = new ShowProductDao();
		List<Product> list = dao.selectProduct();
		request.setAttribute("productList", list);
		request.getRequestDispatcher("/admin/project_list.jsp").forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
