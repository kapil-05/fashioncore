package com.charliebrown;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Profile;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.charliebrown.cart.Cart;
import com.charliebrown.cart.CartDAO;
import com.charliebrown.products.Products;
import com.charliebrown.products.ProductsDAO;
import com.charliebrown.profiles.Profiles;
import com.charliebrown.profiles.ProfilesDAO;


@RestController
public class RESTController {
	
	@Autowired
	CartDAO cartdao;
	
	@Autowired
	ProductsDAO pdao;
	
	@Autowired
	ProfilesDAO pfdao;
	
	@RequestMapping(value="/getAllCartItems",method=RequestMethod.POST)
	public String getAllCartItems()
	{
		String currUser = "";
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    if (auth != null && !auth.getName().equals("anonymousUser"))
	    	currUser = auth.getName();

		JSONArray jarr = new JSONArray();
		
		for(Cart c : cartdao.getAllCart())
		{
			if(c.getUsername().equals(currUser))
			{
				JSONObject jobj = new JSONObject();

				Products p = pdao.getProduct(c.getPdid());

				jobj.put("id", c.getId());
				jobj.put("qty", c.getQty());
				jobj.put("price" , p.getPrice());
				jobj.put("img" , p.getImage());
				jobj.put("desc", p.getDescription());
				jobj.put("cat", p.getCategories());
				jobj.put("pname", p.getName());
				jobj.put("shipaddr", c.getShipaddr());
				jobj.put("billaddr", c.getBilladdr());

				jarr.add(jobj);
			}
		}
		
		System.out.println(jarr.toJSONString());
		
		return jarr.toJSONString();
	}

	
	@RequestMapping(value="/deletefromcart",method=RequestMethod.POST)
	public String deletefromcart(@RequestBody String data)
	{
		System.out.println("deletefromcart");
	
		System.out.println(data);
		
		try{
			JSONParser jparr = new JSONParser();
			
			JSONObject inp = (JSONObject)jparr.parse(data);
			
			System.out.println(inp);
			
			int id = Integer.parseInt( inp.get("id").toString() );
			
			Cart c=cartdao.getCartbyId(id);
			int q=c.getQty();
			
			Products p=pdao.getProduct(c.getPdid());
			String qty1=p.getQuantity();
			int i=Integer.parseInt(qty1);
			i=i+q;
			String qty = String.valueOf(i);
			p.setQuantity(qty);
			this.pdao.update(p);
			
			cartdao.delete(id);
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		return "{\"msg\":\"Deleted\"}";
	}
	
	@RequestMapping(value="/DeleteCartItems",method=RequestMethod.POST)
	public String DeleteCartItems()
	{
		System.out.println("DeleteCartItems");
	
		String currUser = "";
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    if (auth != null && !auth.getName().equals("anonymousUser"))
	    	currUser = auth.getName();
		
		
		
		for( Cart c : cartdao.getAllCart() )
		{
			if( c.getUsername().equals(currUser) )
			{
		
				
			int a=c.getId();
			cartdao.delete(a);				
			}
		}
		
		return "{\"msg\":\"Deleted Items\"}";
	}
	
	
	
	
	@RequestMapping(value="/getAddress",method=RequestMethod.POST)
	public String getAddress()
	{
		System.out.println("getAddress");
		
		String currUser = "";
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    if (auth != null && !auth.getName().equals("anonymousUser"))
	    	currUser = auth.getName();
	    
	    JSONObject jobj = new JSONObject();
			
		for( Profiles p : pfdao.getAllProfile())
		{
			
			if( p.getUsername().equals(currUser))
			{	
				String addr = p.getAddress();
				
				System.out.println(addr);
				jobj.put("billaddr", p.getAddress());
				jobj.put("shipaddr", p.getAddress());
				
				
				return jobj.toJSONString();
			}
			
		}
		
		return jobj.toJSONString();
	}
	
	
	
	@RequestMapping(value="/UpdateCartToDB",method=RequestMethod.POST)
	public String UpdateCartToDB(@RequestBody String data)
	{
		System.out.println("UpdateCartToDB");
		
		String currUser = "";
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    if (auth != null && !auth.getName().equals("anonymousUser"))
	    	currUser = auth.getName();
	    
	    System.out.println(data);
		
		try{
			JSONParser jparr = new JSONParser();
			
			JSONObject inp = (JSONObject)jparr.parse(data);
			
			System.out.println(inp);
			
			String ship = inp.get("ship").toString();
			String bill = inp.get("bill").toString();
			cartdao.update(currUser, ship, bill);
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		return "{\"msg\":\"Updated\"}";
	    
	    
	}
}
