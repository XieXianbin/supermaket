<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
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

<script language="JavaScript" type="text/javascript">
function check()
{
 if(window.instorage.purchId.value==""){
  alert("��*Ϊ��������");
  window.instorage.purchId.focus();
  return false;
  }
  if(window.instorage.storageId.value==""){
  alert("��*Ϊ��������");
  window.instorage.storageId.focus();
  return false;
  }
  if(window.instorage.employeeId.value==""){
  alert("��*Ϊ��������");
  window.instorage.employeeId.focus();
  return false;
  }
   if(window.instorage.inNum.value==""){
  alert("��*Ϊ��������");
  window.instorage.inNum.focus();
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
	<form action="addGoodsType.do" method="post" name="instorage"
		onsubmit="return check()">
		<div class="MainDiv">
			<table width="99%" border="0" cellpadding="0" cellspacing="0"
				class="CContent">
				<tr>
					<th class="tablestyle_title">�������Ʒ���</th>
				</tr>
				<tr>
					<td class="CPanel">

						<table border="0" cellpadding="0" cellspacing="0"
							style="width: 100%">

							<tr>
								<td width="100%">
									<fieldset style="height: 100%;">
										<legend> �������Ʒ��� </legend>
										<table border="0" cellpadding="2" cellspacing="1"
											style="width: 100%">



											<tr>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											</tr>
											<tr>

												<!-- 
													<td nowrap="nowrap" align="right">
														��Ʒ���:
													</td>
													<td>
														<input class="text" name='productId' style="width: 154px"
															value="" />
													</td>
													
													 -->
												<td align="right" >Ҫ��ӵ���Ʒ�������:</td>
												<td width="60%" ><input class="text" name='productTypeName'  
													 value="" /></td>
											</tr>




											<tr>
												<td align="right">��ע:</td>
												<td><textarea name="remarks" cols="100"
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

