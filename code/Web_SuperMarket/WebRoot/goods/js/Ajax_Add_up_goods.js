
//����XMLHttprequest����
var xmlHttp;
function createHttpRequest(){
	// �������IE�������IE7(7.0�����ϰ汾)����XMLHttpRequest���󴴽�
	if(window.XMLHttpRequest){
		xmlHttp=new XMLHttpRequest();
	}else if(window.ActiveXObject){
		xmlHttp=new ActiveXObject("Microsoft.XMLHttp");
	}
}
function selectPurchInfo(){
	createHttpRequest();
	var purchId = document.getElementById("purchId").value;
//	alert("selectPurchInfo:"+purchId);
	if(purchId != ""){
		xmlHttp.open("post","upGoodsInfo.action?purchId="+purchId, true);
		xmlHttp.send(null);
		xmlHttp.onreadystatechange=function (){
			if(xmlHttp.readyState==4){//�������������
				if(xmlHttp.status==200){//��������Ӧ�ɹ�
//					alert(xmlHttp.responseText);
					var goods = xmlHttp.responseText.split("#")[1];
					var goodsInfo=goods.split(",");
					document.getElementById("productId").value=goodsInfo[0];
					document.getElementById("productName").value=goodsInfo[1];
					document.getElementById("productTime").value=goodsInfo[2];
					document.getElementById("expireTime").value=goodsInfo[3];
					document.getElementById("remainNum").value=goodsInfo[4];
					document.getElementById("companyId").value=goodsInfo[5];
					document.getElementById("productNorms").value=goodsInfo[6];
//					alert(goodsInfo[6]);
//					var remainNum = goodsInfo[4];
//					var select = "";
				//	for(var i=0; i<remainNum; i++){
					//	select+=;
						
						
				//	}
					
				}
			}
		};
	}
}




