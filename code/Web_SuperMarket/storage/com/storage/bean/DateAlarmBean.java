package com.storage.bean;

public class DateAlarmBean {

	private int storageId;//�ֿ���
	private int productId;//��Ʒ���
	private String productName;//��Ʒ����
	private int purchId;//�ɹ���ˮ��
	private String productTime;//��������
	private String expireTime;//����ʱ��
	private int safeDay;//�ౣ��������
	private int dayLimit;//�ౣ������������
	public int getStorageId() {
		return storageId;
	}
	public void setStorageId(int storageId) {
		this.storageId = storageId;
	}
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public int getPurchId() {
		return purchId;
	}
	public void setPurchId(int purchId) {
		this.purchId = purchId;
	}
	public String getProductTime() {
		return productTime;
	}
	public void setProductTime(String productTime) {
		this.productTime = productTime;
	}
	public String getExpireTime() {
		return expireTime;
	}
	public void setExpireTime(String expireTime) {
		this.expireTime = expireTime;
	}
	public int getSafeDay() {
		return safeDay;
	}
	public void setSafeDay(int safeDay) {
		this.safeDay = safeDay;
	}
	public int getDayLimit() {
		return dayLimit;
	}
	public void setDayLimit(int dayLimit) {
		this.dayLimit = dayLimit;
	}
	
	
}
