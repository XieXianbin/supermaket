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

function vipbr(){
	
	var br=window.vip.vipIdNum.value;
	var mess=br.substring(6, 10)+'-'+br.substring(10, 12)+'-'+br.substring(12, 14);
	window.vip.vipBirthday.value=mess;
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
  <form action="addVip.do" method="post"  name="vip" onsubmit="return check()" >
<div class="MainDiv">
<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >��Ա���</th>
  </tr>
  <tr>
    <td class="CPanel">
		
		<table border="0" cellpadding="0" cellspacing="0" style="width:100%">
			<TR>
			<TD width="100%">
				<fieldset style="height:100%;">
				<legend>��ӻ�Ա</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					 
					  <tr>
					    <td align="right" width="15%">��Ա����:</td>
					    <td width="35%"><input name='vipName' type="text" class="text" style="width:154px" value="" />
				        <span class="red">*</span></td>
					    <td width="16%" align="right" nowrap="nowrap">��Ա����:</td>
					    <td width="34%"><input class="text" name='vipPass' style="width:154px" value=""/><span class="red">*</span></td>
					  </tr>
					    
					    
					  <tr>
					    <td nowrap="nowrap" align="right">�Ա�:</td>
					    <td><input type="radio" name ="vipSex" value="��" checked/>��&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name ="vipSex" value="Ů"/>Ů</td>
					    <td align="right">�绰:</td>
					    <td width="35%"><input name='vipTel' type="text" class="text" style="width:154px" value="" /></td>
					  </tr>
					  <tr>
					    <td align="right">���֤��:</td>
					    <td width="35%"><input name='vipIdNum' type="text" class="text" style="width:154px" value="" onblur="vipbr()" /></td>
					     <td align="right">��������:</td>
					    <td><input class="text" type="text" name='vipBirthday' id="date" style="width:154px"  readonly="readonly"  /></td>
					    
					  </tr>
					  <tr>
					    <td align="right">סַ:</td>
						<td width="35%"><input name='vipAddress' type="text" class="text" style="width:154px" value="" /></td>
					    <td align="right">����:</td>
					    <td width="35%"><input name='vipEmail' type="text" class="text" style="width:154px" value="" /></td>
					  </tr>
					  <tr>
                        <td align="right">������ʾ����:</td>
					    <td>
							<select id="xxx" name="vipQuestion" style="width:158px">
								<option id="xxx">��ĳ��������ģ�</option>
								<option id="xxx">��Ĵ�ѧ����ʲôѧУѧϰ��</option>
								<option id="xxx">����</option>
							</select>
							<span class="red">*</span>
						</td>
					    <td align="right">QQ:</td>
					    <td width="35%"><input name='vipQQ' type="text" class="text" style="width:154px" value="" /></td>
					    </tr>
					  <tr>
                        <td align="right">��:</td>
					    <td width="35%"><input name='vipAnswer' id="vipAnswer"type="text" class="text" style="width:154px"/><span class="red"> *</span></td>
					    <td align="right"></td>
					    <td></td>
					    </tr>
					 
					  <tr>
					    <td align="right">��ע:</td>
					    <td colspan="3"><textarea name="vipRemarks" id="wysiwyg" rows="8" cols="100" ></textarea></td>
					    <!--<td colspan="3"><textarea name="vipRemarks" cols="100" rows="8"></textarea></td>-->
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

