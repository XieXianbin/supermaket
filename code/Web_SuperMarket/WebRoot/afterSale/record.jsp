<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
	<link href="../css/demos.css" rel="stylesheet" type="text/css" />
	<link href="../css/css.css" rel="stylesheet" type="text/css" />
	<link href="../css/style.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="../js/xiangmu.js"></script>
	<script type="text/javascript" language="javascript"
		src="../js/jquery.js"></script>
	<script type="text/javascript" language="javascript"
		src="../js/jquery.dataTables.js"></script>
	<script type="text/javascript" charset="GBK">
		$(document).ready(function() {
			$('#example').dataTable({
				"sPaginationType" : "full_numbers"
			});
		});
	</script>
</head>
<SCRIPT language=JavaScript>
	function sousuo() {
		window
				.open(
						"gaojisousuo.htm",
						"",
						"depended=0,alwaysRaised=1,width=800,height=510,location=0,menubar=0,resizable=0,scrollbars=0,status=0,toolbar=0");
	}
	function selectAll() {
		var obj = document.fom.elements;
		for ( var i = 0; i < obj.length; i++) {
			if (obj[i].name == "delid") {
				obj[i].checked = true;
			}
		}
	}

	function unselectAll() {
		var obj = document.fom.elements;
		for ( var i = 0; i < obj.length; i++) {
			if (obj[i].name == "delid") {
				if (obj[i].checked == true)
					obj[i].checked = false;
				else
					obj[i].checked = true;
			}
		}
	}

	function link() {
		document.getElementById("fom").action = "addPart.jsp";
		document.getElementById("fom").submit();
	}
	
	
	function deleteAll(){
var id=document.getElementsByName("delid");
var ids="";
for(var i=0;i<id.length;i++){
   if(id[i].checked){
   ids+=id[i].value+",";
   }
  
}

ids=ids.substring(0, ids.length-1);

if(ids==""){
alert("��ѡ����Ҫɾ������Ʒ");
}else{
var check=window.confirm("ȷ��ɾ����");
if(check){
window.location.replace("deleteAll.do?id="+ids);
}
}
}
	
	function selectGift(){
	
	var vipId=document.getElementById("vipId").value;
	if(vipId==""){
	alert("�������Ա���");
	}else{
	location.replace("vipGiftList.do?vipId="+vipId);
	}
	}
	
	
	function deptUser(name){
	if(name=="��Ʒ���"){
	document.getElementById("div1").style.display='block';
	document.getElementById("div2").style.display='none';
	}else if(name=="ʱ��"){
	document.getElementById("div2").style.display='block';
	document.getElementById("div1").style.display='none';
	}else{
	document.getElementById("div1").style.display='none';
	document.getElementById("div2").style.display='none';
	}
	
	}
	
	
	
	function selectById(){
	var id=document.getElementById("vipId1").value;
	if(id==""){
	alert("��������ƷId");
	
	}else{
		window.location.replace("selectReturnById.do?vipId1="+id);
	}
	}
	
	function selectByTime(){
  var time=document.getElementById("time").value;
	if(time==""){
	alert("�������ѯʱ��");
	}else{
	
	window.location.replace("selectReturnByTime.do?time="+time);
}
	}
	
	
	
	
</SCRIPT>

<body id="dt_example" class="example_alt_pagination">
	<form name="fom" id="fom" method="post" action="">
		<table width="99%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td>
					<table id="subtree1" style="DISPLAY: " width="100%" border="0"
						cellspacing="0" cellpadding="0">
						
						<tr>
										<td height="20"><a style="margin-left: 3%"></a><span class="newfont07">ѡ��<a	href="#" class="right-font08" onclick="selectAll();">ȫѡ</a>-<a
												href="#" class="right-font08" onclick="unselectAll();">��ѡ</a>
										</span> <input name="Submit" type="button" class="right-button08"
											value="ɾ����ѡ��Ʒ��Ϣ" onclick="deleteAll()"/> 
										</td>
									</tr>
						
						<tr>
							<td>
								<table width="95%" border="0" align="center" cellpadding="0"
									cellspacing="0">
								
									<tr>
										<td class="tablestyle_title">�˻���Ϣ��ѯ</td>
									</tr>
									<tr>
									<td>	
								<span class="newfont07">��ѡ���ѯ��ʽ��</span>
								
								<select onchange="deptUser(this.value)">
								<option value="">==ѡ������==</option>
								<option value="��Ʒ���">��Ʒ���</option>
								<option value="ʱ��">ʱ��</option>
								</select>
								
								
								<!-- 	<input type="text" name="vipId" id="vipId">&nbsp;&nbsp;&nbsp; <input 

                                          name="Submit" type="button" class="right-button08"
											value="��ѯ��¼" onclick="selectGift()"/> 
											 -->
											
											 <div style="display: none;" id="div1">
											 <span class="newfont07">��������Ʒ���:</span>
											 <input type="text" name="vipId1" id="vipId1">&nbsp;&nbsp;&nbsp; <input name="Submit" type="button" class="right-button08"
											value="��ѯ��¼" onclick="selectById()"/> 
											 </div>
											  <div style="display: none;" id="div2">
											  <span class="newfont07">������ʱ�䣺</span>
											 <input type="text" name="vipId" id="time">&nbsp;&nbsp;&nbsp; <input name="Submit" type="button" class="right-button08"
											value="��ѯ��¼" onclick="selectByTime()"/> 
											 </div>
											 
									</td>
					
				</tr>

									<tr>
								
										<td height="40" class="font42">
											<div id="container">
												<div id="demo">
												<table width="100%" style="margin-top:5px; margin-bottom: 5px" border="0" cellpadding="4" cellspacing="1" bgcolor="#6898B9" class="newfont03" class="display" id="example">
														<thead>
															<tr>
																<th>ѡ��</th>
																<th style="color:#fff">�˻����</th>
																<th style="color:#fff">��Ʒ���</th>
																<th style="color:#fff">��Ʒ����</th>
																<th style="color:#fff">��Ʒ�۸�</th>
																<th style="color:#fff">����Ա</th>
																<th style="color:#fff">ʱ��</th>
																<th style="color:#fff">ԭ��</th>
																<th style="color:#fff">��ע</th>
																<th style="color:#fff">����</th>
															</tr>
														</thead>
														<tbody>
															<c:forEach items="${list}" var="list">
																<tr>
																	<td align="center">
																	<input type="checkbox"
																		name="delid"  value="${list.afterSaleId}" id="delids"/>
																	</td>
																	
																	<td align="center">${list.afterSaleId}</td>
																	<td align="center">${list.purchId}</td>
																	<td align="center">${list.productName}</td>
																	<td align="center">${list.money}</td>
																	<td align="center">${list.employeeId}</td>
																	<td align="center">${list.date}</td>
																	<td align="left">${list.reason}</td>
																	<td align="left">${list.remarks}</td>
																	<td align="center"><a href="details.do?afterSaleId=${list.afterSaleId}"
																		style="text-decoration: none;color:blue"
																		title="����޸���Ϣ">�鿴����</a>
																</tr>
															</c:forEach>
														</tbody>
										</table>
												</div>
											</div>
											</td>
									</tr>
								</table></td>
						</tr>
					</table></td>
			</tr>
		</table>
	</form>
</body>
</html>