<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
</head>
<SCRIPT language=JavaScript>
	
	function Todate(){
     if(document.getElementById("year").value==""){
     alert(���������);
	document.getElementById("year").focus();
     }
    else if(document.getElementById("month").value==""){
    alert(��ѡ���·�);
     }else{
var vas=document.getElementById("year").value+"-"+document.getElementById("month").value;

  location.replace("oneproType.do?datime="+vas);
}
}
</SCRIPT>

<body>
<table width="99%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="20" align="right"><input type="text" id="year">
      ��
      <select  id="month">
        <option value="">��ѡ���·�</option>
        <option value="1">01</option>
        <option value="2">02</option>
        <option value="3">03</option>
        <option value="4">04</option>
        <option value="5">05</option>
        <option value="6">06</option>
        <option value="7">07</option>
        <option value="8">08</option>
        <option value="9">09</option>
        <option value="10">10</option>
        <option value="11">11</option>
        <option value="12">12</option>
      </select>
      ��
      <input type="button" onclick="Todate()" value="���²�ѯ"></td>
  </tr>
  <tr>
    <td align="center">${time}���������б�</td>
  </tr>
  <tr>
    <td align="right"><input type="button" value="�鿴��״ͼ"></td>
  </tr>
  <tr>
    <td><table border="1" cellspacing="0" align="center">
        <tr>
          <th>��Ʒ�����</th>
          <th>��Ʒ�������</th>
          <th >��Ʒ���</th>
          <th>��Ʒ����</th>
          <th >��������</th>
        </tr>
        <c:forEach items="${protype}" var="pro">
          <tr>
            <td align="center"><input type="text" style="border: 0;list-style-position: center"  value="${pro.proTyId}" readonly="readonly" name="protyId"></td>
            <td align="center"><input type="text" style="border: 0;"  value="${pro.proTyName}" readonly="readonly" name="protyName"></td>
            <td align="center"><input type="text" style="border: 0"  value="${pro.proId}" readonly="readonly" name="proId"></td>
            <td align="center"><input type="text" style="border: 0"  value="${pro.proName}" readonly="readonly" name="proName"></td>
            <td align="center"><input type="text" style="border: 0"  value="${pro.sumcount}" readonly="readonly" name="sumcount"></td>
          </tr>
        </c:forEach>
      </table></td>
  </tr>
</table>
</body>
</html>