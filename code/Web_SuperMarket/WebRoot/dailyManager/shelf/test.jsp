<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
<title>�¶���</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.tabfont01 {	
	font-family: "����";
	font-size: 9px;
	color: #555555;
	text-decoration: none;
	text-align: center;
}
.font051 {font-family: "����";
	font-size: 12px;
	color: #333333;
	text-decoration: none;
	line-height: 20px;
}
.font201 {font-family: "����";
	font-size: 12px;
	color: #FF0000;
	text-decoration: none;
}
.button {
	font-family: "����";
	font-size: 14px;
	height: 37px;
}
html { overflow-x: auto; overflow-y: auto; border:0;} 
-->
</style>

		<link href="../../css/css.css" rel="stylesheet" type="text/css" />
		<link href="../../css/style.css" rel="stylesheet" type="text/css" />
		<style type="text/css" title="currentStyle">
			@import "../../css/demos.css";
		</style>
		<script type="text/javascript" language="javascript" src="../../js/jquery.js"></script>
		<script type="text/javascript" language="javascript" src="../../js/jquery.dataTables.js"></script>
		<script type="text/javascript" charset="GBK">
			$(document).ready(function() {
				$('#example').dataTable( {
					"sPaginationType": "full_numbers"
				} );
			} );
		</script>
</head>


<body id="dt_example" class="example_alt_pagination">
<form name="fom" id="fom" method="post" action="">
<table width="100%" border="0" cellspacing="0" cellpadding="0">

  <tr>
    <td>
	  <table id="subtree1" style="DISPLAY: " width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td>
		  	<table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
		  	
           	  <tr>
                <td height="40" style="line-height:40px;">
			    	<span class="newfont07">
			 			ѡ��<a href="#" class="right-font08" onclick="selectAll();">ȫѡ</a>-
			 			<a href="#" class="right-font08" onclick="unselectAll();">��ѡ</a>
			 		</span>
	               <input name="Submit" type="button" class="right-button08" value="ɾ����ѡ��Ŀ��Ϣ" />
	               <input name="Submit2" type="button" class="right-button08" value="�����Ŀ" onclick="link();"/>
				 </td>
			  </tr>
			  
			  <tr>
				<td class="tablestyle_title">�����б�</td>
			  </tr>
			  
              <tr>
                <td height="40" class="font42">
					<!-- �������б� -->
					<div id="container">			
					<div id="demo">
					
					<table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#6898B9" class="newfont03" class="display" id="example">
					<thead>
						  <tr>
								<th>ѡ��</th>
								<th style="color:#fff">���ܱ��</th>
								<th style="color:#fff">����λ��</th>
								<th style="color:#fff">���ܹ��</th>
								<th style="color:#fff" width="30%">��ע</th>
								<th style="color:#fff" width="10%">����</th>
						  </tr>
					 </thead>
					 <tbody>
					 <c:forEach items="${shelfList}" var="shelf">
						  <tr>
						  	<!-- ��ѡ��ʼ -->
							<td bgcolor="#FFFFFF" align="center"><input type="checkbox" name="delid"/></td>
							<!-- ��ѡ����� -->
							
							<td align="center" width="8%">${shelf.shelfId}</td>
							<td align="center">${shelf.shelfLocation}</td>
							<td align="center"><a href="#">${shelf.shelfType}</a></td>
							<td align="left">${shelf.remarks}</td>
							<td align="center">
								<a href="#" style="text-decoration: none;color:blue" title="����޸���Ϣ">�޸�</a>
								<a style="text-decoration: none">&nbsp;|&nbsp;</a>
								<a href="#" title="����鿴����" style="text-decoration: none;color:blue">�鿴</a>
							</td>
						  </tr>
					  </c:forEach>
					  </tbody>
                	</table>
					
					
					</div>
					</div>
					<!-- �б� -->
				</td>
              </tr>
            </table>
		   </td>
        </tr>
      </table>
	  
	  <!-- �����Ƿ�ҳ  �˴�����ÿ�δ����ݿ���ȡһҳ���� -->
 <!-- <table width="95%" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#FF0000">
        <tr>
          <td height="33">
			  <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="right-font08">
				  <tr>
					<td width="50%">
						��<span class="right-text09">5</span>ҳ| 
						��<span class="right-text09">1</span>ҳ
					</td>
					<td width="49%" align="right">
						[<a href="#" class="right-font08">��ҳ</a>|
						<a href="#" class="right-font08">��һҳ</a>| 
						<a href="#" class="right-font08">��һҳ</a>|
						<a href="#" class="right-font08">ĩҳ</a>]ת��
					</td>
				  </tr>
			  </table>
		  </td>
        </tr>
      </table> -->
	  <!-- ��ҳ���� -->

	 </td>
  </tr>
</table>
</form>

<SCRIPT language=JavaScript>

function selectAll(){
	var obj = document.fom.elements;
	for (var i=0;i<obj.length;i++){
		if (obj[i].name == "delid"){
			obj[i].checked = true;
		}
	}
}

function unselectAll(){
	var obj = document.fom.elements;
	for (var i=0;i<obj.length;i++){
		if (obj[i].name == "delid"){
			if (obj[i].checked==true) obj[i].checked = false;
			else obj[i].checked = true;
		}
	}
}

function link(){
    document.getElementById("fom").action="xiangmu.htm";
   document.getElementById("fom").submit();
}

</SCRIPT>



</body>
</html>
