package com.charliebrown.categories;

import java.util.List;

public interface CategoriesDAO {

	void insert(Categories c);
	void update(Categories c);
	
	void delete(int cid);
	Categories getCategory(int cid);
	List<Categories> getAllCategory();
	Categories getCategory(String name);
}
