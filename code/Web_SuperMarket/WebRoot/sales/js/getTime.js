		//��ȡϵͳʱ��
		function getTimes(){
		//Date
		var date=new Date();
		var year=date.getFullYear();
		var month=date.getMonth()+1;
		var day=date.getDate();
		//һ�ܵĵڼ���
		var weekDay=date.getDay();
		
		switch(weekDay){
			
			case 0:
			weekDay="������";
			break;
			case 1:
			weekDay="����һ";
			break;
			
			case 2:
			weekDay="���ڶ�";
			break;
			
			case 3:
			weekDay="������";
			break;
			
			case 4:
			weekDay="������";
			break;
			
			case 5:
			weekDay="������";
			break;
			
			default:
			weekDay="������";
			
			}
		
		
		
		var hour=date.getHours();
		
		var minu=date.getMinutes();
		var seco=date.getSeconds();
			
			//����������ʱ�����ʽ
		hour=(hour<10)?'0'+hour:hour;
		minu=(minu<10)?'0'+minu:minu;
		seco=(seco<10)?'0'+seco:seco;
		//XXX��xx��xx��
		var content=year+"��"+month+"��"+day+"�� ";
		content+=hour+"ʱ"+minu+"��"+seco+"�� "+weekDay;
		document.getElementById('times').innerHTML=content;
		
	//ÿ��1��ִ��ǰ�¼�
	window.setTimeout(getTimes,1000);
	}