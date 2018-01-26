package com.charliebrown.cart;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
@Entity
public class Cart {

	@Id 
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private String username;
	private String shipaddr;
	private String billaddr;
	private int qty;
	private int pdid;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getShipaddr() {
		return shipaddr;
	}
	public void setShipaddr(String shipaddr) {
		this.shipaddr = shipaddr;
	}
	public String getBilladdr() {
		return billaddr;
	}
	public void setBilladdr(String billaddr) {
		this.billaddr = billaddr;
	}
	public int getQty() {
		return qty;
	}
	public void setQty(int qty) {
		this.qty = qty;
	}
	public int getPdid() {
		return pdid;
	}
	public void setPdid(int pdid) {
		this.pdid = pdid;
	}
	public Cart() {
		super();
	}

	
}
