<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<script type="text/javascript">
function findValue(){
var arr=document.getElementsByName("delid");
var a="";
for(var i=0;i<arr.length;i++){
if(arr[i].checked){
a=a+arr[i].value+",";
}
}
 var as=a.substring(0,a.length-1);
if(as==""){
alert("��ѡ��");
}else{
var b=window.confirm("ȷ��ɾ����");
if(b){
alert(as);
window.location.replace("deleteReturn.do?id="+as);

}
}
}

function excelIn(){

window.location.replace("excelInn.do");
}

</script>


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
								<table width="95%" border="0" align="center" cellpadding="0"
									cellspacing="0">
									<tr>
										<td height="20"><a style="margin-left: 3%"></a><span class="newfont07">ѡ��<a	href="#" class="right-font08" onclick="selectAll();">ȫѡ</a>-<a
												href="#" class="right-font08" onclick="unselectAll();">��ѡ</a>
										</span> <input name="Submit" type="button" class="right-button08"
											value="ɾ����ѡ�˹���Ϣ"  onclick="findValue()"/> 
											<input name="Submit" type="button" class="right-button08"
											value="excel������Ϣ"  onclick="excelIn()"/> 
										</td>
									</tr>
									<tr>
										<td class="tablestyle_title">�˹���Ϣ�б�</td>
									</tr>
									<tr>
										<td height="40" class="font42">
											<div id="container">
												<div id="demo">
												<table width="100%" style="margin-top:5px; margin-bottom: 5px" border="0" cellpadding="4" cellspacing="1" bgcolor="#6898B9" class="newfont03" class="display" id="example">
														<thead>
															<tr>
																<th>ѡ��</th>
																<th style="color:#fff">�˹���ˮ��</th>
																<th style="color:#fff">�ɹ���ˮ��</th>
																<th style="color:#fff">Ա�����</th>
																<th style="color:#fff">Ա������</th>
																<th style="color:#fff">�����̱��</th>
																<th style="color:#fff">����������</th>
																<th style="color:#fff">��Ʒ�˼�</th>
																<th style="color:#fff">�˹�����</th>
																<th style="color:#fff">�˹�ʱ��</th>
																<th style="color:#fff">��ע</th>
																<th style="color:#fff">����</th>
															</tr>
														</thead>
														<tbody>
															<c:forEach items="${list}" var="return">
																<tr>
																	<td align="center"><input type="checkbox"
																		name="delid" value="${return.returnId}"/>
																	</td>
																	<td align="center">${return.returnId}</td>
																	<td align="center">${return.purchId}</td>
																	<td align="center">${return.employeeId}</td>
																	<td align="center">${return.employeeName}</td>
																	<td align="center">${return.companyId}</td>
																	<td align="center">${return.companyName}</td>
																	<td align="center">${return.returnPrice}</td>
																	<td align="center">${return.returnCount}</td>
																	<td align="center">${return.returnTime}</td>
																	<td align="center">${return.remarks}</td>
																	
																	<td align="center">
																	<a href="findReturn.do?id=${return.returnId}"
																	    style="text-decoration: none;color:blue"
																		>����</a>
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
	</form>
</body>
</html>