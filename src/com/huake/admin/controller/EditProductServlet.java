package com.huake.admin.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.huake.admin.model.EditSelectProductDao;
import com.huake.admin.pojo.Product;

@WebServlet("/editpro")
public class EditProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("projectId");
		EditSelectProductDao dao = 	new EditSelectProductDao();
		Product pro = dao.selectPro(id);
		request.setAttribute("producetList", pro);
		System.out.println(pro);
		request.getRequestDispatcher("admin/project_update.jsp").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
