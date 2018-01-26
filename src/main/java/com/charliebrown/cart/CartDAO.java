package com.charliebrown.cart;

import java.util.List;

public interface CartDAO {

	public void insert(Cart c);
	public void update(Cart c);	
	public void update( String user, String ship, String bill );
	public void delete(int id);
	public List<Cart> getAllCart();
	public Cart getCartbyId(int id);
	public List<Cart>  getProductsbyName(String name);
}
