package com.xyh.service.Inter;

import com.xyh.basic.BaseServiceInter;
import com.xyh.domain.Users;

public interface UserServiceInter extends BaseServiceInter{
	
	public Users check(Users user);
}
