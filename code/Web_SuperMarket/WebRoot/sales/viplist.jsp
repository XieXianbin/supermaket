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
		document.getElementById("fom").action = "addvip.jsp";
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
										<td class="tablestyle_title">��Ա��Ϣ�б�</td>
									</tr>
									<tr>
										<td height="40" class="font42">
											<div id="container">
												<div id="demo">
												<table width="100%" style="margin-top:5px; margin-bottom: 5px" border="0" cellpadding="4" cellspacing="1" bgcolor="#6898B9" class="newfont03" class="display" id="example">
														<thead>
															<tr>
																<th>ѡ��</th>
																<th style="color:#fff">��Ա���</th>
																<th style="color:#fff">��Ա����</th>
																<th style="color:#fff">��Ա�Ա�</th>
																<th style="color:#fff">��Ա�绰</th>
																<th style="color:#fff">��Ա��ַ</th>
																<th style="color:#fff">��ע</th>
																<th style="color:#fff">����</th>
															</tr>
														</thead>
														<tbody>
															<c:forEach items="${viplist}" var="vip">
																<tr>
																	<td align="center"><input type="checkbox"
																		name="delid" value="${vip.vipId}"/>
																	</td>
																	<td align="center">${vip.vipId}</td>
																	<td align="center">${vip.vipName}</td>
																	<td align="center">${vip.vipSex}</td>
																	<td align="center">${vip.vipTel}</td>
																	<td align="center">${vip.vipAddress}</td>
																	<td align="center">${vip.vipRemarks}</td>
																	<td align="center"><a href="updateVip.do?vipid=${vip.vipId}"
																		style="text-decoration: none;color:blue"
																		title="����޸���Ϣ">�޸�</a><a style="text-decoration: none">&nbsp;|&nbsp;</a><a
																		href="selectOne.do?vipid=${vip.vipId}" title="����鿴����"
																		style="text-decoration: none;color:blue">�鿴</a>
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