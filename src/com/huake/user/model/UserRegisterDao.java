package com.huake.user.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.huake.user.pojo.User;

import utils.JdbcUtil;

public class UserRegisterDao {
	public int insertUser(User user) {
		try {
			Connection conn = JdbcUtil.getInstace().getConn();
			String sql="INSERT INTO `user` (`account`, `password`, `email`) VALUES (?, ?, ?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, user.getAccount());
			ps.setString(2, user.getPassword());
			ps.setString(3, user.getEmail());
			int res = ps.executeUpdate();
			return res;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}
}