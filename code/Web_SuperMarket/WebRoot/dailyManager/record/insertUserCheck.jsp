<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
		<link rel="stylesheet" rev="stylesheet" href="../../css/style.css"
			type="text/css" media="all" />

<script type="text/javascript" src="../../js/calendar.js"></script>

		<script language="JavaScript" type="text/javascript">
function check()
{
 if(window.vip.vipName.value==""){
  alert("��*Ϊ��������");
  window.vip.vipName.focus();
  return false;
  }
  if(window.vip.vipPass.value==""){
  alert("��*Ϊ��������");
  window.vip.vipPass.focus();
  return false;
  }
  if(window.vip.vipAnswer.value==""){
  alert("��*Ϊ��������");
  window.vip.vipAnswer.focus();
  return false;
  }
}
</script>
		<style type="text/css">
<!--
.atten {
	font-size: 12px;
	font-weight: normal;
	color: #F00;
}
-->
</style>
	</head>

	<body class="ContentBody">
		<form action="../record/CheckInsert.do" method="post" name="vip" onsubmit="return check()">
			<div class="MainDiv">
				<table width="99%" border="0" cellpadding="0" cellspacing="0"
					class="CContent">
					<tr>
						<th class="tablestyle_title">
							Ա��������Ϣ���
						</th>
					</tr>
					<tr>
						<td class="CPanel">

							<table border="0" cellpadding="0" cellspacing="0"
								style="width: 100%">

								<tr>
									<td width="100%">
										<fieldset style="height: 100%;">
											<legend>
												����Ա��������Ϣ¼��
											</legend>
											<table border="0" cellpadding="2" cellspacing="1"
												style="width: 100%">

												<tr>
													<td nowrap="nowrap" align="right" width="15%">
														���ź�:
													</td>
													<td width="35%" >
													<select id="id_employList" name="deptId" style="width:158px">
																	<option value="" selected="selected">==��ѡ��==</option>
																<c:forEach items="${deptList}" var="employee">
																	<option value="${employee}">${employee}</option>
																</c:forEach>
															</select>
														<span class="red">*</span>
													</td>
													<td width="16%" align="right" nowrap="nowrap">
														Ա�����:
													</td>
													<td width="34%">
														<select id="id_employList" name="employeeId" style="width:158px">
																	<option value="" selected="selected">==��ѡ��==</option>
																<c:forEach items="${EmployList}" var="employee">
																	<option value="${employee}">${employee}</option>
																</c:forEach>
															</select>
														<span class="red">*</span>
													</td>
												</tr>
												<tr>
													<td align="right">
														ˢ������:
													</td>
													<td>
														<input class="text" name='dateTime'
															style="width: 154px" value="" onclick="new Calendar().show(this);" readonly="readonly"/>
													</td>
													<td align="right">����:</td>
												<td width="35%">
												<select id="xxx" name='weeks'
													style="width:158px">
														<option id="xxx">����һ</option>
														<option id="xxx">���ڶ�</option>
														<option id="xxx">������</option>
														<option id="xxx">������</option>
														<option id="xxx">������</option>
														<option id="xxx">������</option>
														<option id="xxx">������</option>
												</select></td>
												</tr>
												<tr>
													
														<td align="right">
															��1:
														</td>
														<td width="35%">
															<input name='Time1' type="text" class="text"
																style="width: 154px" value="" /></td>
													<td align="right">
														��2:
													</td>
													<td width="35%">
														<input name='time2' type="text" class="text"
															style="width: 154px" value="" /></td>
														<td align="right">
															
														</td>
														<td width="35%">
															</td>
															</tr>
												<tr>
													<td align="right">
														��ע:
													</td>
													<td colspan="3">
														<textarea name='remarks' cols="100" rows="8"></textarea>
													</td>
												</tr>
											</table>
											<br />
										</fieldset>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td colspan="2" align="center" height="30px">
							<input type="submit" name="Submit" value="�ύ" class="button" />

							<input type="button" name="Submit2" value="����" class="button"
								onclick="window.history.go(-1);" />
						</td>
					</tr>
				</table>
			</div>
		</form>
		
	<form action="../record/UploadFile.do" method="post" enctype="multipart/form-data" onsubmit="">
			<div class="MainDiv">
				<table width="99%" border="0" cellpadding="0" cellspacing="0"
					class="CContent">
					
					<tr>
						<td class="CPanel">

							<table border="0" cellpadding="0" cellspacing="0"
								style="width: 100%">

								<tr>
									<td width="100%">
										<fieldset style="height: 100%;">
											<legend>
												���Ա��������Ϣ¼��
											</legend>
											<table border="0" cellpadding="2" cellspacing="1"
												style="width: 100%">

												<tr>
												<td  align="center" height="50px">
							�� ѡ��Ա��������Ϣ�ļ�<input type="file" name="filename">${mess}</br>
						</td>
						</tr>
						</table>
						</fieldset>
						</td>
						</tr>
											
							</table>
						</td>
					</tr>
					
					<tr>
						<td colspan="2" align="center" height="50px">
							<input type="submit" name="Submit" value="�ύ" class="button" />

							<input type="button" name="Submit2" value="����" class="button"
								onclick="window.history.go(-1);" />
						</td>
					</tr>
					
				</table>
			</div>
		</form>
		
	</body>
</html>

