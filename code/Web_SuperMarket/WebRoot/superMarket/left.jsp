<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
<title>����ҳ��</title>

<script src="js/prototype.lite.js" type="text/javascript"></script>
<script src="js/moo.fx.js" type="text/javascript"></script>
<script src="js/moo.fx.pack.js" type="text/javascript"></script>

<style>
body {
	font:12px Arial, Helvetica, sans-serif;
	color: #000;
	background:url(../images/lbg.jpg);
	background-repeat:no-repeat
}
#container {
	width: 182px;
}
H1 {
	font-size: 12px;
	margin: 0px;
	width: 182px;
	cursor: pointer;
	height: 30px;
	line-height: 20px;	
}
H1 a {
	display: block;
	width: 182px;
	color: #000;
	height: 30px;
	text-decoration: none;
	moz-outline-style: none;
	background-image: url(images/menu_bgs.gif);
	background-repeat: no-repeat;
	line-height: 30px;
	text-align: center;
	margin: 0px;
	padding: 0px;
}
.content{
	width: 182px;
	height: 26px;
	
}
.MM ul {
	list-style-type: none;
	margin: 0px;
	padding: 0px;
	display: block;
}
.MM li {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	color: #333333;
	list-style-type: none;
	display: block;
	text-decoration: none;
	height: 26px;
	width: 182px;
	padding-left: 0px;
}
.MM {
	width: 182px;
	margin: 0px;
	padding: 0px;
	left: 0px;
	top: 0px;
	right: 0px;
	bottom: 0px;
	clip: rect(0px,0px,0px,0px);
}
.MM a:link {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	color: #333333;
	background-image: url(images/menu_bg1.gif);
	background-repeat: no-repeat;
	height: 26px;
	width: 182px;
	display: block;
	text-align: center;
	margin: 0px;
	padding: 0px;
	overflow: hidden;
	text-decoration: none;
}
.MM a:visited {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	color: #333333;
	background-image: url(images/menu_bg1.gif);
	background-repeat: no-repeat;
	display: block;
	text-align: center;
	margin: 0px;
	padding: 0px;
	height: 26px;
	width: 182px;
	text-decoration: none;
}
.MM a:active {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	color: #333333;
	background-image: url(images/menu_bg1.gif);
	background-repeat: no-repeat;
	height: 26px;
	width: 182px;
	display: block;
	text-align: center;
	margin: 0px;
	padding: 0px;
	overflow: hidden;
	text-decoration: none;
}
.MM a:hover {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	font-weight: bold;
	color: #006600;
	background-image: url(images/menu_bg2.gif);
	background-repeat: no-repeat;
	text-align: center;
	display: block;
	margin: 0px;
	padding: 0px;
	height: 26px;
	width: 182px;
	text-decoration: none;
}
</style>
</head>
<body>

<table width="98%" height="280" border="0" cellpadding="0" cellspacing="0" bgcolor="#EEF2FB" align="center" style="top:15px;">
<tr>
      <td width="10" height="29"><img src="Left/bg_left_tl.gif"/></td>
    <td width="1237" 
    style="FONT-SIZE: 18px; BACKGROUND-IMAGE: url(../images/bg_left_tc.gif); COLOR: white; FONT-FAMILY: system">    </td>
      <td width=11><img src="Left/bg_left_tr.gif"/></td>
