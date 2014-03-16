package com.empSaleStatistics;


import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import com.employee.EmployeeBean;
import com.mvc.http.aware.HttpAware;

public class EmpSaleStaAction extends HttpAware{
	
	
	EmpSaleStaDao dao=new EmpSaleStaDao();
	
	
	
	public String empSaleStatisticsList(){
		
		ArrayList<EmpSaleStaBean> wuxuList=new ArrayList<EmpSaleStaBean>();
		Date date=new Date();
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM");
		String dat=sdf.format(date).replace("-", "");;
		if(request.getParameter("selectDate")!=null){//���ҳ��δ��ȡ����Ĭ��Ϊ����
			
			if(!request.getParameter("selectDate").equals("")){
				//2013-11-11
//				System.out.println("��ȡ����ʱ�䣺"+request.getParameter("selectDate"));
				String sd=request.getParameter("selectDate");
				String sd1=sd.replace("-", "");
				String sd2=sd1.substring(0, 6);
				dat=sd2;
			}

		}
//		System.out.println("��ȡ���ʱ�䣺"+dat);
		String dattt=dat.substring(0, 4)+"��"+dat.substring(4)+"��";
		request.setAttribute("dattt", dattt);
//		System.out.println("�����ʱ�䣺"+dattt);
		
		ArrayList<EmployeeBean> emList=dao.getEmployeeList();//��ȡ����Ա����
		
		//��������Ա
		for(int s=0;s<emList.size();s++){
			float money = 0;
			int employeeId=0;
			String employeeName="";
			EmpSaleStaBean bean=new EmpSaleStaBean();//Ҫ���ص������ظ���bean
			
			EmployeeBean eBean=emList.get(s);
//			System.out.println("��"+(s+1)+"������Ա"+eBean.getEmployeeName());//////////////////
			ArrayList<EmpSaleStaBean> everyList=dao.getEveryEmpSaleStaList(eBean.getEmployeeId(),dat);
			//����ÿһλ����Ա��������Ϣ
			for(int i=0;i<everyList.size();i++){
				
				EmpSaleStaBean esBean=everyList.get(i);
				employeeName=esBean.getEmployeeName();
//				System.out.println(employeeName+"�����ۼ�¼");//////////
//				System.out.println(esBean.getProductId());///////////////////
				employeeId=esBean.getEmployeeId();
				money=money+esBean.getProductPrice()*esBean.getCount();//���µ������ܶ�
				
			}
			
			
			
			bean.setEmployeeId(employeeId);
			bean.setEmployeeName(employeeName);
			bean.setMoney(money);
			wuxuList.add(bean);
		}
		

		
		
		//�������۶�����
		EmpSaleStaBean tebean=new EmpSaleStaBean();
		for(int i=0;i<wuxuList.size();i++){
			for(int j=0;j<wuxuList.size()-i-1;j++){
				if(wuxuList.get(j).getMoney()<wuxuList.get(j+1).getMoney()){
					tebean=wuxuList.get(j+1);
					wuxuList.set(j+1, wuxuList.get(j));
					wuxuList.set(j, tebean);
				}
			}
		}
		
		
//		for(int i=0;i<wuxuList.size();i++){
//			EmpSaleStaBean ceshibean=wuxuList.get(i);
//			System.out.println("�����ĵ�"+(i+1)+"���ε����۶"+ceshibean.getMoney());
//		}
		
		
		
		
		
		
		
		request.setAttribute("returnList", wuxuList);
			return SUCCESS;
	}
	

}
