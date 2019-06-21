package com.huake.admin.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.huake.admin.pojo.Product;
import utils.JdbcUtil;

public class EditSelectProductDao {
	public Product selectPro(String pid) {
		try {
			Connection conn = JdbcUtil.getInstace().getConn();
			String sql="SELECT * FROM goods WHERE id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, pid);
			ResultSet res = ps.executeQuery();
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
				return pro;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
}
