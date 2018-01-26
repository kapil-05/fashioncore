<%@page import="org.springframework.security.core.context.SecurityContextHolder"%>
<%@page import="org.springframework.security.core.Authentication"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="${pageContext.request.contextPath}/"><p style="color:white; font-family:AR CHRISTY; font-size:36px;">FashionCORE</p></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Mens <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="${pageContext.request.contextPath}/CategoryProduct/Mens Formal Shirts">Mens Formal Shirts</a></li>
            <li><a href="${pageContext.request.contextPath}/CategoryProduct/Mens 3 Piece">Mens 3 Piece</a></li>
			<li><a href="${pageContext.request.contextPath}/CategoryProduct/Mens Blazer">Mens Blazer</a></li>
			<li><a href="${pageContext.request.contextPath}/CategoryProduct/Mens Coats">Mens Coats</a></li>
			<li><a href="${pageContext.request.contextPath}/CategoryProduct/Mens Indo Western">Mens Indo Western</a></li>
			<li><a href="${pageContext.request.contextPath}/CategoryProduct/Mens Jacket">Mens Jacket</a></li>
			<li><a href="${pageContext.request.contextPath}/CategoryProduct/Mens Jeans">Mens Jeans</a></li>
			<li><a href="${pageContext.request.contextPath}/CategoryProduct/Mens Kurta">Mens Kurta </a></li>
			<li><a href="${pageContext.request.contextPath}/CategoryProduct/Mens Sherwani">Mens Sherwani</a></li>
			<li><a href="${pageContext.request.contextPath}/CategoryProduct/Mens Suits">Mens Suits</a></li>
			<li><a href="${pageContext.request.contextPath}/CategoryProduct/Mens Casual Pants">Mens Casual Pant</a></li>
			<li><a href="${pageContext.request.contextPath}/CategoryProduct/Mens Formal Trousers">Mens Formal Trouser</a></li>
			<li><a href="${pageContext.request.contextPath}/CategoryProduct/Mens T-Shirts">Mens T-Shirt</a></li>
			<li><a href="${pageContext.request.contextPath}/CategoryProduct/Mens Casual Shirts">Mens Casual Shirt</a></li>
          </ul>
        </li>
       <li class="dropdown">
          <a  class="dropdown-toggle" data-toggle="dropdown" href="#">Kids<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="${pageContext.request.contextPath}/CategoryProduct/Kids Jeans">Kids Jeans</a></li>
            <li><a href="${pageContext.request.contextPath}/CategoryProduct/Kids Shirts">Kids Shirts</a></li>
			<li><a href="${pageContext.request.contextPath}/CategoryProduct/Kids Pants">Kids Pants</a></li>
			<li><a href="${pageContext.request.contextPath}/CategoryProduct/Kids Suits">Kids Suits</a></li>
          </ul>
        </li>
        
        <%
	Authentication auth1 = SecurityContextHolder.getContext().getAuthentication();
	    if (auth1 != null && !auth1.getName().equals("anonymousUser"))
	    {    
	    	if(request.isUserInRole(("ROLE_ADMIN")))
	    	{
	 %>
        <li class="dropdown">
          <a  class="dropdown-toggle" data-toggle="dropdown" href="#">Admin<span class="caret"></span></a>
          <ul class="dropdown-menu">
          	<li><a href="${pageContext.request.contextPath}/AddCategory">Add Category</a></li>
          	<li><a href="${pageContext.request.contextPath}/AddProfile">Add Profile</a></li>
            <li><a href="${pageContext.request.contextPath}/ViewCategory">View Category</a></li>
            <li><a href="${pageContext.request.contextPath}/ViewProduct">View Products</a></li>
			<li><a href="${pageContext.request.contextPath}/ViewProfile">View Profile</a></li>	
          </ul>
        </li>
        <%
	    	}
	    }
        %>
        
        <%
	Authentication auth2 = SecurityContextHolder.getContext().getAuthentication();
	    if (auth2 != null && !auth2.getName().equals("anonymousUser"))
	    {    
	    	if(request.isUserInRole(("ROLE_SUPPLIER")))
	    	{
	 %>
        <li class="dropdown">
          <a  class="dropdown-toggle" data-toggle="dropdown" href="#">Supplier<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="${pageContext.request.contextPath}/ViewCategory">View Category</a></li>
            <li><a href="${pageContext.request.contextPath}/ViewProduct">View Products</a></li>
			<li><a href="${pageContext.request.contextPath}/AddProduct">Add Products</a></li>
          </ul>
        </li>
        
        <%
	    	}        
	    }
        %>
        
       <%--   <%
	Authentication auth3 = SecurityContextHolder.getContext().getAuthentication();
	    if (auth3 != null && !auth3.getName().equals("anonymousUser"))
	    {    
	    	if(request.isUserInRole(("ROLE_USER")))
	    	{
	 %>
        <li class="dropdown">
          <a  class="dropdown-toggle" data-toggle="dropdown" href="#">User<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="${pageContext.request.contextPath}/ViewCategory">View Category</a></li>
            <li><a href="${pageContext.request.contextPath}/ViewProduct">View Products</a></li>
          </ul>
        </li>
        <%
	    	}
	    }
        %> --%>
        
      </ul>
	  <!-- <form class="navbar-form navbar-left">
      <div class="input-group">
        <input type="text" class="form-control" placeholder="Search">
        <div class="input-group-btn">
          <button class="btn btn-default" type="submit">
            <i class="glyphicon glyphicon-search"></i>
          </button>
        </div>
      </div>
    </form> -->
      <ul class="nav navbar-nav navbar-right">
      <%
      Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    if (auth != null && !auth.getName().equals("anonymousUser"))
	    {    
	    	String currUser=auth.getName();
	    	
	    	request.setAttribute("currUser", currUser);
	    	 %>
      	<li><a href="${pageContext.request.contextPath}/cart"><span class="glyphicon glyphicon-shopping-cart"></span>Cart</a></li>
        <li><a><span class="glyphicon glyphicon-user"></span>Welcome ${currUser}</a></li>
        <li><a href="${pageContext.request.contextPath}/Logout"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
        <%
	    }
	    else
	    {
	    	%>
	    	<li><a href="${pageContext.request.contextPath}/cart"><span class="glyphicon glyphicon-shopping-cart"></span>Cart</a></li>
	        <li><a href="${pageContext.request.contextPath}/AddProfile"><span class="glyphicon glyphicon-user"></span>SignUp</a></li>
	        <li><a href="${pageContext.request.contextPath}/loginpage"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
	        <%
	    }
        
        
        %>
      </ul>
    </div>
  </div>
</nav>

