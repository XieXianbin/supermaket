<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
		<link rel="stylesheet" rev="stylesheet" href="../css/style.css"
			type="text/css" media="all" />

<script type="text/javascript" src="../js/calendar.js"></script>

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
		<form action="updateAlarm.do" method="post" name="alarm" >
			<div class="MainDiv">
				<table width="99%" border="0" cellpadding="0" cellspacing="0"
					class="CContent">
					<tr>
						<th class="tablestyle_title">
							��ϸ������Ϣ
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
												������Ϣ
											</legend>
											<table border="0" cellpadding="2" cellspacing="1"
												style="width: 100%">
												
												<tr>
													<td nowrap="nowrap" align="right" width="15%">
														�������:
													</td>
													<td width="35%">
														<input name='alarmId' type="text" class="text" readonly="readonly"
															style="width: 154px" value="${alarm.alarmId}" />
													</td>
													</tr>
													
													<tr>
													<td nowrap="nowrap" align="right">
														��Ʒ���:
													</td>
													<td>
														<input class="text" name='productId' readonly="readonly"
														style="width: 154px" value="${alarm.productId}" />
													</td>
													
													<td nowrap="nowrap" align="right">
														��Ʒ����:
													</td>
													<td>
														<input class="text" name='productName' readonly="readonly"
														style="width: 154px" value="${alarm.productName}" />
													</td>
													</tr>

											
												<tr>
													<td align="right">
														�����Ʒ��������:
													</td>
													<td width="35%">
														<input name='storageCountLimit' type="text" class="text" readonly="readonly"
															style="width: 154px" value="${alarm.storageCountLimit}" />
															</td>
													<td align="right">
														������Ʒ��������:
													</td>
													<td width="35%">
														<input name='marketCountLimit' type="text" class="text" readonly="readonly"
															style="width: 154px" value="${alarm.marketCountLimit}" />
															</td>		
													
												</tr>
												
												<tr>
												<td align="right">
														�ౣ������������:
													</td>
													<td width="35%">
														<input name='dayLimit' type="text" class="text" readonly="readonly"
															style="width: 154px" value="${alarm.dayLimit}" />
															</td>
												</tr>
												
												<tr>
													<td align="right">
														��ע:
													</td>
													<td colspan="3">
														<textarea name="remarks" rows="7" cols="100" readonly="readonly">${alarm.remarks}</textarea>
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

							<input type="button" name="Submit2" value="����" class="button"
								onclick="window.history.go(-1);" />
						</td>
					</tr>
				</table>
			</div>
		</form>
	</body>
</html>

