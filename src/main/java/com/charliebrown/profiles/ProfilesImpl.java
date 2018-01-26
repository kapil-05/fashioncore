package com.charliebrown.profiles;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


@Repository
@Transactional
public class ProfilesImpl implements ProfilesDAO{

	
	@Autowired
	private SessionFactory sessionFactory;
	
	public void insert(Profiles p) {
		this.sessionFactory.getCurrentSession().save(p);
		
	}

	public void update(Profiles p) {
		this.sessionFactory.getCurrentSession().update(p);
		
	}

	public void delete(int pid) {
		// TODO Auto-generated method stub
		this.sessionFactory.getCurrentSession().createQuery("delete from Profiles where id=:id").setInteger("id", pid).executeUpdate();
	}

	public Profiles getProfile(int pid) {
		// TODO Auto-generated method stub
		return (Profiles)this.sessionFactory.getCurrentSession().createQuery("from Profiles where id=:id").setInteger("id", pid).list().get(0);
	}

	public List<Profiles> getAllProfile() {
		return (List<Profiles>)this.sessionFactory.getCurrentSession().createQuery("from Profiles").list();
	}

	public List<Profiles> getAllEmail() {
		return (List<Profiles>)this.sessionFactory.getCurrentSession().createQuery("select email from Profiles").list();
	}

	

	
}
