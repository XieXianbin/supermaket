package com.afterSale.bean;

public class AfterSale {
	
	private int afterSaleId;//�˻����
	private int purchId;//��Ʒ��
	private String productName;//��Ʒ����
	private float money;//�۸�
	private int employeeId;//����Ա
	private String date;//ʱ��
	private String reason;//ԭ��
	private String remarks;//��ע
	public int getAfterSaleId() {
		return afterSaleId;
	}
	public void setAfterSaleId(int afterSaleId) {
		this.afterSaleId = afterSaleId;
	}
	public int getPurchId() {
		return purchId;
	}
	public void setPurchId(int purchId) {
		this.purchId = purchId;
	}
	public float getMoney() {
		return money;
	}
	public void setMoney(float money) {
		this.money = money;
	}
	public int getEmployeeId() {
		return employeeId;
	}
	public void setEmployeeId(int employeeId) {
		this.employeeId = employeeId;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}

}
