<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
<link rel="stylesheet" rev="stylesheet" href="../css/style.css"
	type="text/css" media="all" />

<title>jQuery UI Datepicker - Display month &amp; year menus</title>
<link type="text/css" href="../css/ui.all.css" rel="stylesheet" />
<script type="text/javascript" src="../js/jquery-1.3.2.js"></script>
<script type="text/javascript" src="../js/ui.core.js"></script>
<script type="text/javascript" src="../js/ui.datepicker.js"></script>
<script type="text/javascript" src="../js/ui.datepicker-zh-CN.js"></script>
<script type="text/javascript">
	$(function() {
		$('#datepicker').datepicker({
			changeMonth : true,
			changeYear : true
		});
	});
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
	<form action="updateEmployee.do" method="post">
		<div class="MainDiv">
			<table width="99%" border="0" cellpadding="0" cellspacing="0"
				class="CContent">
				<tr>
					<th class="tablestyle_title">�޸�Ա����Ϣ</th>
				</tr>
				<tr>
					<td class="CPanel">

						<table border="0" cellpadding="0" cellspacing="0"
							style="width: 100%">

							<tr>
								<td width="100%">
									<fieldset style="height: 100%;">
										<legend> �޸�Ա����Ϣ </legend>



										<!-- 	
														//		Ա����employee_tab)					
//		�ֶ�	�ֶ�����	����	�Ƿ�Ϊ��	�Ƿ�����	˵��
//		employeeId	int		��	��	Ա�����
//	1	employeeName	varchar	20			Ա������
//	employeeBirthday	varchar				Ա������
//	3	employeeSex	varchar	10			�Ա�
//	4	employeeIdNum	varchar	18			���֤
//	5	empPoliState	varchar	20	��		������ò
//	6	employeePicture	image				Ա��ͷ��
//	7	employeeTel	varchar	20			�绰
//	8	employeeQq	varchar	20			QQ
//	9	employeeEmail	varchar	50			����
//	10	employeeSchool	varchar	50			Ա��ѧ��
//	11	employeeAddress	varchar	100			Ա����ַ
//	12	employeePosition	varchar	20			Ա��ְλ
//	13	basicWage	float				��������
//	14	deptId	int				�������ű��
//	15	entryTime	varchar	30			��ְʱ��
//	16	leaveTime	varchar	30			��ְʱ��
//	17	employeeState	varchar	10			�Ƿ���ְ
//	18	remarks	text				��ע
														
 -->
