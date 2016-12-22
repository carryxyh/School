package com.xyh.basic;

import java.util.List;

public interface BaseServiceInter {

	public List<?> get(String hql, Object[] params);

	public void save(Object obj);

	public void delete(Object obj);

	public void update(Object obj);

	public Object findById(Class clas, java.io.Serializable id);
}
