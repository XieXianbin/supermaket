<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
		<link rel="stylesheet" rev="stylesheet" href="../../css/style.css"
			type="text/css" media="all" />
	   	<script type="text/javascript" src="../../js/jquery-1.3.2.js"></script>
	   	<script type="text/javascript" src="../../js/jquery.wysiwyg.js"></script>
    	<link rel="stylesheet" href="../../js/jquery.wysiwyg.css" type="text/css" />

		<script language="JavaScript" type="text/javascript">
function check()
{
  if(window.vip.companyAddress.value==""){
  alert("��*Ϊ��������");
  window.vip.companyAddress.focus();
  return false;
  }
  if(window.vip.manager.value==""){
  alert("��*Ϊ��������");
  window.vip.manager.focus();
  return false;
  }
  if(window.vip.companyTel.value==""){
  alert("��*Ϊ��������");
  window.vip.companyTel.focus();
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
		<form action="updateShelfMethod.action" method="post" name="frm">
			<div class="MainDiv">
				<table width="99%" border="0" cellpadding="0" cellspacing="0"
					class="CContent">
					<tr>
						<th class="tablestyle_title"> 
							��ӻ��� 
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
												��ӻ���
											</legend>
											<table border="0" cellpadding="2" cellspacing="1" style="width: 100%">
												<tr>
													<td nowrap="nowrap" align="right" width="15%">
														���ܱ��:
													</td>
													<td width="35%">
														<input name='shelfId' readonly="readonly" type="text" class="text" style="width: 154px" value="${shelfBean.shelfId }" />
														<span class="red">*</span>
													</td>
													<td width="16%" align="right" nowrap="nowrap">
													</td>
													<td width="34%">
													</td>
												</tr>
												<tr>
													<td nowrap="nowrap" align="right">
														����λ��:
													</td>
													<td width="35%">
											<!-- 		<input name='shelfLocation' type="text" class="text" style="width: 154px" value="" />  -->
														<select name="shelfLocation_F">
															<option value="">��ѡ��¥��</option>
															<option value="1F">1¥</option>
															<option value="2F">2¥</option>
															<option value="3F">3¥</option>
															<option value="4F">4¥</option>
															<option value="5F">5¥</option>
														</select>
														<select name="shelfLocation_A">
															<option value="">��ѡ������</option>
															<option value="A">A��</option>
															<option value="B">B��</option>
															<option value="C">C��</option>
															<option value="D">D��</option>
															<option value="E">E��</option>
														</select>
												 		<input name='shelfLocation_N' type="text" class="text" style="width: 54px" value="" />(���)

													</td>
													<td align="right">
													</td>
													<td>
													</td>
												</tr>
												<tr>
													<td align="right">
														���ܹ��:
													</td>
													<td width="35%">
														<input name='shelfType' type="text" class="text" style="width: 154px" value="${shelfBean.shelfType }" />
															<span class="red">*</span></td>
													<td align="right">
													</td>
													<td width="35%">
													</td>
												</tr>	
												<tr>
													<td align="right">
														��ע:
													</td>
													<td colspan="3">
														<div>
													      <textarea name="remarks" id="remarks" rows="7" cols="100" >${shelfBean.remarks }</textarea>
													    </div>
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
							<input type="submit" name="Submit" value="����" class="button"/>

							<input type="button" name="Submit2" value="����" class="button"
								onclick="window.history.go(-1);" />
						</td>
					</tr>
				</table>
			</div>
		</form>
		<script type="text/javascript">
		(function($)
		{
		  $('#remarks').wysiwyg({
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
	</body>
</html>

