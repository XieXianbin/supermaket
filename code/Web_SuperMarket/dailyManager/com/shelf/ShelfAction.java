package com.shelf;

import java.util.List;

import com.mvc.http.aware.HttpAware;

public class ShelfAction extends HttpAware {
	
	ShelfDao shelfDao = new ShelfDao();
	//�����б�
	public String shelfList(){
		List<ShelfBean> shelfList = shelfDao.shelfList();
		request.setAttribute("shelfList", shelfList);
		return SUCCESS;
	}
	
	//���Է�ҳ
	public String test(){
		List<ShelfBean> shelfList = shelfDao.shelfList();
		request.setAttribute("shelfList", shelfList);
		return SUCCESS;
	}
	//���һ��������
	public String addShelf(){
		int shelfId = shelfDao.getShelfIndex();
		request.setAttribute("shelfId", shelfId+1);
		
		return SUCCESS;
	}
	
	//��ӻ���
	public String addShelfMethod(){
		//��ȡ�»�����Ϣ
		//id
		String shelfId = request.getParameter("shelfId");
		//shelfLocation
		String f = request.getParameter("shelfLocation_F");
		String a = request.getParameter("shelfLocation_A");
		String n = request.getParameter("shelfLocation_N");
		String shelfLocation = f+a+n;
		//shelfType
		String shelfType = request.getParameter("shelfType");
		//remarks
		String remarks = request.getParameter("remarks");
		ShelfBean shelfBean = new ShelfBean();
		shelfBean.setShelfId(Integer.parseInt(shelfId));
		shelfBean.setShelfLocation(shelfLocation);
		shelfBean.setShelfType(shelfType);
		shelfBean.setRemarks(remarks);
		int row = shelfDao.addShelf(shelfBean);
		if(row!=0){
			return SUCCESS;
		}else{
			return ERROR;
		}
	}
	
	//updateShelf��ȡ������Ϣ
	public String updateShelf(){
		String ids = request.getParameter("shelfId");
		int shelfId = Integer.parseInt(ids);
		ShelfBean shelfBean = shelfDao.findShelf(shelfId);
		request.setAttribute("shelfBean", shelfBean);
		return SUCCESS;
	}
	//updateShelfMethod���»�����Ϣ
	public String updateShelfMethod(){
		//��ȡ�»�����Ϣ
		//id
		String shelfId = request.getParameter("shelfId");
		//shelfLocation
		String f = request.getParameter("shelfLocation_F");
		String a = request.getParameter("shelfLocation_A");
		String n = request.getParameter("shelfLocation_N");
		String shelfLocation = f+a+n;
		//shelfType
		String shelfType = request.getParameter("shelfType");
		//remarks
		String remarks = request.getParameter("remarks");
		ShelfBean shelfBean = new ShelfBean();
		shelfBean.setShelfId(Integer.parseInt(shelfId));
		shelfBean.setShelfLocation(shelfLocation);
		shelfBean.setShelfType(shelfType);
		shelfBean.setRemarks(remarks);
		int row = shelfDao.updateShelf(shelfBean);
		if(row!=0){
			return SUCCESS;
		}else{
			return ERROR;
		}
	}
}
