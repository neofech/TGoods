package com.huake.admin.pojo;

public class Product {
	private int id;
	private String title;
	private String oldMoney;
	private String money;
	private String goodNumber;
	private String goodIntroduction;
	private String sellNumber;
	private String images;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getOldMoney() {
		return oldMoney;
	}
	public void setOldMoney(String oldMoney) {
		this.oldMoney = oldMoney;
	}
	public String getMoney() {
		return money;
	}
	public void setMoney(String money) {
		this.money = money;
	}
	public String getGoodNumber() {
		return goodNumber;
	}
	public void setGoodNumber(String goodNumber) {
		this.goodNumber = goodNumber;
	}
	public String getGoodIntroduction() {
		return goodIntroduction;
	}
	public void setGoodIntroduction(String goodIntroduction) {
		this.goodIntroduction = goodIntroduction;
	}
	public String getSellNumber() {
		return sellNumber;
	}
	public void setSellNumber(String sellNumber) {
		this.sellNumber = sellNumber;
	}
	public String getImages() {
		return images;
	}
	public void setImages(String images) {
		this.images = images;
	}
	@Override
	public String toString() {
		return "Product [id=" + id + ", title=" + title + ", oldMoney=" + oldMoney + ", money=" + money
				+ ", goodNumber=" + goodNumber + ", goodIntroduction=" + goodIntroduction + ", sellNumber=" + sellNumber
				+ ", images=" + images + "]";
	}
}
