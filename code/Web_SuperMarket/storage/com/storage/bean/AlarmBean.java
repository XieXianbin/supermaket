package com.storage.bean;

public class AlarmBean {

	private int alarmId;//��ˮ��
	private int storageCountLimit;//�����Ʒ��������
	private int marketCountLimit;//������Ʒ��������
	private int dayLimit;//�ౣ������������
	private String remarks;//��ע
	private int productId;//��Ʒ���
	private String productName;//��Ʒ����
	
	public int getAlarmId() {
		return alarmId;
	}
	public void setAlarmId(int alarmId) {
		this.alarmId = alarmId;
	}
	public int getStorageCountLimit() {
		return storageCountLimit;
	}
	public void setStorageCountLimit(int storageCountLimit) {
		this.storageCountLimit = storageCountLimit;
	}
	public int getMarketCountLimit() {
		return marketCountLimit;
	}
	public void setMarketCountLimit(int marketCountLimit) {
		this.marketCountLimit = marketCountLimit;
	}
	public int getDayLimit() {
		return dayLimit;
	}
	public void setDayLimit(int dayLimit) {
		this.dayLimit = dayLimit;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
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
	
	
	
}
