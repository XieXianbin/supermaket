<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
		<link rel="stylesheet" rev="stylesheet" href="../css/style.css" type="text/css" media="all" />


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
	
		<form action="downgoodsUpdate.action" method="post">
			<div class="MainDiv">
				<table width="99%" border="0" cellpadding="0" cellspacing="0"
					class="CContent">
					<tr>
						<th class="tablestyle_title">
							��Ʒ�¼���Ϣ�޸�
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
												�޸���Ʒ�¼���Ϣ
											</legend>
											<table border="0" cellpadding="2" cellspacing="1"
												style="width: 100%">

												<tr>
													<td nowrap="nowrap" align="right" width="15%">
														��ˮ��:
													</td>
													<td width="35%">
														<input name='serialId' type="text" class="text"
															style="width: 154px" value="${downgoods.serialId}" readonly="readonly" />
														<span class="red">*</span>
													</td>
													<td width="16%" align="right" nowrap="nowrap">
														��Ʒ���:
													</td>
													<td width="34%">
														<input class="text" name='purchId' style="width: 154px"
															value="${downgoods.purchId}" readonly="readonly"/>
														<span class="red">*</span>
													</td>
												</tr>


												<tr>
													<td nowrap="nowrap" align="right">
														Ա�����:
													</td>
													<td>
														<input class="text" name='employeeId' style="width: 154px"
															value="${downgoods.employeeId}" />
													</td>
													<td align="right">
														�¼�����:
													</td>
													<td>
														<input class="text" name='downCount'
															style="width: 154px" value="${downgoods.downCount}" />
													</td>
												</tr>
												<tr>
													<td align="right">
														��ע:
													</td>
													<td colspan="3">
														<textarea name="remarks" cols="100" rows="8" >${downgoods.remarks}</textarea>
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
						<td colspan="2" align="center" height="50px">
							<input type="submit" name="Submit" value="�ύ" class="button"/>
 
							<input type="button" name="Submit2" value="����" class="button"
								onclick="window.history.go(-1);" />
						</td>
					</tr>
				</table>
			</div>
		</form>
	</body>
</html>


