package com.goodsType;

public class GoodsTypeBean {

//	��Ʒ����productType_tab)					
//	�ֶ�	�ֶ�����	����	�Ƿ�Ϊ��	�Ƿ�����	˵��
//	productTypeId	int		��	��	��Ʒ�����
//	productTypeName	varchar	50	��		��Ʒ�������
//	remarks	Text				��ע

	
	
	private int productTypeId;
	private String productTypeName;
	private String remarks;
	public int getProductTypeId() {
		return productTypeId;
	}
	public void setProductTypeId(int productTypeId) {
		this.productTypeId = productTypeId;
	}
	public String getProductTypeName() {
		return productTypeName;
	}
	public void setProductTypeName(String productTypeName) {
		this.productTypeName = productTypeName;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	
}
