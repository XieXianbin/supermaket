<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>


</head>
<script type="text/javascript">
	function updateOutexpense(id) {
		var check = window.confirm("ȷ��������");
		if (check) {
			location.replace("selectOneOutexpense.do?outExpenId=" + id);
		}
	}
</script>
<body>
	<center>
		<a href="outexpenseInsert.jsp"> <font size="7" face="Verdana">
				¼��֧����Ϣ </font> </a>
		<table width="100%" style="margin-top:5px; margin-bottom: 5px"
			border="0" cellpadding="4" cellspacing="1" bgcolor="#6898B9"
			class="newfont03" class="display" id="example">


			<thead>
				<tr>
					<th style="color:#fff">֧����ˮ��</th>
					<th style="color:#fff">Ա�����</th>
					<th style="color:#fff">֧��ԭ��</th>
					<th style="color:#fff">���</th>
					<th style="color:#fff">ʱ��</th>
					<th style="color:#fff">��ע</th>
					<th style="color:#fff">����</th>
				</tr>
			</thead>

			<tr>
				<td align="center">${outexpense.outExpenId}</td>
				<td align="center">${outexpense.employeeId}</td>
				<td align="center">${outexpense.outReason}</td>
				<td align="center">${outexpense.money}</td>
				<td align="center">${outexpense.outDate}</td>
				<td align="center">${outexpense.remarks}</td>


				<td><a
					href="javascript:updateOutexpense('${outexpense.outExpenId}')">�޸�</a>

				</td>
			</tr>
		</table>

	</center>

</body>
</html>
