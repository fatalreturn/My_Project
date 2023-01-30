package model;

public class Item {
	private Integer item_id; //상품 번호
	private String itemName;//상품 이름
	private Integer price;//상품 가격
	private String info;//상품 설명
	private String picturUrl;//파일명
	public void setItem_id(Integer item_id) {
		this.item_id = item_id;
	}
	public Integer getItem_id() {
		return item_id;
	}
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public String getPicturUrl() {
		return picturUrl;
	}
	public void setPicturUrl(String picturUrl) {
		this.picturUrl = picturUrl;
	}
}
