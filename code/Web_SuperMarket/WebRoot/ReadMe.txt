1�����ı�ǩ�⵼�룺<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> jstl.jar��standard.jar����
2���Ѿ�����İ������ݿ����ӡ��ϴ����أ�����excel,
3��ͼƬ����WebRoot�µ�images�ļ�����
4��js����js�ļ����£�������������ģ���������
5��css����css�ļ����£�������������ģ���������
6����Ŀ¼�µ�others��vip�ļ���Ĭ�ϲ��߹������������������������ʹ�ã�ʹ�����֮��
7����ģ��ҳ��������Լ�ģ�����������ļ����¡�
8������Ĭ�ϱ���ΪGBK
9����ģ�����������config����com.config��,����mvc_config.xml���ø�ʽ����:
	<import file="mvc_user_config.xml"/> 
10��src �µ�com.verification_code.servlet��Ϊ��֤��ר�ð��������޸ĺ�ʹ��
11��login.htm�Ĵ����ô���Ĭ�ϵ�¼��Ϊ��10001 ����Ϊ��000

12��bean��action��dao���������������ӡ�action��dao�ļ̳�������鿴ʾ����
13����������src�µ�com.tools�µ�Utils�࣬����ΪUtils,������Ϊ��̬���з��� getDate() 2013-1-1, getDate() 2013-1-1 1:1:1
14���������������
	<script type="text/javascript" src="��Ŀ¼��js�е�calendar.js"></script>
	<input name="date" type="text" id="date" onclick="new Calendar().show(this);" readonly="readonly" />
15����ҳ�����
	
	1�������ҳ��css����Ŀ¼��css�е�demos.css���ļ�������js(��Ŀ¼��js�е�jquery.js,jquery.dataTables.js)�ļ���

		<style type="text/css" title="currentStyle">
			@import "../css/demos.css";
		</style>
		<script type="text/javascript" language="javascript" src="../js/jquery.js"></script>
		<script type="text/javascript" language="javascript" src="../js/jquery.dataTables.js"></script>
		<script type="text/javascript" charset="GBK">
			$(document).ready(function() {
				$('#example').dataTable( {
					"sPaginationType": "full_numbers"
				} );
			} );
		</script>
	
	
	2����body��ǩ������������ԣ�id="dt_example" class="example_alt_pagination"
	
	3�����<table>��ǩ�ϼ�������<div>
		<div id="container">			
		<div id="demo">
		
	4����Է�ҳ��table�������������ԣ�class="display" id="example"

	5����һ��ʹ��һ��<thead><tr></th></th></tr></thead>

	6����Ҫ��ҳ�������У���<tbody></tr><td></td></tr></tbody>
	

16����½����˵���Ϣ
��ţ�loginId
Ȩ�ޣ�List����loginState
������loginName
���ű�ţ�loginDeptId
���ţ�loginDept
17�����е�Dao��̳�ConnectionAware(���ݿ����Ӷ���Ϊconn),���е�Action�̳�HttpAware

18���༭��ʹ��ʵ�����£�
	//����
	<script type="text/javascript" src="../../js/jquery-1.3.2.js"></script>
	<script type="text/javascript" src="../../js/jquery.wysiwyg.js"></script>
	<link rel="stylesheet" href="../../css/jquery.wysiwyg.css" type="text/css" />

	//�༭��
	<div>
		<textarea name="remarks" id="remarks" rows="7" cols="100"></textarea>
	</div>
	//���´������</body>ǰ
	<script type="text/javascript">
		(function($) {
			$('#remarks').wysiwyg({
				controls : {
					strikeThrough : {
						visible : true
					},
					underline : {
						visible : true
					},

					separator00 : {
						visible : true
					},

					justifyLeft : {
						visible : true
					},
					justifyCenter : {
						visible : true
					},
					justifyRight : {
						visible : true
					},
					justifyFull : {
						visible : true
					},

					separator01 : {
						visible : true
					},

					indent : {
						visible : true
					},
					outdent : {
						visible : true
					},

					separator02 : {
						visible : true
					},

					subscript : {
						visible : false
					},
					superscript : {
						visible : false
					},

					separator03 : {
						visible : false
					},

					undo : {
						visible : false
					},
					redo : {
						visible : false
					},

					separator04 : {
						visible : false
					},

					insertOrderedList : {
						visible : true
					},
					insertUnorderedList : {
						visible : true
					},
					insertHorizontalRule : {
						visible : true
					},

					h4mozilla : {
						visible : false && $.browser.mozilla,
						className : 'h4',
						command : 'heading',
						arguments : [ 'h4' ],
						tags : [ 'h4' ],
						tooltip : "Header 4"
					},
					h5mozilla : {
						visible : false && $.browser.mozilla,
						className : 'h5',
						command : 'heading',
						arguments : [ 'h5' ],
						tags : [ 'h5' ],
						tooltip : "Header 5"
					},
					h6mozilla : {
						visible : false && $.browser.mozilla,
						className : 'h6',
						command : 'heading',
						arguments : [ 'h6' ],
						tags : [ 'h6' ],
						tooltip : "Header 6"
					},

					h4 : {
						visible : false && !($.browser.mozilla),
						className : 'h4',
						command : 'formatBlock',
						arguments : [ '<H4>' ],
						tags : [ 'h4' ],
						tooltip : "Header 4"
					},
					h5 : {
						visible : false && !($.browser.mozilla),
						className : 'h5',
						command : 'formatBlock',
						arguments : [ '<H5>' ],
						tags : [ 'h5' ],
						tooltip : "Header 5"
					},
					h6 : {
						visible : false && !($.browser.mozilla),
						className : 'h6',
						command : 'formatBlock',
						arguments : [ '<H6>' ],
						tags : [ 'h6' ],
						tooltip : "Header 6"
					},

					separator07 : {
						visible : false
					},

					cut : {
						visible : false
					},
					copy : {
						visible : false
					},
					paste : {
						visible : false
					}
				}
			});
		})(jQuery);
	</script>






