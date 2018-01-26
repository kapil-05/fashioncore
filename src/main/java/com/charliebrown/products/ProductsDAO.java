package com.charliebrown.products;

import java.util.List;

import com.charliebrown.products.Products;

public interface ProductsDAO {

	void insert(Products pd);
	void update(Products pd);
	
	void delete(int pdid);
	Products getProduct(int pdid);
	List<Products> getAllProducts();
	
	public List<Products> getProductsbySupplierName(String name);
	List<Products> categoryProduct(String name);
}
