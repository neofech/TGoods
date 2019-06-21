package com.huake.admin.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import utils.JdbcUtil;

public class DelProductDao {
	public int deleteProduct(String id) {
		try {
			Connection conn = JdbcUtil.getInstace().getConn();
			String sql="DELETE FROM goods WHERE id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			int res = ps.executeUpdate();
			return res;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
		
	}
}
