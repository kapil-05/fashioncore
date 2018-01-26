package com.charliebrown;

import java.io.File;
import java.io.FileOutputStream;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.charliebrown.cart.Cart;
import com.charliebrown.cart.CartDAO;
import com.charliebrown.categories.Categories;
import com.charliebrown.categories.CategoriesDAO;
import com.charliebrown.products.Products;
import com.charliebrown.products.ProductsDAO;
import com.charliebrown.profiles.Profiles;
import com.charliebrown.profiles.ProfilesDAO;
import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;


@Controller
public class CharlieBrownsController {

	
	@Autowired
	ProductsDAO pdao;
	@Autowired
	CategoriesDAO cdao;
	@Autowired
	ProfilesDAO pfdao;
	@Autowired
	CartDAO cartdao;
	
	public String LoginTest()
	{
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    if (auth != null && !auth.getName().equals("anonymousUser"))
	    {    
	    	System.out.println(auth.getName());
	    	//System.out.println("User present");
	    	return "true";
	    }
		return "false";
	}
	
	@RequestMapping(value="/loginpage", method=RequestMethod.GET)
	public ModelAndView loginpage()
	{
		ModelAndView mv = new ModelAndView("loginpage");
		
		return mv;
	}
	
	@RequestMapping("/")
	public ModelAndView index()
	{
		ModelAndView mv = new ModelAndView("index");
		
		mv.addObject("linus", "linus");		
		return mv;
	}
	
	@RequestMapping("/AddProduct")
	public ModelAndView AddProduct()
	{
		ModelAndView mv = new ModelAndView("AddProduct");
		
		mv.addObject("catnames", cdao.getAllCategory());
		
		return mv;
	}
	
	@RequestMapping("/AddCategory")
	public ModelAndView AddCategory()
	{
		ModelAndView mv = new ModelAndView("AddCategory");
		
		return mv;
	}
	
	@RequestMapping("/AddProfile")
	public ModelAndView AddProfile()
	{
		ModelAndView mv = new ModelAndView("AddProfile");
		
		mv.addObject("Profile", new Profiles());
		
		return mv;
	}
	
	@RequestMapping("/ViewProduct")
	public ModelAndView ViewProduct(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView("ViewProduct");
		
		mv.addObject("productdata", pdao.getAllProducts());
		
		String currUser="";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    if (auth != null && !auth.getName().equals("anonymousUser"))
	    {    
			if(request.isUserInRole("ROLE_SUPPLIER"))
	    	{

	        currUser=auth.getName();
			
	    	mv.addObject("productdata", pdao.getProductsbySupplierName(currUser));
	    	return mv;
	    	}
	
	    	
	    }
		
		return mv;
	}
	
	
	@RequestMapping("/ViewCategory")
	public ModelAndView ViewCategory()
	{
		ModelAndView mv = new ModelAndView("ViewCategory");
		
		mv.addObject("categorydata", cdao.getAllCategory());
		
		return mv;
	}
	
	@RequestMapping("/ViewProfile")
	public ModelAndView ViewProfile()
	{
		ModelAndView mv = new ModelAndView("ViewProfile");
		
		mv.addObject("profiledata", pfdao.getAllProfile());
		
		return mv;
	}
	
	@RequestMapping("/DeleteOneProduct/{id}")
	public ModelAndView DeleteOneProduct(@PathVariable("id")int abc)
	{
		ModelAndView mv = new ModelAndView("redirect:/ViewProduct");
		
		pdao.delete(abc);
		
		return mv;
	}
	
	@RequestMapping("/DeleteOneCategory/{id}")
	public ModelAndView DeleteOneCategory(@PathVariable("id")int id)
	{
		ModelAndView mv = new ModelAndView("redirect:/ViewCategory");
		
		cdao.delete(id);
		
		return mv;
	}
	
	@RequestMapping("/DeleteOneProfile/{id}")
	public ModelAndView DeleteOneProfile(@PathVariable("id")int id, HttpServletRequest req)
	{
		ModelAndView mv = new ModelAndView("redirect:/ViewProfile");
	
				pfdao.delete(id);	
		
		return mv;
	}
	
	@RequestMapping("/DeleteProfile")
	public ModelAndView DeleteProfile(HttpServletRequest req)
	{
		ModelAndView mv = new ModelAndView("redirect:/ViewProfile");
		
		if(req.getParameterValues("delete") != null)
		for(String params : req.getParameterValues("delete"))
		{
			System.out.println(params);
			
			int id  = Integer.parseInt(params);
			
			pfdao.delete(id);
		}	
		
		return mv;
	}
	