<!-- 

		eb.setEmployeeId(Integer.parseInt(request.getParameter("employeeId")));
		eb.setEmployeeName(request.getParameter("employeeName"));
		
		eb.setEmployeeBirthday(request.getParameter("employeeBirthday"));
		eb.setEmployeeSex(request.getParameter("employeeSex"));
		eb.setEmployeeIdNum(request.getParameter("employeeIdNum"));
		eb.setEmpPoliState(request.getParameter("empPoliState"));
		eb.setEmployeePicture(request.getParameter("employeePicture"));
		eb.setEmployeeTel(request.getParameter("employeeTel"));
		eb.setEmployeeQq(request.getParameter("employeeQq"));
		eb.setEmployeeEmail(request.getParameter("employeeEmail"));
		eb.setEmployeeSchool(request.getParameter("employeeSchool"));
		eb.setEmployeeAddress(request.getParameter("employeeAddress"));
		eb.setEmployeePosition(request.getParameter("employeePosition"));
		
		
		eb.setBasicWage(Float.parseFloat(request.getParameter("basicWage")));
		eb.setDeptId(Integer.parseInt(request.getParameter("deptId")));
		
		
		eb.setEntryTime(request.getParameter("entryTime"));
		eb.setLeaveTime(request.getParameter("leaveTime"));
		eb.setEmployeeState(request.getParameter("employeeState"));
		eb.setRemarks(request.getParameter("remarks"));


 -->


										<table border="0" cellpadding="2" cellspacing="1"
											style="width: 100%">

											<tr>
												<td nowrap="nowrap" align="right" width="15%">Ա�����:</td>
												<td width="35%"><input name='employeeId' type="text"
													class="text"  style="width: 154px"  readonly="readonly"
													value="${employeeData.employeeId}" /></td>

												<td nowrap="nowrap" align="right" width="15%">Ա������:</td>
												<td width="35%"><input name='employeeName' type="text"
													class="text"  style="width: 154px"
													value="${employeeData.employeeName}" /></td>
													
													
													


											</tr>

											<tr>
											
												<td nowrap="nowrap" align="right" width="15%">Ա������:</td>
												<td width="35%"><input name='employeeBirthday' type="text"
													class="text"  style="width: 154px"
													value="${employeeData.employeeBirthday}" /></td>

												<td nowrap="nowrap" align="right" width="15%">�Ա�:</td>
												<td width="35%"><input name='employeeSex' type="text"
													class="text"  style="width: 154px"
													value="${employeeData.employeeSex}" /></td>



											</tr>
											
														<tr>
											
											<!--  
												<td nowrap="nowrap" align="right">��Ʒ�������:</td>
												<td><input class="text" name='productTypeName'
													style="width: 154px"
													value="${goodstypeData.productTypeName}" />
												</td>
											-->
												<td nowrap="nowrap" align="right" width="15%">���֤:</td>
												<td width="35%"><input name='employeeIdNum' type="text"
													class="text"  style="width: 154px"
													value="${employeeData.employeeIdNum}" /></td>

												<td nowrap="nowrap" align="right" width="15%">������ò:</td>
												<td width="35%"><input name='empPoliState' type="text"
													class="text"  style="width: 154px"
													value="${employeeData.empPoliState}" /></td>



											</tr>
											
											
														<tr>
											
											<!--  
												<td nowrap="nowrap" align="right">��Ʒ�������:</td>
												<td><input class="text" name='productTypeName'
													style="width: 154px"
													value="${goodstypeData.productTypeName}" />
												</td>
											-->
												<td nowrap="nowrap" align="right" width="15%">�绰:</td>
												<td width="35%"><input name='employeeTel' type="text"
													class="text"  style="width: 154px"
													value="${employeeData.employeeTel}" /></td>

												<td nowrap="nowrap" align="right" width="15%">QQ:</td>
												<td width="35%"><input name='employeeQq' type="text"
													class="text"  style="width: 154px"
													value="${employeeData.employeeQq}" /></td>



											</tr>
											
											
														<tr>
											
												<td nowrap="nowrap" align="right" width="15%">����:</td>
												<td width="35%"><input name='employeeEmail' type="text"
													class="text"  style="width: 154px"
													value="${employeeData.employeeEmail}" /></td>

												<td nowrap="nowrap" align="right" width="15%">Ա��ѧ��:</td>
												<td width="35%"><input name='employeeSchool' type="text"
													class="text"  style="width: 154px"
													value="${employeeData.employeeSchool}" /></td>



											</tr>
											
											
														<tr>
											
												<td nowrap="nowrap" align="right" width="15%">Ա��ְλ:</td>
												<td width="35%"><input name='employeePosition' type="text"
													class="text"  style="width: 154px"
													value="${employeeData.employeePosition}" /></td>

												<td nowrap="nowrap" align="right" width="15%">��������:</td>
												<td width="35%"><input name='basicWage' type="text"
													class="text"  style="width: 154px"
													value="${employeeData.basicWage}" /></td>



											</tr>
											
											
														<tr>
											
												<td nowrap="nowrap" align="right" width="15%">�������ű��:</td>
												<td width="35%"><input name='deptId' type="text"
													class="text"  style="width: 154px"
													value="${employeeData.deptId}" /></td>

												<td nowrap="nowrap" align="right" width="15%">������������:</td>
												<td width="35%"><input name='deptName' type="text"
													class="text"  style="width: 154px"
													value="${employeeData.deptId}" /></td>



											</tr>
											
											
														<tr>
											
												<td nowrap="nowrap" align="right" width="15%">��ְʱ��:</td>
												<td width="35%"><input name='entryTime' type="text"
													class="text"  style="width: 154px"
													value="${employeeData.entryTime}" /></td>

												<td nowrap="nowrap" align="right" width="15%">��ַ:</td>
												<td width="35%"><input name='employeeAddress' type="text"
													class="text"  style="width: 154px"
													value="${employeeData.employeeId}" /></td>



											</tr>
											
											
											
											


											
											
											
											
											
											


											<tr>
												<td align="right">��ע:</td>
												<td colspan="3"><textarea name="remarks" cols="100"
														rows="8"></textarea></td>
											</tr>



										</table>
										<br />
									</fieldset></td>
							</tr>
						</table></td>
				</tr>
				<tr>
					<td colspan="2" align="center" height="50px"><input
						type="submit" name="Submit" value="�ύ" class="button" /> <input
						type="button" name="Submit2" value="����" class="button"
						onclick="window.history.go(-1);" /></td>
				</tr>
			</table>
		</div>
	</form>
</body>
</html>