</tr>
  <tr>
    <td valign="top" colspan="3">
    <div id="container">
    <c:forEach items="${loginState}" var="state">
	    <c:if test="${state==101}">
	      <h1 class="type"><a href="javascript:void(0)">���۹���</a></h1>
	      <div class="content">
	        <table width="100%" border="0" cellspacing="0" cellpadding="0">
	          <tr>
	            <td><img src="images/menu_topline.gif" width="182" height="5" /></td>
	          </tr>
	        </table>
	        <ul class="MM">
	          <li><a href="../sales/onSale.jsp" target="rightFrame">���۹���</a></li>
	          <li><a href="../sales/salesList.do" target="rightFrame">�˵���ѯ</a></li>
	          <li><a href="../sales/vipList.do" target="rightFrame">��Ա��Ϣ����</a></li>
	        </ul>
	      </div>
	   </c:if>
	   <c:if test="${state==102}">
	      <h1 class="type"><a href="javascript:void(0)">������Ʒ����</a></h1>
	      <div class="content">
	        <table width="100%" border="0" cellspacing="0" cellpadding="0">
	          <tr>
	            <td><img src="images/menu_topline.gif" width="182" height="5" /></td>
	          </tr>
	        </table>
	        <ul class="MM">
	           <li><a href="../goods/upgoodsList.action" target="rightFrame">��Ʒ�ϼ�</a></li>
	          <li><a href="../goods/downgoodsList.action" target="rightFrame">��Ʒ�¼�</a></li>
	          <li><a href="../goods/loseList.action" target="rightFrame">�������</a>
	          <li><a href="../goods/onsellList.action" target="rightFrame">������Ʒ��ѯ</a></li>
	          <li><a href="../goods/alarmList.action" target="rightFrame">������Ʒ����</a></li>

	        </ul>
	      </div>
	      </c:if>
	      <c:if test="${state==103}">
	      	<h1 class="type"><a href="javascript:void(0)">�ճ�����</a></h1>
	     	<div class="content">
	        <table width="100%" border="0" cellspacing="0" cellpadding="0">
	          <tr>
	            <td><img src="images/menu_topline.gif" width="182" height="5" /></td>
	          </tr>
	        </table>
	        <ul class="MM">
	        	<c:if test="${loginDeptId==1000}">	  
	        		<li><a href="../dailyManager/employee/employeeList.do" target="rightFrame">Ա������</a></li>
	        		<li><a href="../dailyManager/part/partList.action" target="rightFrame">���Ź���</a></li>
	        		<li><a href="../dailyManager/record/CheckList.action" target="rightFrame">���ڹ���</a></li>
	        		<li><a href="../dailyManager/supplier/supplierList.action" target="rightFrame">��Ӧ�̹���</a></li> 
	        		<li><a href="../dailyManager/goods/productList.action" target="rightFrame">��Ʒ����</a></li>
	        		<li><a href="../dailyManager/storage/storageList.action" target="rightFrame">�ֿ����</a></li>
	        		<li><a href="../dailyManager/shelf/shelfList.action" target="rightFrame">���ܹ���</a></li>
	        		<li><a href="../dailyManager/goodsType/goodsTypeList.do" target="rightFrame">��Ʒ������</a></li>  
	        		<li><a href="../dailyManager/gift/giftList.do" target="rightFrame">��Ʒ����</a></li>
	        		<li><a href="../dailyManager/duty/dutyList.action" target="rightFrame">ֵ�չ���</a></li>
	        	</c:if>
	        	<c:if test="${loginDeptId==1001}">
	        		<li><a href="../dailyManager/employee/employeeList.do" target="rightFrame">Ա������</a></li>
	        		<li><a href="../dailyManager/part/partList.action" target="rightFrame">���Ź���</a></li>
	        		<li><a href="../dailyManager/record/CheckList.action" target="rightFrame">���ڹ���</a></li>
	        	</c:if>
	        	<c:if test="${loginDeptId==1002}">	        	
	        	</c:if>
	        	<c:if test="${loginDeptId==1003}">
	        		<li><a href="../dailyManager/supplier/supplierList.action" target="rightFrame">��Ӧ�̹���</a></li>
	        	</c:if>
	        	<c:if test="${loginDeptId==1004}">
	        		<li><a href="../dailyManager/goods/productList.action" target="rightFrame">��Ʒ����</a></li>
	        		<li><a href="../dailyManager/storage/storageList.action" target="rightFrame">�ֿ����</a></li>
	        		<li><a href="../dailyManager/shelf/shelfList.action" target="rightFrame">���ܹ���</a></li>
	        		<li><a href="../dailyManager/goodsType/goodsTypeList.do" target="rightFrame">��Ʒ������</a></li>
	        	</c:if>
	        	<c:if test="${loginDeptId==1005}">
	        		 <li><a href="../dailyManager/gift/giftList.do" target="rightFrame">��Ʒ����</a></li>
	        	</c:if>
	        	<c:if test="${loginDeptId==1006}">	        	
	        	</c:if>
	        	<c:if test="${loginDeptId==1007}">
	        		<li><a href="../dailyManager/duty/dutyList.action" target="rightFrame">ֵ�չ���</a></li>
         			<li><a href="../dailyManager/shelf/test.action" target="rightFrame">test</a></li>
	        	</c:if>
	        	 <li><a href="../dailyManager/notice/insertNotice.jsp" target="rightFrame">ÿ������</a></li>
	        	 <li><a href="../dailyManager/recordcheck/AllRecord.do" target="rightFrame">���ڲ�ѯ</a></li>
      		     <li><a href="../dailyManager/notice/noticeList.do" target="rightFrame">�鿴����</a></li>
	        	
	        </ul>
	      </div>
	      </c:if>
	      <c:if test="${state==104}">
	      <h1 class="type"><a href="javascript:void(0)">�������</a></h1>
	      <div class="content">
	        <table width="100%" border="0" cellspacing="0" cellpadding="0">
	          <tr>
	            <td><img src="images/menu_topline.gif" width="182" height="5" /></td>
	          </tr>
	        </table>
	        <ul class="MM">
	           <li><a href="../finance/salary/sList.do" target="rightFrame">Ա�����ʹ���</a></li>
	          <li><a href="../finance/turnover/turnoverList.action" target="rightFrame">Ӫҵ�����</a></li>
	          <li><a href="../finance/outexpense/outexpenseList.action" target="rightFrame">֧������</a></li>
       		  <li><a href="../finance/inexpense/inexpenseList.action" target="rightFrame">�������</a></li>
	          <li><a href="../finance/purchase/purchaseList.do" target="rightFrame">�ɹ�ͳ��</a></li>
	          <li><a href="../finance/returnPurch/returnPurchaseList.do" target="rightFrame">�ɹ��˻�ͳ��</a></li>
	          <li><a href="../finance/productSale/salesList.action" target="rightFrame">������Ʒͳ��</a></li>
	          <li><a href="../finance/returnProductSale/returnProductSale.action" target="rightFrame">�����˻�ͳ��</a></li>
	          <li><a href="../finance/empSaleStatistics/empSaleStatisticsList.action" target="rightFrame">����Ա����ͳ��</a></li>
	          <li><a href="../finance/salerank/allproType.action" target="rightFrame">��Ʒ��������</a></li>                  
	        </ul>
	      </div>
	    </c:if>
		<c:if test="${state==105}">
		  <h1 class="type"><a href="javascript:void(0)">�ۺ����</a></h1>
	      <div class="content">
	          <table width="100%" border="0" cellspacing="0" cellpadding="0">
	            <tr>
	              <td><img src="images/menu_topline.gif" width="182" height="5" /></td>
	            </tr>
	          </table>
	        <ul class="MM">
	           <li><a href="../afterSale/giftList.action" target="rightFrame">���ֶһ�</a></li>
	          <li><a href="../afterSale/afterSale.do" target="rightFrame">�˿��˻�</a></li>
	          <li><a href="../afterSale/record.action" target="rightFrame">�ۺ�����¼��ѯ</a></li>
	          <li><a href="../afterSale/giftRecord.action" target="rightFrame">��Ʒ�һ���¼��ѯ</a></li>
	        </ul>
	      </div>
		</c:if>
		<c:if test="${state==106}">
		  <h1 class="type"><a href="javascript:void(0)">��������</a></h1>
	      <div class="content">
	        <table width="100%" border="0" cellspacing="0" cellpadding="0">
	          <tr>
	            <td><img src="images/menu_topline.gif" width="182" height="5" /></td>
	          </tr>
	        </table>
	        <ul class="MM">
	            <li><a href="../purch/purchInsert.jsp" target="rightFrame">�ɹ���¼��</a></li>
		          <li><a href="../purch/returnInsert.jsp" target="rightFrame">�˹���¼��</a></li>
		          <li><a href="../purch/purchList.do" target="rightFrame">�ɹ�����ѯ</a></li>
		          <li><a href="../purch/returnList.do" target="rightFrame">�˹�����ѯ</a></li>
	        </ul>
	      </div>
	      </c:if>
	      <c:if test="${state==107}">
	      <h1 class="type"><a href="javascript:void(0)">������</a></h1>
	      <div class="content">
	        <table width="100%" border="0" cellspacing="0" cellpadding="0">
	          <tr>
	            <td><img src="images/menu_topline.gif" width="182" height="5" /></td>
	          </tr>
	        </table>
	        <ul class="MM">
	            <li><a href="../storage/outStorageList.do" target="rightFrame">�������</a></li>
	          <li><a href="../storage/inStorageList.do" target="rightFrame">������</a></li>
	          <li><a href="../storage/storeList.do" target="rightFrame">����ѯ</a></li>
	          <li><a href="../storage/alarmList.do" target="rightFrame">��������</a></li>
	          <li><a href="../storage/numAlarmList.do" target="rightFrame">��汨��</a></li>


	        </ul>
	      </div>   
	      </c:if> 
	      <c:if test="${state==108}">
	      <h1 class="type"><a href="javascript:void(0)">ϵͳ����</a></h1>
	      <div class="content">
	        <table width="100%" border="0" cellspacing="0" cellpadding="0">
	          <tr>
	            <td><img src="images/menu_topline.gif" width="182" height="5" /></td>
	          </tr>
	        </table>
	        <ul class="MM">
	          <li><a href="../systemConfig/stateManager.jsp" target="rightFrame">Ȩ�޹���</a></li>
	        </ul>
	      </div>
	      </c:if>
    	 </c:forEach>
     </div>
     <script language="javascript" type="text/javascript">
		var contents = document.getElementsByClassName('content');
		var toggles = document.getElementsByClassName('type');
	
		var myAccordion = new fx.Accordion(
			toggles, contents, {opacity: true, duration: 400}
		);
		myAccordion.showThisHideOpen(contents[0]);
	</script>
    </td>
  </tr>
  <tr>
      <td width="10" height="29"><img src="../images/bg_left_left.gif"/></td>
     <td width="1237" 
    style="FONT-SIZE: 18px; BACKGROUND-IMAGE: url(../images/bg_left_middle.gif); COLOR: white; FONT-FAMILY: system">     </td>
      <td width=11><img src="../images/bg_left_right.gif"/></td>
</tr>

</table>

</body>
</html>
