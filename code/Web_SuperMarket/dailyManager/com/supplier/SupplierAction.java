package com.supplier;

import java.util.ArrayList;
import java.util.List;

import com.mvc.http.aware.HttpAware;
import com.tools.Utils;

public class SupplierAction extends HttpAware{
	/**
	 * �������й�������Ϣ
	 * @return
	 */
	public String listSupplier(){
		SupplierDao sd = new SupplierDao();
		List<SupplierBean> supplierList = sd.selectAllSupplierInfo();
		if(supplierList!=null){
			request.setAttribute("SupplierList", supplierList);
			return SUCCESS;
		}else{
			return ERROR;
		}
	}
	/**
	 * ���ǰ�������Ӧ�̱�ţ����ڴ˻�����+1,��Ϊ�µĹ�Ӧ�̱��
	 * @return
	 */
	public String editAddSupplier(){
		SupplierDao sd = new SupplierDao();
		int ans = sd.selectMaxSupplierId();
		if(ans!=-1){
			request.setAttribute("companyId", (ans+1));
			return SUCCESS;
		}else{
			return ERROR;
		}
	}
	/**
	 * ��ӹ�Ӧ����Ϣ
	 * @return
	 */
	public String addNewSupplier(){
		String companyName = request.getParameter("companyName");
		String companyShort = request.getParameter("companyShort");
		String companyAddress = request.getParameter("companyAddress");
		String manager = request.getParameter("manager");
		String companyTel = request.getParameter("companyTel");
		String email = request.getParameter("email");
		String postalCode = request.getParameter("postalCode");
		String fax = request.getParameter("fax");
		String bankName = request.getParameter("bankName");
		String bankAccounts = request.getParameter("bankAccounts");
		String addTime = Utils.getDateTime();
		String remarks = request.getParameter("remarks");
		SupplierBean sb = new SupplierBean();
		sb.setAddTime(addTime);
		sb.setBankAccounts(bankAccounts);
		sb.setBankName(bankName);
		sb.setCompanyAddress(companyAddress);
		sb.setCompanyName(companyName);
		sb.setCompanyShort(companyShort);
		sb.setCompanyTel(companyTel);
		sb.setEmail(email);
		sb.setFax(fax);
		sb.setManager(manager);
		sb.setPostalCode(postalCode);
		sb.setRemarks(remarks);
		SupplierDao sd = new SupplierDao();
		if(sd.insertNewSupplierInfo(sb)){
			return SUCCESS;
		}else{
			return ERROR;
		}
	}
	/**
	 * ��ѯ������Ӧ�̵���ϸ��Ϣ
	 * @return
	 */
	public String oneSupplierInfo(){
		String companyId = request.getParameter("companyId");
		SupplierDao sd = new SupplierDao();
		SupplierBean sb = sd.selectOneSupplierInfo(Integer.parseInt(companyId));
		if(sb!=null){
			request.setAttribute("Supplier", sb);
			return SUCCESS;
		}else{
			return ERROR;
		}
	}
	/**
	 * �޸�ǰ��ѯ������������Ϣ
	 * @return
	 */
	public String editSupplier(){
		List<String> bankList = new ArrayList<String>();
		bankList.add("==��ѡ��==");
		bankList.add("�й�����");
		bankList.add("��������");
		bankList.add("��������");
		bankList.add("��ͨ����");
		bankList.add("ũҵ����");
		bankList.add("��������");
		String companyId = request.getParameter("companyId");
		SupplierDao sd = new SupplierDao();
		SupplierBean sb = sd.selectOneSupplierInfo(Integer.parseInt(companyId));
		if(sb!=null){
			request.setAttribute("Supplier", sb);
			request.setAttribute("BankList", bankList);
			return SUCCESS;
		}else{
			return ERROR;
		}
	}
	/**
	 * �޸Ĺ�������Ϣ
	 * @return
	 */
	public String updateSupplier(){
		String companyId = request.getParameter("companyId");
		String companyName = request.getParameter("companyName");
		String companyShort = request.getParameter("companyShort");
		String companyAddress = request.getParameter("companyAddress");
		String manager = request.getParameter("manager");
		String companyTel = request.getParameter("companyTel");
		String email = request.getParameter("email");
		String postalCode = request.getParameter("postalCode");
		String fax = request.getParameter("fax");
		String bankName = request.getParameter("bankName");
		if(bankName.equals("==��ѡ��==")){
			bankName="";
		}
		String bankAccounts = request.getParameter("bankAccounts");
		String addTime = Utils.getDateTime();
		String remarks = request.getParameter("remarks");
		SupplierBean sb = new SupplierBean();
		sb.setCompanyId(Integer.parseInt(companyId));
		sb.setAddTime(addTime);
		sb.setBankAccounts(bankAccounts);
		sb.setBankName(bankName);
		sb.setCompanyAddress(companyAddress);
		sb.setCompanyName(companyName);
		sb.setCompanyShort(companyShort);
		sb.setCompanyTel(companyTel);
		sb.setEmail(email);
		sb.setFax(fax);
		sb.setManager(manager);
		sb.setPostalCode(postalCode);
		sb.setRemarks(remarks);
		SupplierDao sd = new SupplierDao();
		if(sd.updateSupplier(sb)){
			return SUCCESS;
		}else{
			return ERROR;
		}
	}
}
