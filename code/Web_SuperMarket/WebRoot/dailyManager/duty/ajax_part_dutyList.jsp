<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
<title>ֵ�չ���</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}

.tabfont01 {
	font-family: "����";
	font-size: 9px;
	color: #555555;
	text-decoration: none;
	text-align: center;
}

.font051 {
	font-family: "����";
	font-size: 12px;
	color: #333333;
	text-decoration: none;
	line-height: 20px;
}

.font201 {
	font-family: "����";
	font-size: 12px;
	color: #FF0000;
	text-decoration: none;
}

.button {
	font-family: "����";
	font-size: 14px;
	height: 37px;
}

html {
	overflow-x: auto;
	overflow-y: auto;
	border: 0;
}
-->
</style>

<link href="../../css/css.css" rel="stylesheet" type="text/css" />
<link href="../../css/style.css" rel="stylesheet" type="text/css" />
<style type="text/css" title="currentStyle">
@import "../../css/demos.css";
</style>
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
<script type="text/javascript" src="js/dutyAjax.js"></script>
</head>


<body id="dt_example" class="example_alt_pagination">
		<!-- �������б� -->
		<div id="container">
													<div id="demo">

														<table width="100%" border="0" cellpadding="4"
															cellspacing="1" bgcolor="#6898B9" class="newfont03"
															class="display" id="example">
															<thead>
																<tr>
																	<th>ѡ��</th>
																	<th style="color:#fff">ֵ����ˮ��</th>
																	<th style="color:#fff">Ա�����</th>
																	<th style="color:#fff">Ա������</th>
																	<th style="color:#fff">Ա������</th>
																	<th style="color:#fff">����</th>
																	<th style="color:#fff">��ʼʱ��</th>
																	<th style="color:#fff">����ʱ��</th>
																	<th style="color:#fff">��ע</th>
																	<th style="color:#fff">����</th>
																</tr>
															</thead>
															<tbody>
																<c:forEach items="${dutyList}" var="duty">
																	<tr>
																		<!-- ��ѡ��ʼ -->
																		<td bgcolor="#FFFFFF" align="center"><input
																			type="checkbox" name="delid" />
																		</td>
																		<!-- ��ѡ����� -->
																		<td align="center" width="8%">${duty.dutyId}</td>
																		<td align="center">${duty.employeeId}</td>
																		<td align="center"><a href="#">${duty.employeeName}</a>
																		</td>
																		<td align="center"><a href="#">${duty.deptName}</a>
																		</td>
																		<td align="center"><a href="#">${duty.date}</a>
																		</td>
																		<td align="center">${duty.beginTime}</td>
																		<td align="center">${duty.endTime}</td>
																		<td align="left">${duty.remarks}</td>
																		<td align="center"><a href="#"
																			style="text-decoration: none;color:blue"
																			title="����޸���Ϣ">�޸�</a> <a
																			style="text-decoration: none">&nbsp;|&nbsp;</a> <a
																			href="#" title="����鿴����"
																			style="text-decoration: none;color:blue">�鿴</a></td>
																	</tr>
																</c:forEach>
															</tbody>
														</table>


													</div>
												</div><!-- �б� -->

	<SCRIPT language=JavaScript>
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
			document.getElementById("fom").action = "xiangmu.htm";
			document.getElementById("fom").submit();
		}

	</SCRIPT>
</body>
</html>
