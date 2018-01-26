package com.charliebrown.products;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.charliebrown.products.Products;

@Repository
@Transactional
public class ProductsImpl implements ProductsDAO{

	@Autowired
	private SessionFactory sessionFactory;
	
	public void insert(Products pd) {
		this.sessionFactory.getCurrentSession().save(pd);
	}

	public void update(Products pd) {
		this.sessionFactory.getCurrentSession().update(pd);
	}

	public void delete(int pdid) {
		this.sessionFactory.getCurrentSession().createQuery("delete from Products where pdid=:id").setInteger("id", pdid).executeUpdate();
	}

	public Products getProduct(int pdid) {
		if( this.sessionFactory.getCurrentSession().createQuery("from Products where pdid=:id").setInteger("id", pdid).list().size() != 0 )
			return (Products)this.sessionFactory.getCurrentSession().createQuery("from Products where pdid=:id").setInteger("id", pdid).list().get(0);
		else
			return null;
	}

	public List<Products> getAllProducts() {
		return (List<Products>)this.sessionFactory.getCurrentSession().createQuery("from Products").list();
	}

	public List<Products> categoryProduct(String name) {
		return (List<Products>)this.sessionFactory.getCurrentSession().createQuery("from Products where categories=:name").setString("name" , name).list();
	}

	public List<Products> getProductsbySupplierName(String name) {

		return (List<Products>)this.sessionFactory.getCurrentSession().createQuery("from Products where suppliername=:name").setString("name", name).list();
	}

	
}