	@RequestMapping("/DeleteProduct")
	public ModelAndView DeleteProduct(HttpServletRequest req)
	{
		ModelAndView mv = new ModelAndView("redirect:/ViewProduct");
		
		if(req.getParameterValues("delete") != null)
		for(String params : req.getParameterValues("delete"))
		{			
			int id  = Integer.parseInt(params);
			
			pdao.delete(id);
		}	
		
		return mv;
	}
	
	@RequestMapping("/DeleteCategory")
	public ModelAndView DeleteCategory(HttpServletRequest req)
	{
		ModelAndView mv = new ModelAndView("redirect:/ViewCategory");
		
		if(req.getParameterValues("delete") != null)
		for(String params : req.getParameterValues("delete"))
		{			
			int id  = Integer.parseInt(params);
			
			cdao.delete(id);
		}	
		
		return mv;
	}
	
	@RequestMapping("/UpdateOneProduct/{id}")
	public ModelAndView UpdateOneProduct(@PathVariable("id")int abc)
	{
		ModelAndView mv = new ModelAndView("UpdateProduct");
		
		mv.addObject("productdata",pdao.getProduct(abc));
		
		mv.addObject("catnames", cdao.getAllCategory());
		
		return mv;
	}
	
	@RequestMapping("/UpdateOneCategory/{id}")
	public ModelAndView UpdateOneCategory(@PathVariable("id")int abc)
	{
		ModelAndView mv = new ModelAndView("UpdateCategory");
		
		mv.addObject("categorydata",cdao.getCategory(abc));
		
		return mv;
	}
	
	@RequestMapping("/UpdateOneProfile/{id}")
	public ModelAndView UpdateOneProfile(@PathVariable("id")int abc)
	{
		ModelAndView mv = new ModelAndView("UpdateProfile");
		
		mv.addObject("profiledata",pfdao.getProfile(abc));
		
		return mv;
	}
	
	@RequestMapping("/ViewOneProduct/{id}")
	public ModelAndView ViewOneProduct(@PathVariable("id")int abc)
	{
		ModelAndView mv = new ModelAndView("ViewOneProduct");
		
		mv.addObject("productdata",pdao.getProduct(abc));
		
		 Products param = (Products) pdao.getProduct(abc);
		
		String name = param.getCategories();
		
		mv.addObject("categorydata", cdao.getCategory(name));
		
		return mv;
	}
	
	@RequestMapping("/ViewOneCategory/{id}")
	public ModelAndView ViewOneCategory(@PathVariable("id")int abc)
	{
		ModelAndView mv = new ModelAndView("ViewOneCategory");
		
		mv.addObject("categorydata",cdao.getCategory(abc));
		
		return mv;
	}
	
	@RequestMapping("/ViewOneProfile/{id}")
	public ModelAndView ViewOneProfile(@PathVariable("id")int abc)
	{
		ModelAndView mv = new ModelAndView("ViewOneProfile");
		
		mv.addObject("profiledata",pfdao.getProfile(abc));
		
		return mv;
	}
	
	@RequestMapping(value="/AddProductToDB",method=RequestMethod.POST)
	public ModelAndView AddProductToDB( HttpServletRequest req, @RequestParam("file") MultipartFile file )
	{
		ModelAndView mv = new ModelAndView("AddProduct");
		
		String params[] = req.getParameterValues("product");
		
		Products p = new Products();
		
		Profiles pf = new Profiles();
		
		for( int i = 0 ; i<params.length ; i++ )
		{
			switch(i)
			{
			case 0:	p.setName(params[i]); break;
			case 1:	p.setDescription(params[i]); break;
			/*case 2:	p.setCategories(params[i]); break;*/
			case 2:	p.setPrice(params[i]); break;
			}
		}
		p.setCategories(req.getParameter("item"));
		p.setQuantity(req.getParameter("quantity"));
		
		String currUser="";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    if (auth != null && !auth.getName().equals("anonymousUser"))
	    {    
			if(req.isUserInRole("ROLE_SUPPLIER"))
	    	{
				currUser=auth.getName();
				p.setSuppliername(currUser);
	    	}
	    }
			
		/*this.pdao.insert(p);*/
		try
		{
			
			Cloudinary cloudinary = new Cloudinary(ObjectUtils.asMap(
					  "cloud_name", "kapil05",
					  "api_key", "426113467622283",
					  "api_secret", "5bpQ6dN_ZhAM8EvwWZuWp0n1uP8"));
			
			String path = req.getRealPath("/");
			
			/*System.out.println(path);*/
			
			byte b[] = new byte[file.getInputStream().available()];
			
			file.getInputStream().read(b);
			
			FileOutputStream fos = new FileOutputStream(path + "/image.jpg"); 
			
			fos.write(b);
			
			fos.close();
			
			File f = new File(path + "/image.jpg");
			
			Map uploadResult = cloudinary.uploader().upload(f, ObjectUtils.emptyMap());
			
			System.out.println(uploadResult.get("secure_url"));
			
			p.setImage(uploadResult.get("secure_url").toString());
						
			this.pdao.insert(p);
		}
		catch(Exception e)
		{
			
		}
		
		return mv;
	}
	
