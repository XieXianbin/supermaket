<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
	<link href="../../css/demos.css" rel="stylesheet" type="text/css" />
	<link href="../../css/css.css" rel="stylesheet" type="text/css" />
	<link href="../../css/style.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="../../js/xiangmu.js"></script>
	<script type="text/javascript" language="javascript"
		src="../../js/jquery.js"></script>
	<script type="text/javascript" language="javascript"
		src="../../js/jquery.dataTables.js"></script>
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
		document.getElementById("fom").action = "employeewages.jsp";
		document.getElementById("fom").submit();
	}
	
	
	function selectId(){
	var mess="����Ȩ�޲���";
	var m=0;
	var ids=document.getElementsByName("delid");
	for(var i=0;i<ids.length;i++)
	{
	if(ids[i].checked){
	mess=mess+ids[i].value+",";
	m++;
	}
	}
	if(m!=0){
	alert(mess+"�����ݲ���ɾ����");
	}
	}
	
var xmlHttp;
function createHttpRequest(){
	// �������IE�������IE7(7.0�����ϰ汾)����xmlhttprequest���󴴽�
	if(window.XMLHttpRequest){
		xmlHttp=new XMLHttpRequest();
	}else if(window.ActiveXObject){
		xmlHttp=new ActiveXObject("Microsoft.XMLHttp");
	}
}
	
	function changeimg(emId){
          alert(emId);
          alert("0000");
          createHttpRequest();
          alert("1111");
          //xmlHttp.open("post", "Bar?employeeId="+emId,true);
          xmlHttp.open("post", "Bar",true);
	      xmlHttp.send(null);
	      alert("2222");
	      xmlHttp.onreadystatechange=StateChange;
	      alert("33333");
    }
	
	function StateChange(){
	alert(xmlHttp.readyState);
	    if(xmlHttp.readyState==4){
		   if(xmlHttp.status==200){
		   var mess=xmlHttp.responseText;
		   alert(mess);
			//document.getElementById("wagesbar").src="d://image/1383902106406.jpg";
			document.getElementById("imgdiv").innerHTML=Math.random();
	       }  
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
							<td>
								<table width="100%" border="0" align="center" cellpadding="0"
									cellspacing="0">
									<tr>
										<td height="20"><a style="margin-left: 3%"></a><span class="newfont07">ѡ��<a	href="#" class="right-font08" onclick="selectAll();">ȫѡ</a>-<a
												href="#" class="right-font08" onclick="unselectAll();">��ѡ</a>
										</span> <input name="Submit" type="button" class="right-button08"
											value="ɾ����ѡ��Ϣ" onclick="selectId()"/> <input name="Submit2" type="button"
											class="right-button08" value="�����Ϣ" onclick="link();" />
										</td>
									</tr>
									<tr>
										<td class="tablestyle_title">������Ϣ�б�</td>
									</tr>
									<tr>
										<td height="40" class="font42">
											<div id="container">
												<div id="demo">
												<table width="100%" style="margin-top:5px; margin-bottom: 5px" border="0" cellpadding="4" cellspacing="1" bgcolor="#6898B9" class="newfont03" class="display" id="example">
														<thead>
															<tr>
																<th>ѡ��</th>
																<th style="color:#fff">��ˮ��</th>
																<th style="color:#fff">Ա������</th>
																<th style="color:#fff">Ա������</th>
																<th style="color:#fff">Ա������</th>
																<th style="color:#fff">����ʱ��</th>
																<th style="color:#fff">��ע</th>
																<th style="color:#fff">����</th>
															</tr>
														</thead>
														<tbody>
															<c:forEach items="${list}" var="salary">
																<tr>
																	<td align="center"><input type="checkbox"
																		name="delid" value="${salary.salaryId}"/>
																	</td>
																	<td align="center">${salary.salaryId}</td>
																	<td align="center">${salary.employeeName}</td>
																	<td align="center">${salary.salary}</td>
																	<td align="center">${salary.deptName}</td>
																	<td align="center">${salary.salaryTime}</td>
																	<td align="center">${salary.remarks}</td>
																	<td align="center"><a href="onewages.do?employeeId=${salary.employeeId}"
																		style="text-decoration: none;color:blue"
																		title="����鿴��Ϣ" >�鿴��Ա�����깤������</a>
																	</td>
																</tr>
															</c:forEach>
														</tbody>
													</table>
												</div>
											</div></td>
									</tr>
								</table></td>
						</tr>
					</table></td>
			</tr>
		</table>
		<!--<center><div id="imgdiv"><img  src="../images/11.jpg" id="wagesbar"></div></center>
	  <center><img src="../images/11.jpg"></center>  -->
</form>
</body>
</html>