package com.storage.action;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.mvc.http.aware.HttpAware;
import com.storage.bean.DateAlarmBean;
import com.storage.bean.NumAlarmBean;
import com.storage.dao.StoreAlarmDao;
import com.tools.Utils;

public class StoreAlarmAction extends HttpAware{

	StoreAlarmDao dao=new StoreAlarmDao();
	public String numAlarmList(){
		List<NumAlarmBean> list=dao.getNumAlarmList();
		if(list!=null){
			request.setAttribute("numAlarmList", list);
			return SUCCESS;
		}else{
			return ERROR;
		}
	}
	
	public String dateAlarmList(){
		List<DateAlarmBean> list=dao.getDateAlarmList();
		List<DateAlarmBean> alarmList = new ArrayList<DateAlarmBean>();
		//System.out.println(list.size());
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");//���ڸ�ʽ��
		//��ȡ��ǰʱ��
		String nowDate=Utils.getDate();
		try {
			//��String���͵�����ת��ΪDate����
			Date nowDate1=sdf.parse(nowDate);//��ǰʱ��
			//System.out.println(list.size());
			for(int i=0;i<list.size();i++){
				DateAlarmBean bean=list.get(i);
				//System.out.println("purchId="+bean.getPurchId());
				String expireDate=bean.getExpireTime();//����ʱ��
				Date expireDate1=sdf.parse(expireDate);
				int day=(int) ((expireDate1.getTime()-nowDate1.getTime())/(24*60*60*1000));
				//System.out.println("--"+day);
				bean.setSafeDay(day);
				if(bean.getSafeDay()>bean.getDayLimit()){
//					list.remove(bean);
					//System.out.println("remove");
				}else{
					alarmList.add(bean);
				}
			}
			//System.out.println(list.size());
		} catch (ParseException e) {
			e.printStackTrace();
		}
		request.setAttribute("dateAlarmList", alarmList);
		return SUCCESS;
	}
	
}
