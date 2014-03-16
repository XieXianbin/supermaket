package com.recordcheck;


import java.util.List;

import com.mvc.http.aware.HttpAware;

public class RecordcheckAction extends HttpAware{
	RecordcheckDao dao =new RecordcheckDao();
	
	
    public String AllRecord(){
    	
   try{ 
	   String ids=	request.getSession().getAttribute("loginId").toString();
	  
    int id =Integer.parseInt(ids);
	List<checkMode> list=dao.allcheck(id);
	  request.setAttribute("allList", list);
	    
   }catch(Exception e){
	   return ERROR;
   }

    
    	
  
    return SUCCESS;
    }
    //ĳ�³ٵ������ˣ����,�Ӱ�,����
    public String dateList(){
    	
    	String datime=request.getParameter("datime");
    	
    	String ids=request.getSession().getAttribute("loginId").toString();
    	int id=Integer.parseInt(ids);
    	Mode mm=dao.oneMode(id, datime);
    	request.setAttribute("datime",datime);
    	
    	request.setAttribute("ymode", mm);
    	return SUCCESS;
    }
    //�ٵ������ˣ��Ӱ�,����
   	//�ٵ��򿨵ļ�¼
       
   		public String workLate(){
   			String ids=request.getSession().getAttribute("loginId").toString();
   	    	int id=Integer.parseInt(ids);
   	    	String time=request.getParameter("dtime");
   	    	List<checkMode> list2=	dao.getLate(id, time);
   	    	request.setAttribute("ddtime",time);
   	    	request.setAttribute("workLate", list2);
   			return SUCCESS;
   		}
   		//���˴򿨵ļ�¼
   	    
   			public String workEarly(){
   				String ids=request.getSession().getAttribute("loginId").toString();
   		    	int id=Integer.parseInt(ids);
   		    String time=request.getParameter("dtime");
   		   // System.out.println(time);
   		    	List<checkMode> list3=	dao.getEarly(id, time);
   		    	request.setAttribute("ddtime",time);
   		    	request.setAttribute("workEarly", list3);
   				return SUCCESS;
   			}
   			
   			//�����򿨵ļ�¼
   		    
   			public String workAbsence(){
   				String ids=request.getSession().getAttribute("loginId").toString();
   		    	int id=Integer.parseInt(ids);
   		    	String time=request.getParameter("dtime");
   		    	List<checkMode> list4=	dao.getAbsence(id, time);
   		    	request.setAttribute("ddtime",time);
   		    	request.setAttribute("workAbsence", list4);
   				return SUCCESS;
   			}
   //�Ӱ�򿨵ļ�¼
   		    
   			public String workAdd(){
   				String ids=request.getSession().getAttribute("loginId").toString();
   		    	int id=Integer.parseInt(ids);
   		    	String time=request.getParameter("dtime");
   		    	List<checkMode> list5=	dao.getAdd(id, time);
   		    	request.setAttribute("ddtime",time);
   		    	request.setAttribute("workAdd", list5);
   				return SUCCESS;
   			}
    
    
	
}
