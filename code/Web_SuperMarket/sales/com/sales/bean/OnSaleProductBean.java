package com.sales.bean;

import java.io.Serializable;

public class OnSaleProductBean implements Serializable{

	
	private int productId;//��ƷId--��Ʒ��
	private String barCode;//������
	
	private String productName;//����
	private float productPrice;
	private String producer;//����
	
	private int count;//�˿͹������Ʒ����--ҳ���ȡ
	private float soloprice;//���ʽ��
	
	private int vipId;//��ԱId��Ϊ����VIP������ʹ��--��Ա��
	private int employeeId;//Ա��ID--ҳ���ȡ-Ա����
	private String employeeName;//
	
	private String payType;//���ʽ
	
	private String salesTime;//����ʱ�䣬ҳ���ȡ
	private String salesWaterNo;
	private String reMarks;
	
	
	
	
	
	public String getProducer() {
		return producer;
	}
	public void setProducer(String producer) {
		this.producer = producer;
	}
	public String getBarCode() {
		return barCode;
	}
	public void setBarCode(String barCode) {
		this.barCode = barCode;
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
	public float getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(float productPrice) {
		this.productPrice = productPrice;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public float getSoloprice() {
		return soloprice;
	}
	public void setSoloprice(float soloprice) {
		this.soloprice = soloprice;
	}
	public int getVipId() {
		return vipId;
	}
	public void setVipId(int vipId) {
		this.vipId = vipId;
	}
	public int getEmployeeId() {
		return employeeId;
	}
	public void setEmployeeId(int employeeId) {
		this.employeeId = employeeId;
	}
	public String getEmployeeName() {
		return employeeName;
	}
	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}
	public String getPayType() {
		return payType;
	}
	public void setPayType(String payType) {
		this.payType = payType;
	}
	public String getSalesTime() {
		return salesTime;
	}
	public void setSalesTime(String salesTime) {
		this.salesTime = salesTime;
	}
	public String getSalesWaterNo() {
		return salesWaterNo;
	}
	public void setSalesWaterNo(String salesWaterNo) {
		this.salesWaterNo = salesWaterNo;
	}
	public String getReMarks() {
		return reMarks;
	}
	public void setReMarks(String reMarks) {
		this.reMarks = reMarks;
	}
	
	
	
	
	
	
}
