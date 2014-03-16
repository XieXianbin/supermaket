<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
	<link href="../css/demos.css" rel="stylesheet" type="text/css" />
	<link href="../css/css.css" rel="stylesheet" type="text/css" />
	<link href="../css/style.css" rel="stylesheet" type="text/css" />
	<!-- <script type="text/javascript" src="../js/xiangmu.js"></script> -->
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
		window.open(
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
										</span>
											<a href="downgoodsInsert1.action">����µ��¼���Ϣ</a>
										</td>
									</tr>
									<tr>
										<td class="tablestyle_title">��Ʒ�¼���Ϣ�б�</td>
									</tr>
									<tr>
										<td height="40" class="font42">
											<div id="container">
												<div id="demo">
												<table width="100%" style="margin-top:5px; margin-bottom: 5px" border="0" cellpadding="4" cellspacing="1" bgcolor="#6898B9" class="newfont03" class="display" id="example">
														<thead>
															<tr>
																<th width="5%">ѡ��</th>
																<th style="color:#fff" width="5%">��ˮ��</th>
																<th style="color:#fff" width="8%">��Ʒ���</th>
																<th style="color:#fff">��Ʒ����</th>
																<th style="color:#fff" width="6%">�¼�����</th>
																<!-- <th style="color:#fff">���ܱ��</th> -->
																<th style="color:#fff" width="15%">�¼�ʱ��</th>
																<th style="color:#fff" align="center" width="8%">Ա�����</th>
																<th style="color:#fff">�¼�ԭ��</th>
																
																<th style="color:#fff">����</th>
															</tr>
														</thead>
														<tbody>
															<c:forEach items="${list}" var="downgoods">
																<tr>
																	<td align="center"><input type="checkbox"
																		name="delid" />
																	</td>
																	<td align="center">${downgoods.serialId}</td>
																	<td align="center">${downgoods.productId}</td>
																	<td align="center">${downgoods.productName}</td>
																	<td align="center">${downgoods.downCount}</td> 
																	<!-- <td align="center">${downgoods.shelfId}</td>-->
																	<td align="center">${downgoods.downTime}</td>
																	<td align="center">${downgoods.employeeId}</td>
																	<td align="left">${downgoods.remarks}</td>
																	
																	<td align="center"><!-- 
																	<a href="findsDowngoods.action?serialId=${downgoods.serialId}"
																		style="text-decoration: none;color:blue"
																		title="����޸���Ϣ">�޸�</a> -->
																		<a href="findsDowngoods1.action?serialId=${downgoods.serialId}"
																		style="text-decoration: none;color:blue"
																		title="����޸���Ϣ">�鿴����</a>
																		
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