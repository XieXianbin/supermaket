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

	<body class="ContentBody" onload="alert('11')">
		<form action="upgoodsList1.action" method="post">
			<div class="MainDiv">
				<table width="99%" border="0" cellpadding="0" cellspacing="0"
					class="CContent">
					<tr>
						<th class="tablestyle_title">
							������Ϣ�б�
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
												�޸���Ʒ�ϼ���Ϣ
											</legend>
											<table border="0" cellpadding="2" cellspacing="1"
												style="width: 100%">

												<tr>
													<td nowrap="nowrap" align="right" width="15%">
														��Ʒ���:
													</td>
													<td width="35%">
														<input name='productId' type="text" class="text"
															style="width: 154px" value="${upgoods1.productId}"  />
														<span class="red">*</span>
													</td>
													<td width="16%" align="right" nowrap="nowrap">
														��Ʒ����:
													</td>
													<td width="34%">
														<input class="text" name='productName' style="width: 154px"
															value="${upgoods1.productName}" />
														<span class="red">*</span>
													</td>
												</tr>


												<tr>
													<td nowrap="nowrap" align="right">
														������:
													</td>
													<td>
														<input class="text" name='producer' style="width: 154px"
															value="${upgoods1.producer}" />
													</td>
													<td align="right">
														����:
													</td>
													<td>
														<input class="text" name='inPrice'
															style="width: 154px" value="${upgoods1.inPrice}" />
													</td>
												</tr>
												<tr>
												<td align="right">
														�ɹ�����:
													</td>
													<td>
														<input class="text" name='count'
															style="width: 154px" value="${upgoods1.count}" />
													</td>
												</tr>
												<tr>
												<td align="right">
														����ʱ��:
													</td>
													<td>
														<input class="text" name='productTime'
															style="width: 154px" value="${upgoods1.productTime}" />
													</td>
												</tr>
												<tr>
												<td align="right">
														���ܱ��:
													</td>
													<td>
														<input class="text" name='shelfId'
															style="width: 154px" value="${upgoods1.shelfId}" />
													</td>
												</tr>
												<tr>
												<td align="right">
														�ϼ�����:
													</td>
													<td>
														<input class="text" name='upCount'
															style="width: 154px" value="${upgoods1.upCount}" />
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
					<!-- <td colspan="2" align="center" height="50px">
							<input type="submit" name="Submit" value="�ύ" class="button"/>
 
							<input type="button" name="Submit2" value="����" class="button"
								onclick="window.history.go(-1);" />
						</td> -->
						
					</tr>
				</table>
			</div>
		</form>
	</body>
</html>


