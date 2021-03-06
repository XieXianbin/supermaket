<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
<script type="text/javascript" src="../../js/jquery-1.3.2.js"></script>
    <script type="text/javascript" src="../../js/jquery.wysiwyg.js"></script>
    <link rel="stylesheet" href="../../css/jquery.wysiwyg.css" type="text/css" />
<link rel="stylesheet" rev="stylesheet" href="../../css/style.css"
	type="text/css" media="all" />
<script language="JavaScript" type="text/javascript">
function check()
{
 if(window.product.productName.value==""){
  alert("带*为必填内容");
  window.product.productName.focus();
  return false;
  }
  
 if(window.product.productTypeId.value==""){
  alert("带*为必填内容");
  window.product.productTypeId.focus();
  return false;
  }
 
  if(window.product.productPrice.value==""){
  alert("带*为必填内容");
  window.product.productPrice.focus();
  return false;
  }
}
</script>
<title>商品添加</title>
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

	<form action="insertProduct.do" method="post" name="product"
		onsubmit="return check()">
		<div class="MainDiv">
			<table width="99%" border="0" cellpadding="0" cellspacing="0"
				class="CContent">
				<tr>
					<th class="tablestyle_title">商品信息录入</th>
				</tr>
				<tr>
					<td class="CPanel">

						<table border="0" cellpadding="0" cellspacing="0"
							style="width:100%">

							<TR>
								<TD width="100%">
									<fieldset style="height:100%;">
										<legend>添加单个商品信息</legend>
										<table border="0" cellpadding="2" cellspacing="1"
											style="width:100%">

											<tr>
												<td nowrap="nowrap" align="right">商品名称:</td>
												<td><input class="text" name='productName'> <span
													class="red">*</span></td>
												<td align="right">商品类型:</td>
												<td width="34%">
												 <select id="xxx" name="productTypeId" style="width:142px">
												 <option>请选择</option>
													<c:forEach items="${productTypeList}" var="productType">
														<option value="${productType.productTypeName}">${productType.productTypeName}</option>
													</c:forEach>
												</select> 
												
												<!-- 
												<input class="text"
													name='productTypeId'>
													-->
													<span class="red">*</span></td>
											</tr>


											<tr>
												<td nowrap="nowrap" align="right">商品规格:</td>
												<td><input class="text" name='productNorms'></td>
												<td align="right">商品售价:</td>
												<td><input class="text" name='productPrice'> <span
													class="red">*</span></td>
											</tr>
											<tr>
												<td nowrap="nowrap" align="right">生产商:</td>
												<td><input class="text" name='producer'></td>
												<td align="right">条形码:</td>
												<td><input class="text" name='barCode'></td>
											</tr>


											<tr>
												<td align="right">备&nbsp;&nbsp;&nbsp;&nbsp;注:</td>
												<td colspan="3"><textarea name="remarks" id="wysiwyg" rows="5" cols="80"></textarea></td>
														
											
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
    </script></tr>
										</table>
										<br />
									</fieldset>
								</TD>

							</TR>


						</TABLE>
					</td>
				</tr>


				<tr>
					<td colspan="2" align="center" height="50px"><input
						type="submit" name="Submit" value="保存" class="button" /> <input
						type="button" name="Submit2" value="返回" class="button"
						onclick="window.history.go(-1);" />
					</td>
				</tr>
			</table>


			<br>

		</div>
	</form>
	<form action="UploadFile.do" method="post"
		enctype="multipart/form-data" onsubmit="">
		<div class="MainDiv">
			<table width="99%" border="0" cellpadding="0" cellspacing="0"
				class="CContent">

				<tr>
					<td class="CPanel">

						<table border="0" cellpadding="0" cellspacing="0"
							style="width: 100%">

							<tr>
								<td width="100%">
									<fieldset style="height: 100%;">
										<legend> 导入多个商品信息 </legend>
										<table border="0" cellpadding="2" cellspacing="1"
											style="width: 100%">

											<tr>
												<td align="center" height="50px">请选择商品信息excel文件<input
													type="file" name="filename">${mess}</br></td>
											</tr>
										</table>
									</fieldset></td>
							</tr>

						</table></td>
				</tr>

				<tr>
					<td colspan="2" align="center" height="50px"><input
						type="submit" name="Submit" value="提交" class="button" /> <input
						type="button" name="Submit2" value="返回" class="button"
						onclick="window.history.go(-1);" /></td>
				</tr>

			</table>
		</div>
	</form>

</body>

</html>
