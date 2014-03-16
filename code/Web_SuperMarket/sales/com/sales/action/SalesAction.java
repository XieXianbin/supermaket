package com.sales.action;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import com.employee.EmployeeBean;
import com.employee.EmployeeDao;
import com.goods.ProductBean;
import com.mvc.http.aware.HttpAware;
import com.sales.bean.OnSaleProductBean;
import com.sales.bean.SalesBean;
import com.sales.dao.SalesDao;

public class SalesAction extends HttpAware {

	SalesDao dao = new SalesDao();
	
	
	
	
	//���������룬��ȡ��Ʒ��Ϣ
	public String inquireProductData(){
		String barcode=request.getParameter("barcode");
		ProductBean bean=dao.selectOneProduct(barcode);
		
		
		String vipId=request.getParameter("vipId");//��ȡҳ��Ļ�Ա������
		System.out.println("ҳ�洫�ݹ�����vipId��"+vipId);
		HttpSession session=request.getSession();
		int seVipid = 0;
		if(session.getAttribute("seVipId")!=null){//Ԥ��session��ֹ����
			seVipid=(Integer) session.getAttribute("seVipId");//��ȡsession�Ļ�Ա������
			System.out.println("session�����ȡ��vipId��"+seVipid);
			
		}

		
		if(vipId.equals("")&&seVipid==0){//ҳ���Ա����Ϊ�ղ���sessionΪ0����ʾû��ʹ�û�Ա��
			session.setAttribute("seVipId", 0);
			
		}
		if(!vipId.equals("")){//ҳ���ȡ�Ĳ�Ϊ�գ�session������Ϊ�û�ԱId
			session.setAttribute("seVipId", Integer.parseInt(vipId));
			
		}
		if(vipId.equals("")&&seVipid!=0){//ҳ��Ϊ�գ�session������ֵ,˵�����Ǹù˿͵ĵ�һ����Ʒ��ѯ
			//��������
			
		}
		
		
		
		if(bean!=null){
			request.setAttribute("productData", bean);
			return SUCCESS;
		}
		return ERROR;
	}
	
	
	public String addToBuyList(){
		//ÿ��ѯ��һ����Ʒ��Ϣ���Ͱ���Ʒ�ŵ�session����
		HttpSession session=request.getSession();
		
		OnSaleProductBean salebean=new OnSaleProductBean();//���˹������õ���bean
		
		
		String barcode=request.getParameter("barcode");
		ProductBean pbean=dao.selectOneProduct(barcode);//��ѯ��Ʒ��Ϣ
		salebean.setProductId(pbean.getProductId());
		salebean.setProductName(pbean.getProductName());
		salebean.setProductPrice(pbean.getProductPrice());
		salebean.setProducer(pbean.getProducer());
		
		String count=request.getParameter("count");//��ȡ��������
		salebean.setCount(Integer.parseInt(count));
		
		if(session.getAttribute("seVipId")!=null){
			int vipId=(Integer) session.getAttribute("seVipId");//��ȡ��Ա������
			salebean.setVipId(vipId);//��ӵ��嵥��ʱ��һ����sessionΪ׼
			System.out.println("��ӵ��嵥��VIPId��"+vipId);
		}else{
			
			salebean.setVipId(0);//��ӵ��嵥��ʱ��һ����sessionΪ׼,session��ȡ������ʱ����ΪĬ�ϵ�0
			System.out.println("��ӵ��嵥��VIPId��"+0);
		}
		
		
//		System.out.println(request.getSession().getAttribute("loginId"));
		String employeeId=String.valueOf(request.getSession().getAttribute("loginId"));//��ȡ����Ա����Ϣ
//		System.out.println(employeeId);
		EmployeeDao  edao=new EmployeeDao();
		EmployeeBean ebean=edao.findEmployee(Integer.parseInt(employeeId));
//		System.out.println(ebean);
		salebean.setEmployeeId(Integer.parseInt(employeeId));
		salebean.setEmployeeName(ebean.getEmployeeName());
		
		salebean.setSoloprice(pbean.getProductPrice()*Integer.parseInt(count));//ĳ����Ʒ�ļ�Ǯ
		
		salebean.setPayType("");
		salebean.setReMarks("");
	
				
//��������ĸ�ʽ������				
//				double   f   =   111231.5585; 
//				BigDecimal   b   =   new   BigDecimal(f); 
//				double   f1   =   b.setScale(2,   BigDecimal.ROUND_HALF_UP).doubleValue(); 
				
			
			if(session.getAttribute("buyList")==null){
				float addPrice=0;
				List<OnSaleProductBean> buyList=new ArrayList<OnSaleProductBean>();
				buyList.add(salebean);
				addPrice=addPrice+pbean.getProductPrice()*Integer.parseInt(count);//Ӧ�����
				
				BigDecimal   b   =   new   BigDecimal(addPrice); 
				float f2=b.setScale(2,BigDecimal.ROUND_HALF_UP).floatValue();
				
				session.setAttribute("addPrice", f2);
				session.setAttribute("buyList", buyList);
			}else{
				List<OnSaleProductBean> buyList=(List<OnSaleProductBean>) session.getAttribute("buyList");
				buyList.add(salebean);
				float  addPrice=(Float) session.getAttribute("addPrice");
				addPrice=addPrice+pbean.getProductPrice()*Integer.parseInt(count);//Ӧ�����
				
				BigDecimal   b   =   new   BigDecimal(addPrice); 
				float f2=b.setScale(2,BigDecimal.ROUND_HALF_UP).floatValue();
				
				session.setAttribute("addPrice", f2);
				session.setAttribute("buyList", buyList);
				
//				session.setMaxInactiveInterval(20);
				
			}
					
					return SUCCESS;
		
	}
	
	
	public String clearList(){//��չ����嵥
		
		HttpSession session=request.getSession();
		
		session.removeAttribute("seVipId");
		session.removeAttribute("buyList");
		session.removeAttribute("addPrice");
//		session.setAttribute("seVipId", 0);
		
		return SUCCESS;
		
	}
	
	
	public String deletePro(){
		
//		System.out.println("action-dele");
		String proid=request.getParameter("proid");
//		System.out.println(proid);
		
		HttpSession session=request.getSession();
		List<OnSaleProductBean> buyList=(List<OnSaleProductBean>) session.getAttribute("buyList");
		float  addPrice=(Float) session.getAttribute("addPrice");
		for(int i=0;i<buyList.size();i++){
			
			
			
			OnSaleProductBean osb=buyList.get(i);
			if((osb.getProductId()+"").equals(proid)){
//				System.out.println(i);
				addPrice=addPrice-osb.getProductPrice()*osb.getCount();
				buyList.remove(i);
				break;
			}
		}
		
		BigDecimal   b   =   new   BigDecimal(addPrice); 
		float f2=b.setScale(2,BigDecimal.ROUND_HALF_UP).floatValue();
		
		session.setAttribute("addPrice", f2);
		
		session.setAttribute("buyList", buyList);

		
		
		
		
		return SUCCESS;
		
	}
	public String finishOneDeal(){
		
		HttpSession session=request.getSession();
		List<OnSaleProductBean> buyList=null;
		
		
		if(session.getAttribute("buyList")!=null){
			buyList=(List<OnSaleProductBean>) session.getAttribute("buyList");
			
		}else{
			
			return ERROR;
		}
		
		
		String paytype=request.getParameter("PayType");
		
		
		for(int i=0;i<buyList.size();i++){
			
			OnSaleProductBean osb=buyList.get(i);
			SalesBean sb=new SalesBean();
			
//			private int salesId;//����
//			private int productId;//��ƷId--��Ʒ��
//			private float productPrice;//��Ʒ�ۼ�
//			private int count;//�˿͹��������
//			private int employeeId;//����Ա��Ա�����
//			private String salesTime;//ʱ��
//			private String salesWaterNo;//������ˮ�ţ�����Ա�����+����ʱ�䣩
//			private int vipId;//��ԱId
//			private String payType;//���ʽ(�ֽ��ˢ����������)
//			private String remarks;//��ע
			sb.setProductId(osb.getProductId());
			sb.setProductPrice(osb.getProductPrice());
			sb.setCount(osb.getCount());
			sb.setEmployeeId(osb.getEmployeeId());
			Date date=new Date();
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String s=sdf.format(date);
			String s1=s.replace("-", "");
			String s2=s1.replace(" ", "");
			String s3=s2.replace(":", "");
//			System.out.println(s3);
			sb.setSalesTime(s3);
			sb.setSalesWaterNo(osb.getEmployeeId()+s3);
			
			sb.setVipId(osb.getVipId());
			
//			String vipId=(String) session.getAttribute("vipId");
//			if(vipId.equals("")){
//				sb.setVipId(0000);
//			}else{
//				sb.setVipId(Integer.parseInt(vipId));
//			}
			
			sb.setPayType(paytype);
			sb.setRemarks("");
			
			dao.insertSales(sb);//���潻�׼�¼�����۱�
			
			
			if(osb.getVipId()!=0){	//���ӻ�Ա����
				System.out.println(osb.getVipId());
				int jifen=dao.getJifen(osb.getVipId());
				System.out.println("ԭ�л��֣�"+jifen);
				jifen=(int) (jifen+osb.getProductPrice()*osb.getCount());
				System.out.println("����֮��Ļ��֣�"+jifen);
				dao.upJifen(osb.getVipId(),jifen);
				
			}
		
			
			
		}
		session.removeAttribute("seVipId");
		session.removeAttribute("buyList");
		session.removeAttribute("addPrice");
//		session.setAttribute("seVipId", 0);
		
//		session.invalidate();
		
		
		return SUCCESS;
		
	}

	public String getSalesList() {
		
		
		
		List<SalesBean> list = dao.getSalesList();


		if (list != null) {
			request.setAttribute("salesList", list);
			return SUCCESS;

		} else {
			return ERROR;

		}

	}
	

	

	public String findSalesData(){
		int id=Integer.parseInt(request.getParameter("id"));
		SalesBean sb=dao.findSalesData(id);
		if(sb!=null){
			request.setAttribute("salesData", sb);
			return SUCCESS;
		}
		return ERROR;
	}
	
	public String salesDetails(){
		int id=Integer.parseInt(request.getParameter("id"));
		SalesBean sb=dao.findSalesData(id);
		if(sb!=null){
			request.setAttribute("salesData", sb);
			return SUCCESS;
		}
		return ERROR;
	}
	
}
