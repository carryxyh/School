package com.xyh.service.Impl;

import java.util.List;

import com.xyh.basic.BasicServiceImpl;
import com.xyh.domain.Users;
import com.xyh.service.Inter.UserServiceInter;

public class UserService extends BasicServiceImpl implements UserServiceInter {

	@SuppressWarnings("unchecked")
	@Override
	public Users check(Users user) {
		
		List<Users> list = (List<Users>) get("from Users where email=? and pwd=?", new Object[]{user.getEmail(),user.getPwd()});
		if(list.size() == 1){
			return list.get(0);
		}else{
			return null;
		}
	}

}
