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
		document.getElementById("fom").action = "selectOther1.do";
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
											value="ɾ����ѡ��Ϣ" /> <input name="Submit2" type="button"
											class="right-button08" value="��ӳ�����Ϣ" onclick="link();" />
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
																<th style="color:#fff">������</th>
																<th style="color:#fff">�ֿ���</th>
																<th style="color:#fff">�ɹ���ˮ��</th>
																<th style="color:#fff">��Ʒ���</th>
																<th style="color:#fff">��Ʒ����</th>
																<th style="color:#fff">��������</th>
																<th style="color:#fff">����ʱ��</th>
																<th style="color:#fff">����ȥ��</th>
																<th style="color:#fff">������</th>
																
																<th style="color:#fff">����</th>
															</tr>
														</thead>
														<tbody>
															<c:forEach items="${outStorageList}" var="outStorage">
																<tr>
																	<td align="center"><input type="checkbox"
																		name="delid" />
																	</td>
																	<td align="center">${outStorage.outStorageId}</td>
																	<td align="center">${outStorage.storageId}</td>
																	<td align="center">${outStorage.purchId}</td>
																	<td align="center">${outStorage.productId}</td>
																	<td align="center">${outStorage.productName}</td>
																	<td align="center">${outStorage.outNum}</td>
																	<td align="center">${outStorage.outTime}</td>
																	<td align="center">${outStorage.outDirection}</td>
																	<td align="center">${outStorage.employeeName}</td>
																	
																	<td align="center">
																	<a href="findOutStorage.do?id=${outStorage.outStorageId}" style="text-decoration: none;color:blue"
																		title="����޸���Ϣ">�޸�</a>
																		<a style="text-decoration: none">&nbsp;|&nbsp;</a>
																		<a href="seeDetil.do?id=${outStorage.outStorageId}" title="����鿴����"
																		style="text-decoration: none;color:blue">�鿴</a>
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