	@RequestMapping(value="/AddCategoryToDB",method=RequestMethod.POST)
	public ModelAndView AddCategoryToDB( HttpServletRequest req )
	{
		ModelAndView mv = new ModelAndView("AddCategory");
		
		String params[] = req.getParameterValues("category");
		
		Categories cg = new Categories();
		
		for( int i = 0 ; i<params.length ; i++ )
		{
			switch(i)
			{
			case 0:	cg.setName(params[i]); break;
			case 1:	cg.setDescription(params[i]); break;
			}
		}
			
		this.cdao.insert(cg);
		
		return mv;
	}
	
	@RequestMapping(value="/AddProfileToDB",method=RequestMethod.POST)
	public ModelAndView AddProfileToDB( HttpServletRequest req, @Valid @ModelAttribute("Profile") Profiles p ,BindingResult result )
	{
		ModelAndView mv = new ModelAndView("redirect:/AddProfile");
		
		
		if( result.hasErrors() )
		{
			mv = new ModelAndView("AddProfile");
			mv.addObject("Profile", p);
			System.out.println("contain error");
			return mv;
		}
		else if(pfdao.getAllEmail().contains(p.getEmail()))
		{
			mv = new ModelAndView("AddProfile");
			mv.addObject("Profile", p);
			System.out.println("Email Already Exists");
			return mv;
		}
		else if(p.getPassword().equals(p.getCnfrmpassword()))
		{
			ModelAndView mv1 = new ModelAndView("redirect:/AddProfile");
			mv1.addObject("Profile", p);
			this.pfdao.insert(p);
			return mv1;
		}
		else
		{
			ModelAndView mv1 = new ModelAndView("redirect:/AddProfile");
			System.out.println("Password not match");
			return mv1;
		}
		
		
	}
	
	@RequestMapping(value="/AddCartToDB",method=RequestMethod.POST)
	public ModelAndView AddCartToDB( @RequestParam("quantity") int q, @RequestParam("id")int abc  )
	{
		ModelAndView mv = new ModelAndView("redirect:/cart");
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		 if (auth != null && !auth.getName().equals("anonymousUser"))
		 {
			 String currUser=auth.getName();
		
			 boolean found = false;
			 int id = -1;
			 
			 for(Cart c1 : cartdao.getAllCart())
			 {
				 if(c1.getUsername().equals(currUser) && c1.getPdid()==abc)
				 {
					 found = true;
					 id = c1.getId();
					 break;
				 }
			 }
			 
			 if( found )
			 {
				 Cart c = cartdao.getCartbyId(id);
				 
				 Products p=pdao.getProduct(abc);
				 String qty1=p.getQuantity();
				 int i=Integer.parseInt(qty1);
				 
				 int x = c.getQty();
				 
				 i=i+x-q;
				 System.out.println("i "+i);
				 String qty = String.valueOf(i);
				 p.setQuantity(qty);
				 System.out.println(p.getQuantity());
				 this.pdao.update(p);
				 
				 c.setQty(q);
				 this.cartdao.update(c);
				 System.out.println("Updated");
				 return mv;			 
			 }
			 
			 System.out.println(auth.getName());
			 
			 Cart c = new Cart();
			 
			 Products p=pdao.getProduct(abc);
			 String qty1=p.getQuantity();
			 int i=Integer.parseInt(qty1);
			 i=i-q;
			 System.out.println("i "+i);
			 String qty = String.valueOf(i);
			 p.setQuantity(qty);
			 System.out.println(p.getQuantity());
			 this.pdao.update(p);
			 
			 c.setUsername(auth.getName());
			 c.setPdid(abc);
			 c.setQty(q);
			 this.cartdao.insert(c);
		 }
		 
		return mv;
		
	}

	
	@RequestMapping(value="/UpdateProductToDB",method=RequestMethod.POST)
	public ModelAndView UpdateProductToDB( HttpServletRequest req, @RequestParam("file") MultipartFile file  )
	{
		ModelAndView mv = new ModelAndView("redirect:/ViewProduct");
		
		Products p = new Products();
		
		if(!file.isEmpty())
		{

			try
			{
				
				Cloudinary cloudinary = new Cloudinary(ObjectUtils.asMap(
						  "cloud_name", "kapil05",
						  "api_key", "426113467622283",
						  "api_secret", "5bpQ6dN_ZhAM8EvwWZuWp0n1uP8"));
				
				String path = req.getRealPath("/");
				
				/*System.out.println(path);*/
				
				byte b[] = new byte[file.getInputStream().available()];
				
				file.getInputStream().read(b);
				
				FileOutputStream fos = new FileOutputStream(path + "/image.jpg"); 
				
				fos.write(b);
				
				fos.close();
				
				File f = new File(path + "/image.jpg");
				
				Map uploadResult = cloudinary.uploader().upload(f, ObjectUtils.emptyMap());
				
				System.out.println(uploadResult.get("secure_url"));
							
				p.setImage(uploadResult.get("secure_url").toString());
				
				
			}
			
			catch(Exception e)
			{
				
			}
			
		}
		else
		{
			p.setImage(req.getParameter("image"));
		}
		String params[] = req.getParameterValues("product");
		
		for( int i = 0 ; i<params.length ; i++ )
		{
			switch(i)
			{
			case 0:	p.setPdid(Integer.parseInt(params[i])); break;
			case 1:	p.setName(params[i]); break;
			case 2:	p.setDescription(params[i]); break;
			
			case 3:	p.setPrice(params[i]); break;
			}
		}
			
		p.setCategories(req.getParameter("item"));
		
		p.setQuantity(req.getParameter("quantity"));
		
		String currUser="";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    if (auth != null && !auth.getName().equals("anonymousUser"))
	    {    
			if(req.isUserInRole("ROLE_SUPPLIER"))
	    	{
				currUser=auth.getName();
				p.setSuppliername(currUser);
	    	}
	    }
		/*this.pdao.update(p);*/
		
		
		this.pdao.update(p);
		
		return mv;
	}
	
