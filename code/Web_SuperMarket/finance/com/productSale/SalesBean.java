package com.productSale;

public class SalesBean {

	private int salesId;//����
	private int productId;//��ƷId--��Ʒ��
	private int count;//�˿͹��������
	private String salesTime;//ʱ��
	private String salesWaterNo;//������ˮ�ţ�����Ա�����+����ʱ�䣩
	private String remarks;//��ע
	private String Time;
	public String getTime() {
		return Time;
	}
	public void setTime(String time) {
		Time = time;
	}
	public int getSalesId() {
		return salesId;
	}
	public void setSalesId(int salesId) {
		this.salesId = salesId;
	}
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
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
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	
	
}
