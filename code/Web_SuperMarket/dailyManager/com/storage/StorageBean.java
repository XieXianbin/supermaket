package com.storage;

public class StorageBean {
	private int storageId;/*�ֿ���*/
	private String storageAddress;/*�ֿ��ַ*/
	private float storageArea;/*�ֿ����*/
	private String storageType;/*�ֿ�����*/
	private int employeeId;/*�����˱��*/
	private String employeeName;
	public String getEmployeeName() {
		return employeeName;
	}
	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}
	private String remarks;/*��ע*/
	public int getStorageId() {
		return storageId;
	}
	public void setStorageId(int storageId) {
		this.storageId = storageId;
	}
	public String getStorageAddress() {
		return storageAddress;
	}
	public void setStorageAddress(String storageAddress) {
		this.storageAddress = storageAddress;
	}
	public float getStorageArea() {
		return storageArea;
	}
	public void setStorageArea(float storageArea) {
		this.storageArea = storageArea;
	}
	public String getStorageType() {
		return storageType;
	}
	public void setStorageType(String storageType) {
		this.storageType = storageType;
	}
	public int getEmployeeId() {
		return employeeId;
	}
	public void setEmployeeId(int employeeId) {
		this.employeeId = employeeId;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	

}
