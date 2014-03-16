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
		document.getElementById("fom").action = "editAddNewStorage.action";
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
										</span> <input name="Submit2" type="button"
											class="right-button08" value="����²ֿ�" onclick="link();" />
										</td>
									</tr>
									<tr>
										<td class="tablestyle_title">�ֿ���Ϣ�б�</td>
									</tr>
									<tr>
										<td height="40" class="font42">
											<div id="container">
												<div id="demo">
												<table width="100%" style="margin-top:5px; margin-bottom: 5px" border="0" cellpadding="4" cellspacing="1" bgcolor="#6898B9" class="newfont03" class="display" id="example">
														<thead>
															<tr>
																<th>ѡ��</th>
																<th style="color:#fff">�ֿ���</th>
																<th style="color:#fff">�ֿ��ַ</th>
																<th style="color:#fff">�ֿ����</th>
																<th style="color:#fff">�ֿ�����</th>
																<th style="color:#fff">������</th>
																<th style="color:#fff">��ע</th>
																<th style="color:#fff">����</th>
															</tr>
														</thead>
														<tbody>
															<c:forEach items="${StorageList}" var="storage">
																<tr>
																	<td align="center"><input type="checkbox"
																		name="delid" />
																	</td>
																	<td align="center">${storage.storageId}</td>
																	<td align="center">${storage.storageAddress}</td>
																	<td align="center">${storage.storageArea}</td>
																	<td align="center">${storage.storageType}</td>
																	<td align="center">${storage.employeeName}</td>
																	<c:if test="${empty storage.remarks}">
																		<td align="center">&nbsp;</td>
																	</c:if>
																	<c:if test="${!empty storage.remarks}">
																		<td align="center">${storage.remarks}</td>
																	</c:if>
																	<td align="center"><a href="editStorage.action?storageId=${storage.storageId}"
																		style="text-decoration: none;color:blue"
																		title="����޸���Ϣ">�޸�</a>
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