package com.goodsbean;

public class alarm {

	private int alarmId;
	private int productId;//��Ʒ���
	private int storageCountLimit;//�����Ʒ��������
	private int marketCountLimit;//������Ʒ��������
	private int dayLimit;//�ౣ���ڵ�����
	private String remarks;
	public int getAlarmId() {
		return alarmId;
	}
	public void setAlarmId(int alarmId) {
		this.alarmId = alarmId;
	}
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
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
	
}
