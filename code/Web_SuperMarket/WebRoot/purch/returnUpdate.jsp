<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>���вɹ�</title>
</head>
<link rel="stylesheet" rev="stylesheet" href="../css/style.css" type="text/css" media="all" />
<body class="ContentBody">

  <form action="returnUpdate.do" method="post"  name="form"  >
<div class="MainDiv">
<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >�˹�������</th>
  </tr>
  <tr>
    <td class="CPanel">
		
		<table border="0" cellpadding="0" cellspacing="0" style="width:100%">
		
				<TR>
			<TD width="100%"> 
				<fieldset style="height:100%;">
				<legend>�˹���Ϣ</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					 
					  <tr>
					    <td nowrap align="right" width="15%">�ɹ���ˮ��:</td>
					    <td width="35%"><input name='purchId' class="text" type="text" value="${oneReturn.purchId}">
					    <td width="16%" align="right" nowrap="nowrap">��Ʒ�˼�:</td>
					    <td width="34%"><input class="text" name='returnPrice'value="${oneReturn.returnPrice}"></td>
					  </tr>
					    
					    
					  <tr>
					    <td nowrap="nowrap" align="right">�˹�����:</td>
					    <td><input class="text" name='returnCount' value="${oneReturn.returnCount}"></td>
					    <td align="right">�˹�ʱ��:</td>
					    <td><input class="text" name='returnTime'value="${oneReturn.returnTime}"></td>
					  </tr>
					  
					  <tr>
					    <td nowrap="nowrap" align="right">Ա�����:</td>
					    <td><input class="text" name='employeeId'value="${oneReturn.employeeId}" ></td>
					    <td align="right">�����̱��:</td>
					    <td><input class="text" name='companyId'value="${oneReturn.companyId}"></td>
					  </tr>
					  <tr>
					    <td nowrap="nowrap" align="right">�˹���ˮ��:</td>
					    <td><input class="text" name='returnId' value="${oneReturn.returnId}" readonly="readonly"></td>
					    
					  </tr>
					 
					  <tr>
					    <td align="right">��&nbsp;&nbsp;&nbsp;&nbsp;ע:</td>
					    <td colspan="3"><textarea name="remarks" cols="100" rows="5">${oneReturn.remarks}</textarea></td>
					    </tr>
					  </table>
			  <br />
				</fieldset>			</TD>
			
		</TR>
		
		
		</TABLE>
	
	 </td>
  </tr>
  
		
		<tr>
			<td colspan="2" align="center" height="50px">
			<input type="submit" name="Submit" value="����" class="button" onclick="alert('����ɹ���');"/>��
			<input type="button" name="Submit2" value="����" class="button" onclick="window.history.go(-1);"/>
			</td>
		</tr>
		</table>
	
	
	 <br>
  
</div>
</form>

</body>
  
</html>
