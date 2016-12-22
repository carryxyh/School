package com.xyh.basic;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

@Transactional
public abstract class BasicServiceImpl implements BaseServiceInter {
	
	@Resource
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public List<?> get(String hql, Object[] params) {
		Query query = this.sessionFactory.getCurrentSession().createQuery(hql);
		if(params != null && params.length > 0){
			for(int i=0;i < params.length;i++){
				query.setParameter(i, params[i]);
			}
		}
		return query.list();
	}

	@Override
	public void save(Object obj) {
		this.sessionFactory.getCurrentSession().save(obj);
	}

	@Override
	public void delete(Object obj) {
		this.sessionFactory.getCurrentSession().delete(obj);
	}

	@Override
	public void update(Object obj) {
		this.sessionFactory.getCurrentSession().update(obj);
	}
	
	@Override
	public Object findById(Class clas,java.io.Serializable id){
		return this.sessionFactory.getCurrentSession().get(clas, id);
	}
}
