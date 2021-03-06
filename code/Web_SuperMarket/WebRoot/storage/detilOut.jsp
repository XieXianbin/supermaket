<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
			<div class="MainDiv">
				<table width="99%" border="0" cellpadding="0" cellspacing="0"
					class="CContent">
					<tr>
						<th class="tablestyle_title">
							出库信息
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
												出库信息
											</legend>
											<table border="0" cellpadding="2" cellspacing="1"
												style="width: 100%">
												
												<tr>
													<td nowrap="nowrap" align="right" width="15%">
														出库编号:
													</td>
													<td width="35%">
														<input name='outStorageId' type="text" class="text" readonly="readonly"
															style="width: 154px" value="${outStorage.outStorageId}" />
													</td>
													<td nowrap="nowrap" align="right" width="15%">
														采购流水号:
													</td>
													<td width="35%">
														<input name='purchId' type="text" class="text" readonly="readonly"
															style="width: 154px" value="${outStorage.purchId}" />
													</td>
													</tr>

												<tr>
													<td nowrap="nowrap" align="right" width="15%">
														仓库编号:
													</td>
													<td width="35%">
														<input name='storageId' type="text" class="text" readonly="readonly"
															style="width: 154px" value="${outStorage.storageId}" />
													</td>
													<td align="right">
														仓库类型:
													</td>
													<td width="35%">
														<input name='storageType' type="text" class="text" readonly="readonly"
															style="width: 154px" value="${outStorage.storageType}" />
															</td>
												</tr>
												

												
												<tr>
													<td nowrap="nowrap" align="right">
														商品编号:
													</td>
													<td>
														<input class="text" name='productId' style="width: 154px" readonly="readonly"
															value="${outStorage.productId}" />
													</td>
													<td align="right">
														商品名称:
													</td>
													<td>
														<input class="text" name='productName' readonly="readonly"
															style="width: 154px" value="${outStorage.productName}" />
													</td>
												</tr>
												
												
												<tr>
													<td align="right">
														负责人编号:
													</td>
													<td width="35%">
														<input name='employeeId' type="text" class="text" readonly="readonly"
															style="width: 154px" value="${outStorage.employeeId}" />
															</td>
														<td align="right">
															负责人姓名:
														</td>
														<td width="35%">
															<input name='employeeName' type="text" class="text" readonly="readonly"
																style="width: 154px" value="${outStorage.employeeName}" /></td>
												</tr>
												
												<tr>
													<td align="right">
														出库数量:
													</td>
													<td width="35%">
														<input name='outNum' type="text" class="text" readonly="readonly"
															style="width: 154px" value="${outStorage.outNum}" />
															</td>
														<td align="right">
															出库时间:
														</td>
														<td width="35%">
														<input name='outTime' type="text" class="text" 
														 readonly="readonly" style="width: 154px" value="${outStorage.outTime}"/>
														</td>
												</tr>
												
												<tr>
													<td align="right">
														出库去向:
													</td>
													<td width="35%">
														<input name='outDirection' type="text" class="text" readonly="readonly"
															style="width: 154px" value="${outStorage.outDirection}" />
															</td>
												</tr>
												
												<tr>
													<td align="right">
														出库原因:
													</td>
													<td colspan="3">
													<textarea class="text" name="reason" cols="100" rows="8" readonly="readonly">${outStorage.reason}</textarea>
														
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

							<input type="button" name="Submit2" value="返回" class="button"
								onclick="window.history.go(-1);" />
						</td>
					</tr>
				</table>
			</div>
			
	</body>
</html>

