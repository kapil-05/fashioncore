package com.charliebrown.categories;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.charliebrown.products.Products;

@Repository
@Transactional
public class CategoriesImpl implements CategoriesDAO{

	
	@Autowired
	private SessionFactory sessionFactory;
	
	public void insert(Categories c) {
		this.sessionFactory.getCurrentSession().save(c);
	}

	public void update(Categories c) {
		this.sessionFactory.getCurrentSession().update(c);
	}

	public void delete(int cid) {
		this.sessionFactory.getCurrentSession().createQuery("delete from Categories where cid=:id").setInteger("id", cid).executeUpdate();
	}

	public Categories getCategory(int cid) {
		// TODO Auto-generated method stub
		return (Categories)this.sessionFactory.getCurrentSession().createQuery("from Categories where cid=:id").setInteger("id", cid).list().get(0);
	}

	
	public List<Categories> getAllCategory() {
		// TODO Auto-generated method stub
		return (List<Categories>)this.sessionFactory.getCurrentSession().createQuery("from Categories").list();
	}

	public Categories getCategory(String name) {
		// TODO Auto-generated method stub
		return (Categories)this.sessionFactory.getCurrentSession().createQuery("from Categories where name=:name").setString("name", name).list().get(0);
	}

}
