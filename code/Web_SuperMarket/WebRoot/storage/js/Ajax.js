
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

//function selectPartDutyList(){
//	createHttpRequest();
//	var deptId = document.getElementById("deptId").value;
////	alert("��ѯ����ֵ����Ϣ:"+deptId);
//	if(deptId != ""){
//		xmlHttp.open("post","dutyDeptList.action?deptId="+deptId, true);
//		xmlHttp.send(null);
//		xmlHttp.onreadystatechange=function (){
//			if(xmlHttp.readyState==4){//�������������
//				if(xmlHttp.status==200){//��������Ӧ�ɹ�
//					document.getElementById('partDutyList').innerHTML=xmlHttp.responseText;
//					alert(xmlHttp.responseText);
//				}
//			}
//		};
//	}
//}


function addIn_selectInf() {
	createHttpRequest();
	var purchId = document.getElementById("purchId").value;
 	//alert(purchId);
	if(purchId != ""){
		xmlHttp.open("post","getProductInf.do?purchId="+purchId, true);
		xmlHttp.onreadystatechange=function (){
			if(xmlHttp.readyState==4){//�������������
				if(xmlHttp.status==200){//��������Ӧ�ɹ�
					var Resouse=xmlHttp.responseText.split("#");
					//alert("--"+Resouse[1]+"--");
					if(Resouse[1]!=0){
						document.getElementById("productId").value=Resouse[1];
						document.getElementById("productName").value=Resouse[2];
					}else{
						alert("�˲ɹ���ˮ�Ų����ڣ����������룡");
						document.getElementById("purchId").focus();
					}
					
				}
			}
		};
		xmlHttp.send(null);
	}
}

function checkNum(){
	createHttpRequest();
	var inNum=document.getElementById("inNum").value;
	//alert(inNum);
	if (isNaN(inNum))
	{
		alert("�Ƿ��ַ���");
		document.getElementById("inNum").value="";
		//document.getElementById("inNum").focus();
		
	}else{

	var purchId=document.getElementById("purchId").value;
	xmlHttp.open("post","getProductInf.do?purchId="+purchId, true);
	xmlHttp.send(null);
	xmlHttp.onreadystatechange=function (){
		if(xmlHttp.readyState==4){//�������������
			if(xmlHttp.status==200){//��������Ӧ�ɹ�
				var Resouse=xmlHttp.responseText.split("#");
				//alert("--"+Resouse[3]+"--");
				var purchCount=Resouse[3];
				if(inNum>purchCount){
					alert("����������ܴ��ڲɹ�������");
					document.getElementById("inNum").value="";
					document.getElementById("inNum").focus();
				}
			}
	}
	};
	}
}
	





