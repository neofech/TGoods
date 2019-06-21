package com.huake.admin.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.huake.admin.model.UpdateProDao;
import com.huake.admin.pojo.Product;

@WebServlet("/updatepro")
public class UpdateProServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Product product = accept(request, response);
		System.out.println("servlet:"+product);
		UpdateProDao dao = new UpdateProDao();
		int res = dao.updatePro(product);
		request.getRequestDispatcher("showpro").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	private Product accept(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println();
		Product pro = new Product();
		if (ServletFileUpload.isMultipartContent(request)) {
			try {
				DiskFileItemFactory factory = new DiskFileItemFactory();
				ServletFileUpload sfu = new ServletFileUpload(factory);
				sfu.setSizeMax(10 * 1024 * 1024);
				sfu.setHeaderEncoding("utf-8");
				List<FileItem> fileItemList = sfu.parseRequest(request);
				Iterator<FileItem> fileItems = fileItemList.iterator();
				String newFileName =null;
				while (fileItems.hasNext()) {
					FileItem fileItem = fileItems.next();
					if (fileItem.isFormField()) {
						String name = fileItem.getFieldName();
						String value = fileItem.getString("utf-8");
						if(name.equals("id")) {
							pro.setId(Integer.parseInt(value));
						}
						if (name.equals("title")) {
							pro.setTitle(value);
						}
						if (name.equals("oldMoney")) {
							pro.setOldMoney(value);
						}
						if (name.equals("money")) {
							pro.setMoney(value);
						}
						if (name.equals("goodNumber")) {
							pro.setGoodNumber(value);
						}
						if (name.equals("goodIntroduction")) {
							pro.setGoodIntroduction(value);
						}
						if (name.equals("sellNumber")) {
							pro.setSellNumber(value);
						}
					}
					else {
						String fileName = fileItem.getName();
						if (fileName!=null && fileName.length()>0) {
							String suffix = fileName.substring(fileName.lastIndexOf('.'));
							newFileName = new Date().getTime() + suffix;
							File file = new File(request.getServletContext().getRealPath("/goods") + "\\" + newFileName);
							fileItem.write(file);
							String url = "http://localhost:8080/tgou/goods/" + newFileName;
							pro.setImages(url);
							/*
							System.out.println("拷贝开始");
							String str1=request.getServletContext().getRealPath("/goods") + "\\" + newFileName;
							System.out.println(str1);
							String str2="E:\\学习作业\\大三 下\\生产实习\\Part1\\Code\\tgou\\WebContent\\goods\\" + newFileName;
							System.out.println(str2);
							FileInputStream fis = new FileInputStream(str1);
							FileOutputStream fos = new FileOutputStream(str2);
							int len = 0;
						    while ((len = fis.read()) != -1) {
						    	fos.write(len);
						    }
						    fos.close(); // 后开先关
					        fis.close(); // 先开后关
							System.out.println("拷贝结束");
							*/
						}
					}
				}
				return pro;
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return null;
	}
}