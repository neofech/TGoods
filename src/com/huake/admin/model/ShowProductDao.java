package com.huake.admin.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.huake.admin.pojo.Product;

import utils.JdbcUtil;

public class ShowProductDao {
	public List<Product> selectProduct() {
		try {
			Connection conn = JdbcUtil.getInstace().getConn();
			String sql="SELECT * FROM `goods`";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet res = ps.executeQuery();
			List<Product> list = new ArrayList<Product>();
			while (res.next()) {
				int id = res.getInt("id");
				String title = res.getString("title");
				String oldMoney = res.getString("oldMoney");
				String money = res.getString("money");
				String goodNumber = res.getString("goodNumber");
				String goodIntroduction = res.getString("goodIntroduction");
				String sellNumber = res.getString("sellNumber");
				String images = res.getString("images");
				
				Product pro = new Product();
				pro.setId(id);
				pro.setTitle(title);
				pro.setOldMoney(oldMoney);
				pro.setMoney(money);
				pro.setGoodNumber(goodNumber);
				pro.setGoodIntroduction(goodIntroduction);
				pro.setSellNumber(sellNumber);
				pro.setImages(images);
				list.add(pro);
			}
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
