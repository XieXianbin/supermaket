<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
<link rel="stylesheet" rev="stylesheet" href="../css/style.css"
	type="text/css" media="all" />

<script type="text/javascript">

	function findEmployee(){
		var mess = document.getElementById("id_mess").value;
		window.location.replace("findEmployee.action?mess="+mess);
	}
	function changeStates(){
		var val="";
		var states = document.getElementsByName("states");
		for(var i=0;i<states.length;i++){
			if(states[i].checked){
				if(val!="")
					val+=",";
				val+=states[i].value;
				
			}
		}
			
		document.getElementById("id_state").value=val;
		
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
	<form action="updateState.action" method="post" name="vip">
		<div class="MainDiv">
			<table width="99%" border="0" cellpadding="0" cellspacing="0"
				class="CContent">
				<tr>
					<th class="tablestyle_title">Ȩ�޹���</th>
				</tr>
				<tr>
					<td class="CPanel">

						<table border="0" cellpadding="0" cellspacing="0"
							style="width: 100%">
							<tr>
								<td width="100%">
									<fieldset style="height: 100%;">
										<legend> Ȩ�޹��� </legend>
										<table border="0" cellpadding="2" cellspacing="1"
											style="width: 100%">
											<tr>
												<td>&nbsp;</td>
												<td align="right">���������:<input type="text" id="id_mess"
													name="mess" value="${employeeData.employeeId}" />&nbsp;</td>
												<td><input type="button" value="����"
													onclick="findEmployee()" />
												</td>
												<td>&nbsp;</td>
											</tr>
											<tr>
												<td nowrap="nowrap" align="right" width="15%">Ա�����:</td>
												<td width="35%"><input name='employeeId' type="text"
													class="text" style="width: 154px" readonly="readonly"
													value="${employeeData.employeeId}" />
												</td>
												<td nowrap="nowrap" align="right" width="15%">Ա������:</td>
												<td width="35%"><input name='employeeName' type="text"
													class="text" style="width: 154px" readonly="readonly"
													value="${employeeData.employeeName}" />
												</td>
											</tr>
											<tr>
												<td nowrap="nowrap" align="right" width="15%">�Ա�:</td>
												<td width="35%"><input name='employeeSex' type="text"
													class="text" style="width: 154px" readonly="readonly"
													value="${employeeData.employeeSex}" />
												</td>
												<td nowrap="nowrap" align="right" width="15%">������ò:</td>
												<td width="35%"><input name='empPoliState' type="text"
													class="text" style="width: 154px" readonly="readonly"
													value="${employeeData.empPoliState}" />
												</td>
											</tr>
											<tr>
												<td nowrap="nowrap" align="right" width="15%">��������:</td>
												<td width="35%"><input name='deptName' type="text"
													class="text" style="width: 154px" readonly="readonly"
													value="${Dept}" />
												</td>
												<td nowrap="nowrap" align="right" width="15%">Ա��ְλ:</td>
												<td width="35%"><input name='employeePosition'
													type="text" class="text" style="width: 154px"
													readonly="readonly"
													value="${employeeData.employeePosition}" />
												</td>
											</tr>
											<tr>
												<td align="right">Ȩ��:</td>
												<td><input type="text" id="id_state" name="state" readonly="readonly"
													value="${State}" />
												</td>

											</tr>
											<tr>
												<td>&nbsp;</td>
												<td>
													<input type="checkbox" name="states" onclick="changeStates()" value="101" />���۹���
													<input type="checkbox" name="states" onclick="changeStates()" value="102" />��Ʒ���� 
													<input type="checkbox" name="states" onclick="changeStates()" value="103" />�ճ�����
												</td>
											</tr>
											<tr>
												<td>&nbsp;</td>
												<td>
													<input type="checkbox" name="states" onclick="changeStates()" value="104" />�������
													<input type="checkbox" name="states" onclick="changeStates()" value="105" />�ۺ����
													<input type="checkbox" name="states" onclick="changeStates()" value="106" />��������
												</td>
											</tr>
											<tr>
												<td>&nbsp;</td>
												<td>
													<input type="checkbox" name="states" onclick="changeStates()" value="107" />������
													<input type="checkbox" name="states" onclick="changeStates()" value="108" />ϵͳ����
												</td>
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

