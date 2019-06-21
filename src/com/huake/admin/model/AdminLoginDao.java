package com.huake.admin.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.huake.admin.pojo.Admin;

import utils.JdbcUtil;

public class AdminLoginDao {
	public boolean selectAdmin(Admin admin) {
		try {
			Connection conn = JdbcUtil.getInstace().getConn();
			String sql = "SELECT * FROM admin WHERE user_name=? AND password=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, admin.getUser_name());
			ps.setString(2, admin.getPassword());
			ResultSet res = ps.executeQuery();
			if (res.next()) {
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
}