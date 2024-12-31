package com.beans;

public class ProductDetails {
	private int proId;
	private String proName;
	private int price;
	private int quantity;
	private String category;
	public ProductDetails(int proId, String proName, int price, int quantity, String category) {
		this.proId = proId;
		this.proName = proName;
		this.price = price;
		this.quantity = quantity;
		this.category = category;
	}
	
	public int getProId() {
		return proId;
	}
	public void setProId(int proId) {
		this.proId = proId;
	}
	public String getProName() {
		return proName;
	}
	public void setProName(String proName) {
		this.proName = proName;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	
	
	
	
}

