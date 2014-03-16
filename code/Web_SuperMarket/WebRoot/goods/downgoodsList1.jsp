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
																 
																<th style="color:#fff">��Ʒ���</th>
																<th style="color:#fff">��Ʒ����</th>
																<th style="color:#fff">������ </th>
																<th style="color:#fff">��Ʒ����</th>
																<th style="color:#fff">�ɹ�����</th>
																<th style="color:#fff">����ʱ��</th>
																<!-- <th style="color:#fff">���ܺ�</th> -->
																<th style="color:#fff">�ϼ�����</th>
																
															</tr>
														</thead>
														<tbody>
															<c:forEach items="${list}" var="xiangqing">
																<tr>
																	<td align="center"><input type="checkbox"
																		name="delid" />
																	</td>
																	<td align="center">${xiangqing.productId}</td>
																	<td align="center">${xiangqing.productName}</td>
																	<td align="center">${xiangqing.producer}</td>
																	<td align="center">${xiangqing.inPrice}</td>
																	<td align="center">${xiangqing.purchCount}</td>
																	<td align="center">${xiangqing.productTime}</td>
																	<!-- <td align="center">${xiangqing.shelfId}</td> -->
																	<td align="center">${xiangqing.upCount}</td>
																	
																	<!--
																	<c:if test="${empty upgoods.remarks}">
																		<td align="center">&nbsp;</td>
																	</c:if>
																	<c:if test="${!empty part.remarks}">
																		<td align="center">${part.remarks}</td>
																	</c:if>-->
																	<!--<td align="center"><a href="findsUpgoods.action?serialId=${alar.alarmId}"
																		style="text-decoration: none;color:blue"
																		title="����޸���Ϣ">�޸�</a><a style="text-decoration: none">&nbsp;&nbsp;</a>  -->
																	
																		<!-- <a
																		href="#" title="����鿴����"
																		style="text-decoration: none;color:blue">�鿴</a> 
																		-->
																		
																	</td>
																</tr>
															</c:forEach>
														</tbody>
														<!--
				  <tr>
				    <td width="4%" align="center" bgcolor="#EEEEEE">ѡ��</td>
                    <td width="13%" height="20" align="center" bgcolor="#EEEEEE">��Ŀ����</td>
                    <td width="7%" align="center" bgcolor="#EEEEEE">��λ</td>
                    <td width="9%" align="center" bgcolor="#EEEEEE">��Ŀ�ܽ��</td>
                    <td width="10%" align="center" bgcolor="#EEEEEE">��Ŀ������</td>
                    <td width="9%" align="center" bgcolor="#EEEEEE">��Ŀ��������</td>
                    <td width="7%" align="center" bgcolor="#EEEEEE">�ɱ���֧��</td>
                    <td width="7%" align="center" bgcolor="#EEEEEE">��ʼʱ��</td>
                    <td width="7%" align="center" bgcolor="#EEEEEE">�ƻ����ʱ��</td>
					<td width="7%" align="center" bgcolor="#EEEEEE">ʵ�����ʱ��</td>
                    <td width="7%" align="center" bgcolor="#EEEEEE">�������ȼ�</td>
                    <td width="6%" align="center" bgcolor="#EEEEEE">���״̬</td>
                    <td width="6%" align="center" bgcolor="#EEEEEE">����</td>
                  </tr>
                  <tr>
				    <td bgcolor="#FFFFFF"><input type="checkbox" name="delid"/></td>
                    <td height="20" bgcolor="#FFFFFF">�����˿���Ŀ</td>
                    <td bgcolor="#FFFFFF">����</td>
                    <td bgcolor="#FFFFFF">500��</td>
                    <td bgcolor="#FFFFFF">����</td>
                    <td bgcolor="#FFFFFF">5</td>
                    <td bgcolor="#FFFFFF">300��</td>
                    <td bgcolor="#FFFFFF">2007-11-11</td>
                    <td bgcolor="#FFFFFF">2008-1-1</td>
                    <td bgcolor="#FFFFFF">2007-12-12</td>
                    <td bgcolor="#FFFFFF">��</td>
                    <td bgcolor="#FFFFFF">�Ѿ����</td>
                    <td bgcolor="#FFFFFF"><a href="xiangmu.htm">�༭</a></td>
                  </tr>
                 -->
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
