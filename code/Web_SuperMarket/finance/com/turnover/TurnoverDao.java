package com.turnover;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mvc.connection.basic.ConnectionAware;

public class TurnoverDao extends ConnectionAware{
	/**
	 * ��ȡĳʱ������۶�����۱���
	 * @param id
	 * @param time
	 * @return
	 */
	public List<TurnoverBean> selectTurnoverToday(String id ,String time){
		List<TurnoverBean> list = new ArrayList<TurnoverBean>();
		PreparedStatement ps = null;
		//--��ѯ�ܵĽ��ױ���
		String newTime=time.replaceFirst("-", "��");
		String FinalTime = newTime.replaceFirst("-", "��");
		FinalTime+="��";
		time = time.replace("-", "");
		String sql = "SELECT count(distinct salesWaterNo) as SaleNumber FROM sales_tab where salesTime like '"+time+"%'";
		try {
			ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			if(rs.next()){
				TurnoverBean tb = new TurnoverBean();
				int count = Integer.parseInt(rs.getString("SaleNumber"));
				tb.setCount(count);
				float money = selectMoney(time);
				tb.setMoney(money);
				tb.setTime(FinalTime);
				list.add(tb);
				return list;
			}else{
				return null;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
	/**
	 * ��ȡĳ��ʱ����������۶�
	 * @param time
	 * @return
	 */
	public float selectMoney(String time){
		PreparedStatement ps = null;
		String sql = "select sum(count*productPrice) as Money from sales_tab where salesTime like '"+time+"%'";
		try {
			ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			if(rs.next()){
				try{
					float money = Float.parseFloat(rs.getString("Money"));
					return money;
				}catch(Exception e){
					return 0;
				}
			}else{
				return 0;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return 0;
		}
	}
	/**
	 * ��ѯ�޶���ݵ�12���µ����۶��
	 * @param id
	 * @param time
	 * @return
	 */
	public List<TurnoverBean> selectTurnoverYear(String id ,String time){
		List<TurnoverBean> list = new ArrayList<TurnoverBean>();
		for(int i = 1;i<=12;i++){
			PreparedStatement ps = null;
			String newTime = null;
			String FinalTime = null;
			if(i<10){
				newTime =time+"��0"+String.valueOf(i)+"��";
				FinalTime = time+"0"+String.valueOf(i);
			}else{
				newTime =time+"��"+String.valueOf(i)+"��";
				FinalTime = time+String.valueOf(i);
			}
			String sql = "SELECT count(distinct salesWaterNo) as SaleNumber FROM sales_tab where salesTime like '"+FinalTime+"%'";
			try {
				ps = conn.prepareStatement(sql);
				ResultSet rs = ps.executeQuery();
				if(rs.next()){
					TurnoverBean tb = new TurnoverBean();
					int count = Integer.parseInt(rs.getString("SaleNumber"));
					tb.setCount(count);
//					System.out.println(FinalTime+"----------------");
					float money = selectMoney(FinalTime);
					tb.setMoney(money);
					tb.setTime(newTime);
					list.add(tb);
				}
			} catch (SQLException e) {
				//e.printStackTrace();
			}
		}
		return list;
	}
	/**
	 * ÿ���µ�����������۶�ͳ��
	 * @param id
	 * @param time
	 * @return
	 */
	public List<TurnoverBean> selectTurnoverMonth(String id ,String time){
		List<TurnoverBean> list = new ArrayList<TurnoverBean>();
		int year = Integer.parseInt(time.split("-")[0]);
		int month = Integer.parseInt(time.split("-")[1]);
		int day;
		if(month==4||month==6||month==9||month==11){
			day=30;
		}else if(month==2){
			if((year%400==0)||(year%4==0 && year%100!=0)){
				day=29;
			}else{
				day=28;
			}
		}else{
			day=31;
		}	
		for(int i=1;i<=day;i++){
			PreparedStatement ps = null;
			String newTime = time.replace("-", "��");
			String FinalTime = time.replace("-", "");
			if(i<10){
				newTime +="��0"+String.valueOf(i)+"��";
				FinalTime +="0"+String.valueOf(i);
			}else{
				newTime +="��"+String.valueOf(i)+"��";
				FinalTime +=String.valueOf(i);
			}
			String sql = "SELECT count(distinct salesWaterNo) as SaleNumber FROM sales_tab where salesTime like '"+FinalTime+"%'";
			try {
				ps = conn.prepareStatement(sql);
				ResultSet rs = ps.executeQuery();
				if(rs.next()){
					TurnoverBean tb = new TurnoverBean();
					int count = Integer.parseInt(rs.getString("SaleNumber"));
					tb.setCount(count);
	//				System.out.println(FinalTime+"----------------");
					float money = selectMoney(FinalTime);
					tb.setMoney(money);
					tb.setTime(newTime);
					list.add(tb);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;
	}
}
