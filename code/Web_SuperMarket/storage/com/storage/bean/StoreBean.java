package com.storage.bean;

public class StoreBean {

	private int storeId;//�����
	private int storageId;//�ֿ��� 
	private int purchId;//�ɹ���ˮ��
	private int remainNum;//ʣ������
	private String remarks;//��ע
	private int productId;//��Ʒ���
	private String productName;//��Ʒ����
	//private String storageType;//�ֿ�����
	private String productTime;//��������
	private String expireTime;//����ʱ��
	
	public int getStorageId() {
		return storageId;
	}
	public void setStorageId(int storageId) {
		this.storageId = storageId;
	}
	public int getPurchId() {
		return purchId;
	}
	public void setPurchId(int purchId) {
		this.purchId = purchId;
	}
	public int getStoreId() {
		return storeId;
	}
	public void setStoreId(int storeId) {
		this.storeId = storeId;
	}
	public int getRemainNum() {
		return remainNum;
	}
	public void setRemainNum(int remainNum) {
		this.remainNum = remainNum;
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
//	public String getStorageType() {
//		return storageType;
//	}
//	public void setStorageType(String storageType) {
//		this.storageType = storageType;
//	}
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
	
	
}
