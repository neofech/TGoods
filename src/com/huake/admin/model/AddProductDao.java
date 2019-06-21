package com.huake.admin.model;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.huake.admin.pojo.Product;

import utils.JdbcUtil;

public class AddProductDao {
	public int addProduct(Product pro) {
		try {
			Connection conn = JdbcUtil.getInstace().getConn();
			String sql="INSERT INTO `goods` (`title`, `oldMoney`, `money`, `goodNumber`, `goodIntroduction`, `sellNumber`, `images`) VALUES ( ?, ?, ?, ?, ?, ?, ?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, pro.getTitle());
			ps.setString(2, pro.getOldMoney());
			ps.setString(3, pro.getMoney());
			ps.setString(4, pro.getGoodNumber());
			ps.setString(5, pro.getGoodIntroduction());
			ps.setString(6, pro.getSellNumber());
			ps.setString(7, pro.getImages());
			int res = ps.executeUpdate();
			return res;
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
}
