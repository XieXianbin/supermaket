
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

function addDuty_selectInf() {
	createHttpRequest();
	var employeeId = document.getElementById("employeeId").value;
//	alert(employeeId);
	if(employeeId != ""){
		xmlHttp.open("post","../../dailyManager/duty/getEmployeeInf.action?employeeId="+employeeId, true);
		xmlHttp.onreadystatechange=function (){
			if(xmlHttp.readyState==4){//�������������
				if(xmlHttp.status==200){//��������Ӧ�ɹ�
					var Resouse=xmlHttp.responseText.split("#");
//					alert("--"+Resouse[1]+"--");
					var reResouse = Resouse[1].split(",");
					document.getElementById("employeeName").value=reResouse[0];
					document.getElementById("deptName").value=reResouse[1];
				}
			}
		};
		xmlHttp.send(null);
	}
}