	@RequestMapping(value="/UpdateCategoryToDB",method=RequestMethod.POST)
	public ModelAndView UpdateCategoryToDB( HttpServletRequest req )
	{
		ModelAndView mv = new ModelAndView("redirect:/ViewCategory");
		
		String params[] = req.getParameterValues("category");
		
		Categories cg = new Categories();
		
		for( int i = 0 ; i<params.length ; i++ )
		{
			switch(i)
			{
			case 0: cg.setCid(Integer.parseInt(params[i])); break;
			case 1:	cg.setName(params[i]); break;
			case 2:	cg.setDescription(params[i]); break;
			}
		}
			
		this.cdao.update(cg);
		
		return mv;
	}
	
	@RequestMapping(value="/UpdateProfileToDB",method=RequestMethod.POST)
	public ModelAndView UpdateProfileToDB( HttpServletRequest req )
	{
		ModelAndView mv = new ModelAndView("redirect:/ViewProfile");
		
		String params[] = req.getParameterValues("profile");
		
		Profiles pf = new Profiles();
		
		for( int i = 0 ; i<params.length ; i++ )
		{
			switch(i)
			{
			case 0: pf.setId(Integer.parseInt(params[i])); break;
			case 1:	pf.setUsername(params[i]); break;
			case 2:	pf.setEmail(params[i]); break;
			case 3: pf.setPassword(params[i]); break;
			case 4: pf.setPhone(params[i]); break;
			case 5: pf.setAddress(params[i]); break;
			}
		}
		
			
		this.pfdao.update(pf);
		
		return mv;
	}
	
	@RequestMapping("/AboutUs")
	public ModelAndView AboutUs()
	{
		ModelAndView mv = new ModelAndView("AboutUs");
		
		return mv;
	}
	
	@RequestMapping("/ContactUs")
	public ModelAndView ContactUs()
	{
		ModelAndView mv = new ModelAndView("ContactUs");
		
		return mv;
	}

	@RequestMapping("/FAQ")
	public ModelAndView FAQ()
	{
		ModelAndView mv = new ModelAndView("FAQ");
		
		return mv;
	}
	
	@RequestMapping("/TermsAndCondition")
	public ModelAndView TermsAndCondition()
	{
		ModelAndView mv = new ModelAndView("TermsAndCondition");
		
		return mv;
	}
	
	@RequestMapping("/CategoryProduct/{name}")
	public ModelAndView CategoryProduct(@PathVariable("name")String name)
	{
		ModelAndView mv = new ModelAndView("CategoryProduct");
		
		mv.addObject("productdata",pdao.categoryProduct(name));
		
		mv.addObject("categorydata", cdao.getCategory(name));
		
		return mv;
	}
}
