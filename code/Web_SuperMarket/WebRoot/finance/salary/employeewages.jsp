<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
<link rel="stylesheet" rev="stylesheet" href="../../css/style.css" type="text/css" media="all" />
<script type="text/javascript" src="../../js/calendar.js"></script>

<script language="JavaScript" type="text/javascript">
function check()
{
 if(window.wages.employeeId.value==""){
  alert("��*Ϊ��������");
  window.wages.employeeId.focus();
  return false;
  }
}

var xmlHttp;
function createHttpRequest(){
	// �������IE�������IE7(7.0�����ϰ汾)����xmlhttprequest���󴴽�
	if(window.XMLHttpRequest){
		xmlHttp=new XMLHttpRequest();
	}else if(window.ActiveXObject){
		xmlHttp=new ActiveXObject("Microsoft.XMLHttp");
	}
}

  function salarycheck(){
  if(document.getElementById("employeeId").value!=""){
    createHttpRequest();
    var employeeId=document.getElementById("employeeId").value;
	xmlHttp.open("post", "Ajax.do?employeeId="+employeeId,true);
	xmlHttp.send(null);
	xmlHttp.onreadystatechange=StateChange;
  }
  }
  function StateChange(){
	if(xmlHttp.readyState==4){
		if(xmlHttp.status==200){
			var mess=xmlHttp.responseText;
			//alert(mess);
			var m=mess.split("-");
			if(m[4]=="fg"){
			   document.getElementById("deptName").value="";
			   document.getElementById("employeeName").value="";
			   document.getElementById("basicWage").value="";
			   document.getElementById("salary").value="";
			   alert("��Ա���Ѿ�����ϸ��¹��ʣ�����");
			}else{
			   document.getElementById("deptName").value=m[0];
			   if(document.getElementById("deptName").value==""){
			      document.getElementById("employeeName").value="";
			      document.getElementById("basicWage").value="";
			      document.getElementById("salary").value="";
			      alert("����Ա����Ŵ��󣡣���");
			   }else{
			      document.getElementById("employeeName").value=m[1];
			      document.getElementById("basicWage").value=m[2];
			      document.getElementById("salary").value=m[3];
			   }
		    }
		}
	}
  }
</script>
<style type="text/css">
<!--
.atten {font-size:12px;font-weight:normal;color:#F00;}
-->
</style>
</head>
<script type="text/javascript" src="../js/jquery-1.3.2.js"></script>
<script type="text/javascript" src="../js/jquery.wysiwyg.js"></script>
<link rel="stylesheet" href="../css/jquery.wysiwyg.css" type="text/css" />



<body class="ContentBody">
  <form action="addSalary.do" method="post"  name="wages" onsubmit="return check()" >
<div class="MainDiv">
<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >���ʷ���</th>
  </tr>
  <tr>
    <td class="CPanel">
		
		<table border="0" cellpadding="0" cellspacing="0" style="width:100%">
			<TR>
			<TD width="100%">
				<fieldset style="height:100%;">
				<legend>����</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					 
					  <tr>
					    <td align="right" width="15%">Ա�����:</td>
					    <td width="35%"><input name='employeeId' id="employeeId" type="text" class="text" style="width:154px" value="" onblur="salarycheck()"/>
				        <span class="red">*</span></td>
					    <td width="16%" align="right" nowrap="nowrap">Ա������:</td>
					    <td width="34%"><input class="text" name='deptName' id="deptName" style="width:154px" value="" readonly="readonly"/></td>
					  </tr>
					    
					    
					 
					  <tr>
					    <td align="right">Ա������:</td>
					    <td width="35%"><input name='employeeName' id="employeeName" type="text" class="text" style="width:154px" value="" readonly="readonly"/></td>
					    <td align="right">��������:</td>
					    <td width="35%"><input name='basicWage' id="basicWage" type="text" class="text" style="width:154px" value="" readonly="readonly"/></td>
					  </tr>
					  
					  
					  <tr>
					    <td align="right">Ӧ������:</td>
					    <td width="35%"><input name='salary' id="salary" type="text" class="text" style="width:154px" value="" readonly="readonly"/></td>
					  </tr>
					  
					 
					  <tr>
					    <td align="right">���ű�ע:</td>
					    <td colspan="3"><textarea name="remarks" id="wysiwyg" rows="8" cols="100" ></textarea></td>
					    </tr>
					  </table>
			  <br/>
				</fieldset>			
				</TD>
		</TR>
		</TABLE>
	 </td>
  </tr>
		<TR>
			<TD colspan="2" align="center" height="50px">
			<input type="submit" name="Submit" value="�ύ" class="button" />��
			
			<input type="button" name="Submit2" value="����" class="button" onclick="window.history.go(-1);"/></TD>
		</TR>
		</TABLE>
</div>
</form>
</body>
</html>
<script type="text/javascript">
	
	function aaa()
	{
	var a = document.getElementById("wysiwyg").value;
	alert(a);
	}
    </script>
    <script type="text/javascript">
		(function($)
		{
		  $('#wysiwyg').wysiwyg({
			controls: {
			  strikeThrough : { visible : true },
			  underline     : { visible : true },
			  
			  separator00 : { visible : true },
			  
			  justifyLeft   : { visible : true },
			  justifyCenter : { visible : true },
			  justifyRight  : { visible : true },
			  justifyFull   : { visible : true },
			  
			  separator01 : { visible : true },
			  
			  indent  : { visible : true },
			  outdent : { visible : true },
			  
			  separator02 : { visible : true },
			  
			  subscript   : { visible : false },
			  superscript : { visible : false },
			  
			  separator03 : { visible : false },
			  
			  undo : { visible : false },
			  redo : { visible : false },
			  
			  separator04 : { visible : false },
			  
			  insertOrderedList    : { visible : true },
			  insertUnorderedList  : { visible : true },
			  insertHorizontalRule : { visible : true },
			  
			  h4mozilla : { visible : false && $.browser.mozilla, className : 'h4', command : 'heading', arguments : ['h4'], tags : ['h4'], tooltip : "Header 4" },
			  h5mozilla : { visible : false && $.browser.mozilla, className : 'h5', command : 'heading', arguments : ['h5'], tags : ['h5'], tooltip : "Header 5" },
			  h6mozilla : { visible : false && $.browser.mozilla, className : 'h6', command : 'heading', arguments : ['h6'], tags : ['h6'], tooltip : "Header 6" },
			  
			  h4 : { visible : false && !( $.browser.mozilla ), className : 'h4', command : 'formatBlock', arguments : ['<H4>'], tags : ['h4'], tooltip : "Header 4" },
			  h5 : { visible : false && !( $.browser.mozilla ), className : 'h5', command : 'formatBlock', arguments : ['<H5>'], tags : ['h5'], tooltip : "Header 5" },
			  h6 : { visible : false && !( $.browser.mozilla ), className : 'h6', command : 'formatBlock', arguments : ['<H6>'], tags : ['h6'], tooltip : "Header 6" },
			  
			  separator07 : { visible : false },
			  
			  cut   : { visible : false },
			  copy  : { visible : false },
			  paste : { visible : false }
			}
		  });
		})(jQuery);
    </script>

