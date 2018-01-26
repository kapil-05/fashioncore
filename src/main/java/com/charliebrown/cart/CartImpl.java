package com.charliebrown.cart;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Repository
public class CartImpl implements CartDAO{

	@Autowired
	private SessionFactory sessionFactory;
	
	public void insert(Cart c) {
		this.sessionFactory.getCurrentSession().save(c);
		
	}

	public void update(Cart c) {
		this.sessionFactory.getCurrentSession().update(c);
		
	}

	public void delete(int id) {
		this.sessionFactory.getCurrentSession().createQuery("delete from Cart where id=:id").setInteger("id", id).executeUpdate();
		
	}

	public List<Cart> getAllCart() {
		return (List<Cart>)this.sessionFactory.getCurrentSession().createQuery("from Cart").list();
	}

	public Cart getCartbyId(int id) {
		
		return (Cart)this.sessionFactory.getCurrentSession().createQuery("from Cart where id=:id").setInteger("id", id).list().get(0);
	}

	public List<Cart> getProductsbyName(String name) {
		
		return (List<Cart>)this.sessionFactory.getCurrentSession().createQuery("from Products where name=:name").setString("name", name).list();
	}

	public void update(String user, String ship, String bill) {
		
		this.sessionFactory.getCurrentSession().createQuery("update Cart set shipaddr = :ship, billaddr= :bill where username=:name").setString("ship", ship).setString("bill", bill).setString("name", user).executeUpdate();
		
	}

}
