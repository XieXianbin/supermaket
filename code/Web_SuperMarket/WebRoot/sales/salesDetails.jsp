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
			changeMonth: true,
			changeYear: true
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
		<form action="updateGoodsType.do" method="post">
			<div class="MainDiv">
				<table width="99%" border="0" cellpadding="0" cellspacing="0"
					class="CContent">
					<tr>
						<th class="tablestyle_title">
							�鿴���ۼ�¼����
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
												�鿴���ۼ�¼����
											</legend>
											
											
					<!-- 					
    private int salesId;//���۱��(����)
	private int purchId;//�ɹ���ˮ��
	private float productPrice;//��Ʒ�ۼ�
	private int count;//�˿͹��������
	private int employeeId;//����Ա��Ա�����
	private String salesTime;//ʱ��
	private String salesWaterNo;//������ˮ�ţ�����Ա�����+����ʱ�䣩
	private int vipId;//��ԱId
	private String payType;//���ʽ(�ֽ��ˢ����������)
	private String remarks;//��ע
							 -->					
											
											
											<table border="0" cellpadding="2" cellspacing="1"
												style="width: 100%">
												
												<tr>
													<td nowrap="nowrap" align="right" width="15%">
														���۱��:
													</td>
													<td width="35%">
														<input name='salesId' type="text" class="text" readonly="readonly"
															style="width: 154px" value="${salesData.salesId}" />
													</td>
													
													<td nowrap="nowrap" align="right" width="15%">
														�ɹ���ˮ��:
													</td>
													<td width="35%">
														<input name='productTypeId' type="text" class="text" readonly="readonly"
															style="width: 154px" value="${salesData.purchId}" />
													</td>
													
													
												</tr>
												
												
												
												<tr>
													<td nowrap="nowrap" align="right" width="15%">
														��Ʒ����:
													</td>
													<td width="35%">
														<input name='salesId' type="text" class="text" readonly="readonly"
															style="width: 154px" value="${salesData.purchId}" />
													</td>
													
													<td nowrap="nowrap" align="right" width="15%">
														��Ʒ�ۼ�:
													</td>
													<td width="35%">
														<input name='productTypeId' type="text" class="text" readonly="readonly"
															style="width: 154px" value="${salesData.productPrice}" />
													</td>
												</tr>
												
												
												
																								<tr>
													<td nowrap="nowrap" align="right" width="15%">
														�˿͹��������:
													</td>
													<td width="35%">
														<input name='salesId' type="text" class="text" readonly="readonly"
															style="width: 154px" value="${salesData.count}" />
													</td>
													
													<td nowrap="nowrap" align="right" width="15%">
														����Ա��Ա�����:
													</td>
													<td width="35%">
														<input name='productTypeId' type="text" class="text" readonly="readonly"
															style="width: 154px" value="${salesData.employeeId}" />
													</td>
												</tr>
												
												
																								<tr>
													<td nowrap="nowrap" align="right" width="15%">
														����ʱ��:
													</td>
													<td width="35%">
														<input name='salesId' type="text" class="text" readonly="readonly"
															style="width: 154px" value="${salesData.salesTime}" />
													</td>
													
													<td nowrap="nowrap" align="right" width="15%">
														������ˮ��:
													</td>
													<td width="35%">
														<input name='productTypeId' type="text" class="text" readonly="readonly"
															style="width: 154px" value="${salesData.salesWaterNo}" />
													</td>
												</tr>
												
												<tr>
													<td nowrap="nowrap" align="right" width="15%">
														��ԱId:
													</td>
													<td width="35%">
														<input name='salesId' type="text" class="text" readonly="readonly"
															style="width: 154px" value="${salesData.vipId}" />
													</td>
													
													<td nowrap="nowrap" align="right" width="15%">
														���ʽ:
													</td>
													<td width="35%">
														<input name='productTypeId' type="text" class="text" readonly="readonly"
															style="width: 154px" value="${salesData.payType}" />
													</td>
												</tr>
												
												
												

												
												
														<tr>
													<td align="right">
														��ע:
													</td>
													<td colspan="3">
														<textarea name="remarks" cols="100" rows="8" ></textarea>
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

