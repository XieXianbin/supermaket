package com.storage;

import java.util.List;

import com.mvc.http.aware.HttpAware;
import com.part.PartDao;

public class StorageAction extends HttpAware{
	
	/**
	 * ��ȡ��Ʒ��Ϣ�б�
	 * @return
	 */
	public String listStorage(){
		StorageDao sd = new StorageDao();
		List<StorageBean> storageList =  sd.selectAllStorageInfo();
		if(storageList!=null){
			request.setAttribute("StorageList", storageList);
			return SUCCESS;
		}else{
			return ERROR;
		}
	}
	/**
	 * ���ǰ��ȡ����Ա���ı�ź��������Լ���һ���ֿ�ı��
	 * @return
	 */
	public String editAddNewStorage(){
		PartDao pd = new PartDao();
		List<String> employeeList = pd.selectAllemployee();
		StorageDao sd = new StorageDao();
		int ans = sd.selectMaxStorageId();
		if(employeeList!=null && ans!=-1){
			request.setAttribute("EmployeeList", employeeList);
			request.setAttribute("storageId", (ans+1));
			return SUCCESS;
		}else{
			return ERROR;
		}
	}
	/*
	 * ����µĲֿ�
	 */
	public String AddNewStorage(){
		String storageAddress = request.getParameter("storageAddress");
		String storageArea = request.getParameter("storageArea");
		String storageType = request.getParameter("storageType");
		String employeeId = request.getParameter("employeeId");
		String ID = employeeId.split("-")[0];
		String remarks = request.getParameter("remarks");
		StorageBean sb = new StorageBean();
		sb.setStorageAddress(storageAddress);
		sb.setStorageArea(Float.parseFloat(storageArea));
		sb.setStorageType(storageType);
		sb.setEmployeeId(Integer.parseInt(ID));
		sb.setRemarks(remarks);
		StorageDao sd = new StorageDao();
		if(sd.AddNewStorage(sb)){
			return SUCCESS;
		}else{
			return ERROR;
		}
	}
	/**
	 * �޸�ǰ��ѯ�ֿ���Ϣ
	 * @return
	 */
	public String editStorage(){
		String ID = request.getParameter("storageId");
		StorageDao sd = new StorageDao();
		StorageBean sb = sd.selectOneStorage(Integer.parseInt(ID));
		PartDao pd = new PartDao();
		List<String> employeeList = pd.selectAllemployee();
		String Name = String.valueOf(sb.getEmployeeId())+"-"+pd.selectEmployeeName(sb.getEmployeeId());
		if(sb!=null && employeeList!=null){
			request.setAttribute("Storage", sb);
			request.setAttribute("Name", Name);
			request.setAttribute("EmployeeList", employeeList);
			return SUCCESS;
		}else{
			return ERROR;
		}
	}
	/**
	 * ���²ֿ���Ϣ
	 * @return
	 */
	public String updateStorage(){
		StorageBean sb = new StorageBean();
		String storageId = request.getParameter("storageId");
		String storageAddress = request.getParameter("storageAddress");
		String storageArea = request.getParameter("storageArea");
		String storageType = request.getParameter("storageType");
		String employeeId = request.getParameter("employeeId");
		String ID = employeeId.split("-")[0];
		String remarks = request.getParameter("remarks");
		sb.setStorageId(Integer.parseInt(storageId));
		sb.setStorageAddress(storageAddress);
		sb.setStorageArea(Float.parseFloat(storageArea));
		sb.setStorageType(storageType);
		sb.setEmployeeId(Integer.parseInt(ID));
		sb.setRemarks(remarks);
		StorageDao sd = new StorageDao();
		if(sd.updateStorage(sb)){
			return SUCCESS;
		}else{
			return ERROR;
		}
		
	}
}
