package com.supermarket.action;

import javax.servlet.http.HttpSession;

import com.mvc.http.aware.HttpAware;

public class SuperMarketAction extends HttpAware {

	//�˳�ϵ�y
	public String logout(){
		HttpSession session = request.getSession();
		//ʹsessionʧЧ
		session.invalidate();
		return SUCCESS;
	}
	
	//�������
	public String main() {
		return SUCCESS;
	}
}
