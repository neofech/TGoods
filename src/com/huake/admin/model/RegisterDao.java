package com.huake.admin.model;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.huake.admin.pojo.Admin;

import utils.JdbcUtil;

public class RegisterDao {
	public int insertAdmin(Admin admin) {
		try {
			Connection conn = JdbcUtil.getInstace().getConn();
			String sql="INSERT INTO `admin` (`user_name`, `account`, `password`, `user_phone`) VALUES (?, ?, ?, ?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, admin.getUser_name());
			ps.setString(2, admin.getAccount());
			ps.setString(3, admin.getPassword());
			ps.setString(4, admin.getUser_phone());
			int result = ps.executeUpdate();
			return result;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
}