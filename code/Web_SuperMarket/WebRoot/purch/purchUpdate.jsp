<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>���вɹ�</title>
</head>
<link rel="stylesheet" rev="stylesheet" href="../css/style.css" type="text/css" media="all" />
<body class="ContentBody">

  <form action="purchUpdate.do" method="post"  name="form"  >
<div class="MainDiv">
<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >�ɹ�������</th>
  </tr>
  <tr>
    <td class="CPanel">
		
		<table border="0" cellpadding="0" cellspacing="0" style="width:100%">
		
				<TR>
			<TD width="100%"> 
				<fieldset style="height:100%;">
				<legend>�ɹ���Ϣ����</legend>
				
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					  
					  <tr>
					    <td nowrap align="right" width="15%">��Ʒ���:</td>
					    <td width="35%"><input name='productId' class="text" type="text" value="${onePurch.productId}">
					    <td width="16%" align="right" nowrap="nowrap">�ɹ�ʱ��:</td>
					    <td width="34%"><input class="text" name='purchTime' value="${onePurch.purchTime}"></td>
					  </tr>
					    
					    
					  <tr>
					    <td nowrap="nowrap" align="right">��Ʒ����:</td>
					    <td><input class="text" name='inPrice' value="${onePurch.inPrice}"></td>
					    <td align="right">�ɹ�����:</td>
					    <td><input class="text" name='purchCount' value="${onePurch.purchCount}"></td>
					  </tr>
					  <tr>
					    <td nowrap="nowrap" align="right">����ʱ��:</td>
					    <td><input class="text" name='productTime' value="${onePurch.productTime}"></td>
					    <td align="right">����ʱ��:</td>
					    <td><input class="text" name='expireTime'value="${onePurch.expireTime}"></td>
					  </tr>
					  <tr>
					    <td nowrap="nowrap" align="right">Ա�����:</td>
					    <td><input class="text" name='employeeId'value="${onePurch.employeeId}" ></td>
					    <td align="right">�����̱��:</td>
					    <td><input class="text" name='companyId'value="${onePurch.companyId}"></td>
					  </tr>
					  <tr>
					    <td nowrap="nowrap" align="right">�ɹ���ˮ��:</td>
					    <td><input class="text" name='purchId' value="${onePurch.purchId}"  readonly="readonly"></td>
					  </tr>
					 
					  <tr>
					    <td align="right">��&nbsp;&nbsp;&nbsp;&nbsp;ע:</td>
					    <td colspan="3"><textarea name="remarks" cols="100" rows="5" >${onePurch.remarks}</textarea></td>
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
			<input type="submit" name="Submit" value="����" class="button" onclick="alert('���³ɹ���');"/>��
			<input type="button" name="Submit2" value="����" class="button" onclick="window.history.go(-1);"/>
			</td>
		</tr>
		</table>
	
	
	 <br>
  
</div>
</form>

</body>
  
</html>
