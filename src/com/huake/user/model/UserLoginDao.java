package com.huake.user.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.huake.user.pojo.User;

import utils.JdbcUtil;

public class UserLoginDao {
	public boolean selectUser(User user) {
		try {
			Connection conn = JdbcUtil.getInstace().getConn();
			String sql="SELECT  * FROM  user WHERE account =? AND password = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, user.getAccount());
			ps.setString(2, user.getPassword());
			ResultSet res = ps.executeQuery();
			return res.next();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
}
