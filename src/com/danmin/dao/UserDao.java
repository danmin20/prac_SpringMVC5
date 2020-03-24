package com.danmin.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.danmin.beans.UserBean;
import com.danmin.mapper.UserMapper;

@Repository
public class UserDao {

	@Autowired
	private UserMapper userMapper;

	public String checkUserIdExist(String user_id) {
		return userMapper.checkUserIdExist(user_id);
	}

	public void addUserInfo(UserBean joinUserBean) {
		userMapper.addUserInfo(joinUserBean);
	}
}
