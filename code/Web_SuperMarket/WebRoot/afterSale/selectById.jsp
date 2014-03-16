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
	
	function selectGift(){
	
	var vipId=document.getElementById("vipId").value;
	if(vipId==""){
	alert("�������Ա���");
	}else{
	location.replace("vipGiftList.do?vipId="+vipId);
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
								<table width="95%" border="0" align="center" cellpadding="0"
									cellspacing="0">
								
									<tr>
										<td class="tablestyle_title">��Ʒ�һ���Ϣ��ѯ</td>
									</tr>

									
									<tr>
										<td height="40" class="font42">
											<div id="container">
												<div id="demo">
												<table width="100%" style="margin-top:5px; margin-bottom: 5px" border="0" cellpadding="4" cellspacing="1" bgcolor="#6898B9" class="newfont03" class="display" id="example">
														 <thead>
															<tr>
																
																<th style="color:#fff">�һ���Ʒ���</th>
																<th style="color:#fff">��Ʒ��ˮ��</th>
																<th style="color:#fff">��Ʒ����</th>
																<th style="color:#fff">�һ�����</th>
																<th style="color:#fff">��Ա���</th>
																<th style="color:#fff">����Ա</th>
																<th style="color:#fff">ʱ��</th>
																<th style="color:#fff">��ע</th>
																<th style="color:#fff">����</th>
															</tr>
														</thead>
														<tbody>
															<c:forEach items="${vipGiftList}" var="list">
																<tr>
																	
																	<td align="center">${list.giftId}</td>
																	<td align="center">${list.purchId}</td>
																	<td align="center">${list.productName}</td>
																	<td align="center">${list.giftCount}</td>
																	<td align="center">${list.vipId}</td>
																	<td align="center">${list.employeeId}</td>
																	<td align="center">${list.gifttime}</td>
																	
																	<td align="left">${list.remarks}</td>
																	<td align="center"><a href="giftDetails.do?giftId=${list.giftId}"
																		style="text-decoration: none;color:blue"
																		title="����޸���Ϣ">�鿴����</a>
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