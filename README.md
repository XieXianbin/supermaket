作者：
========
谢先斌、丁世界、赵文波、冯坤、肖梦珂、翟佳佳、张钰灵、李东辉、李艳鹏、严伟涛、张健维


========
========
超市管理系统详细设计说明书
========
一、	销售管理
========
1.1程序描述
销售管理模块：销售员给顾客结账、查询自己的销售业绩和查询退货信息。
1.2功能
1.2.1商品销售
输入：商品的条形码，商品数量
处理：计算顾客所买商品的金额
输出：添加销售记录成功或者失败
1.2.2账单查询
输入：按条件输入要查询的销售信息（销售流水号，时间）
处理：向数据库发送查询语句，返回结果集
输出：零到多条销售记录（采购流水号，商品售价，数量，收银员的员工编号，时间，交易流水号，会员Id，付款方式，备注）
1.2.3退货查询
输入：按条件输入要查询的退货信息
处理：向数据库发送查询语句，返回结果集
输出：零到多条退货记录（流水号，采购流水号，退货金额，员工编号，时间，原因，备注）
1.3逻辑流程图
 

二、超市商品管理
========
三、会员管理
========
3.1程序描述
       本模块主要分为两个相对独立的模块，一个是会员的管理，一个是会员在线购物的处理，在线购物模块相对独立与超市管理，由于会员不是公司内部人员，信息无法收集处理，所以管理员没有修改会员信息的权利，会员信息查看能看到全部的会员信息。会员购物会有积分，通过消费一些积分可以在超市换取一些礼品。
3.2功能
3.2.1会员信息查看
   会默认显示所有会员的基本信息，也可以按条件查找会员的详细信息，但不能修改。
输入：按条件输入你想查找的会员条件
处理：从数据库中调出查询的会员信息，表中会列出一些重要的基本信息，后面有查看详情超链接，点击后会跳转页面，显示出会员的详细信息。
输出：查询会员信息成功.
3.2.2会员信息录入
输入：添加会员信息，内容包括会员姓名，密码，密码提示问题和答案等一些必填的基本信息。
处理：向数据库添加会员信息，除一些重要信息，部分资料可以为空。
输出：添加会员信息成功或失败。
3.2.3会员在线购物
在购物页面会显示仓库里现有的所有商品，并且就可以查看商品的详细信息，当看中某件商品要下订单后，必须登陆付款，点击确认后会发送订单到超市管理系统中，有专门负责人员管理订单并发货。
会员登录后可以查看自己的详细信息并进行修改。会员注册后会默认发放实体卡片，可到超市柜台进行领取。可以在网上注册，也可以到柜台注册。
会员消费后会有积分，花去一定积分可以到超市柜台换取物品奖励。
3.2.4订单管理
会员通过在线购买物品成功后，会把订单发到管理系统中，相关人员会处理订单并进行发货确认。
输入：发货人员登记自己的信息进行发货确认。
处理：修改仓库的信息，并把操作记录录入到出库记录中。
输出：确认发货或成功。
3.3流程逻辑图
 
四、日常管理
4.1程序描述
本模块是日常管理模块，在该模块中，不同部门的管理员有对员工的管理，商品的管理，部门的管理，仓库的管理，货架的管理，值班的管理，考勤的管理，礼品的管理，供应商的管理，商品类别的管理和每日提醒设置等权限。管理员可以对具有权限的模块进行相应的管理。
4.2功能
4.2.1、员工管理
4.2.1.1程序描述
人事部门通过本模块对员工进行管理。包括：查询员工信息（根据员工编号、姓名和部门分类查询），新增员工信息，更新员工信息以及为员工办理离职手续、查看已经离职的员工信息等功能。
4.2.1.2功能
4.2.1.2.1查询员工信息
输入：要查询的员工信息（编号，名字，Id，）
处理：向数据库发送查询语句，返回结果集
输出：员工信息（员工编号，员工姓名，员工年龄，性别，电话，QQ，邮箱，员工学历，员工地址，员工职位，基本工资，所属部门编号，入职时间，离职时间，是否在职，备注）
4.2.1.2.2更新员工信息
输入：要更新的员工信息员工编号，员工姓名，员工年龄，性别，电话，QQ，邮箱，员工学历，员工地址，员工职位，基本工资，所属部门编号，入职时间，离职时间，是否在职，备注）
处理：向数据库发送语句，执行操作
输出：更新成功或者失败
4.2.1.2.3录入员工信息
输入：要插入的员工信息员工编号，员工姓名，员工年龄，性别，电话，QQ，邮箱，员工学历，员工地址，员工职位，基本工资，所属部门编号，入职时间，离职时间，是否在职，备注）
处理：向数据库发送语句，执行操作
输出：录入成功或者失败。
4.2.1.3逻辑流程图
 
4.2.2、商品管理
4.2.2.1程序描述
商品管理模块，是在本次项目中较为重要的一个模块，在该模块中，超级管理员及指定的管理员有商品信息的录入、修改、查询权限。
4.2.2.2功能
4.2.2.2.1商品信息录入
管理员登录后可以录入商品信息，可以用过两种方式录入，手动录入和通过excel表解析录入，这样可以实现小批量大批量的商品信息添加
4.2.2.2.1.1手动录入
输入：输入要添加的商品信息：商品编号，商品名称、商品类型编号、商品规格、售价、生产商、供应商编号、条形码、商品备注。
处理：存储已输入的商品信息：商品编号，商品名称、商品类型编号、商品规格、售价、生产商、供应商编号、条形码、商品备注。
输出：录入商品信息成功或失败
4.2.2.2.1.2通过解析excel表录入
输入：选择本地excel文件
处理：解析excel表，并把excel表的数据存储到数据库的商品表中。
输出：录入商品信息成功或失败
4.2.2.2.2商品信息修改
输入：输入要修改的商品信息：商品编号（只读），商品名称、商品类型编号、商品规格、售价、生产商、供应商编号、条形码、商品备注。
处理：存储已输入的商品信息：商品编号，商品名称、商品类型编号、商品规格、售价、生产商、供应商编号、条形码、商品备注。
输出：修改商品信息成功或失败
4.2.2.2.3商品信息删除
	输入：
处理：删除所选的商品的商品信息：商品编号（只读），商品名称、商品类型编号、商品规格、售价、生产商、供应商编号、条形码、商品备注。
输出：删除商品信息成功或失败
4.2.2.3逻辑流程图

4.2.3、部门管理
4.2.3.1程序描述
通过相关管理员进行部门的现有部门信息的查询修改以及和新部门的添加等管理功能。
4.2.3.2功能
4.2.3.2.1部门信息查询
输入：按条件输入要查询的部门信息（部门ID，部门名称）
处理：从数据库中调出查询的部门信息（部门ID、部门名称、部门经理、部门电话、部门地址、部门人数、备注）
输出：查询部门信息成功获失败。
4.2.3.2.2部门信息录入
输入：添加部门信息，内容包括（部门ID、部门名称、部门经理、部门电话、部门地址、备注）
处理：向数据库添加部门信息（部门ID、部门名称、部门经理、部门电话、部门地址、备注）
输出：添加部门信息成功或失败。 
4.2.3.2.3部门信息修改
输入：输入修改的部门信息（部门ID、部门名称、部门经理、部门电话、部门地址、备注）
处理：修改部门信息（部门ID、部门名称、部门经理、部门电话、部门地址、备注），并存储到数据库。
输出：修改部门信息成功或失败.
4.2.3.3流程逻辑图
 

4.2.4、仓库管理
4.2.4.1程序描述
通过管理员对仓库的新增和废弃使用，以及仓库的负责人的更改等进行管理。
4.2.4.2功能
4.2.4.2.1仓库信息查询
输入：按条件输入要查询的仓库信息（仓库编号，负责人编号）
处理：从数据库中调出查询的仓库信息（仓库编号、仓库地址、仓库面积、仓库类型、负责人编号、备注）
输出：查询仓库的信息成功或失败。

4.2.4.2.2仓库信息录入
输入：录入要添加的仓库信息（仓库编号、仓库地址、仓库面积、仓库类型、负责人编号、备注）
处理：从数据库中添加（仓库编号、仓库地址、仓库面积、仓库类型、负责人编号、备注）
输出：录入仓库信息成功或失败。
4.2.4.2.3仓库信息修改
输入：输入修改的仓库信息（仓库编号、仓库地址、仓库面积、仓库类型、负责人编号、备注）
处理：修改已存储的仓库的信息（仓库编号、仓库地址、仓库面积、仓库类型、负责人编号、备注）添加到数据库。
输出：修改仓库信息成功或失败。

4.2.4.3流程逻辑图
 
4.2.5、货架管理
4.2.5.1程序描述
货架管理主要是对超市内的货架进行统一的管理，其目的是让管理人员能准确的得知超市的货架分布、规格等信息，从而为实现在售商品管理做铺垫。主要实现对超市已有货架的管理，包括对超市内货架实现增、删、改、查等功能。货架信息可从Excel中导入。

4.2.5.2功能
4.2.5.2.1货架录入功能
输入：货架位置和货架类型，其中货架标号由系统自动生成。可从Excel表格中导入数据。
处理：保存到货架表中。若是从Excel中导入的数据，则需解析Excel。 
输出：显示插入的货架信息。
4.2.5.2.2货架更新功能
			输入：货架编号，查询要更新的货架。
处理：将修改后的表单提交给服务器，服务器处理后提交给数据库输出：更新货架信息成功或失败，成功后返回货架信息列表。
4.2.5.2.3、货架查询功能
			输入：货架编号。
处理：表单提交给服务器，服务器处理后提交给数据库，数据库将查询结果返回给服务器，最后客户端页面显示。
4.2.5.3流程逻辑
 
4.2.6、值班管理
4.2.6.1程序描述
值日管理主要是让超市管理人员能对超市现有员工实现排班管理，值班管理要实现对超市人员的值班进行管理主要包括对值班信息的增、删、改、查等功能。本模块中的值日信息可从Excel导入。
4.2.6.2功能
4.2.6.2.1值班信息的录入功能
输入：员工编号、值班时间、开始时间、结束时间，如果有备注信息也可输入。实现从Excel中导入员工值班信息。
处理：获取填写的值班具体信息，添加到数据库中。若是从Excel中导入的值班信息，通过程序则逐个插入到数据库中。
输出：若添加成功，则跳转到值日列表页面；若添加失败，提示失败。
4.2.6.2.2值日更新功能
			输入：首先找到要更新的日期，找输入员工的编号。
处理：将修改后的表单提交给服务器，服务器处理后提交给数据库输出：更新学员缴费信息成功或失败，成功后返回到更新的信息页面。
4.2.6.2.3值日信息删除功能
			输入：首先找到要更新的日期，找输入员工的编号。
处理：表单提交给服务器，服务器处理后提交给数据库，数据库将查询结果返回给服务器，最后客户端页面显示。

4.2.6.3流程逻辑图
 
4.2.7、考勤管理
4.2.7.1程序描述
本模块是班级管理模块，是在本次项目中较为重要的一个模块，在该模块中，超级管理员及指定的管理员有班级信息的录入、修改、查询权限，以及管理班级课表、安排面试、管理毕业信息的功能。教师具有查看班级信息的功能。
4.2.7.2功能
4.2.7.2.1员工考勤信息查询
输入：按条件输入要查询的员工考勤信息（员工ID）
处理：从数据库中调出查询的员工考勤信息（流水号、员工ID、日期、迟到、早退、旷工、加班、备注）
输出：查询员工考勤信息成功。
4.2.7.2.2员工考勤信息录入
输入：添加员工考勤信息，内容包括（流水号、员工ID、日期、迟到、早退、旷工、加班、备注）
处理：通过打卡机到处的excel表，向数据库添加员工考勤信息（流水号、员工ID、日期、迟到、早退、旷工、加班、备注）
输出：添加员工考勤信息成功或失败。 
4.2.7.2.3员工考勤信息统计
输入：输入要统计的天数信息（流水号、员工ID、日期、迟到、早退、旷工、加班、备注）
处理：统计员工信息（流水号、员工ID、日期、迟到、早退、旷工、加班、备注），并存储到数据库。
输出：修改班级信息成功或失败

4.2.7.3流程逻辑图
 
4.2.8、礼品管理
4.2.8.1程序描述
礼品管理模块，可以进行礼品积分对应关系的查询、添加与修改。
4.2.8.2功能
4.2.8.2.1礼品查询
输入：按条件输入要查询的积分对应的礼品（积分）
处理：从数据库里查询出来所有该积分对应的礼品（礼品编号，商品编号，所需积分）
输出：所有该积分对应的礼品
4.2.8.2.2礼品修改
输入：按条件输入要查询的礼品对应的积分（礼品）
处理：从数据库里查询出来该礼品对应的积分（礼品编号，商品编号，所需积分），将修改后的信息存入数据库中
输出：修改后的信息
4.2.8.2.3礼品添加
输入：添加礼品信息，包括（礼品编号，商品编号，所需积分，备注）
处理：向数据库里添加礼品信息（礼品编号，商品编号，所需积分，备注）
输出：所有礼品信息；
4.2.8.3流程逻辑图
 
4.2.9、供应商管理
4.2.9.1程序描述
该模块实现相关管理员对供应商信息查询、维护，以及未来有可能与超市合作的供应商的添加等功能。
4.2.9.2功能
4.2.9.2.1供应商信息查询
输入：按条件输入要查询的供应商信息（供应商编号、供应商名称、负责人）
处理：从数据库中调出查询的供应商信息（供应商编号、供应商名称、简称、公司地址、负责人、联系电话、邮箱地址、邮政编码、传真、开户银行、银行账户、最后修改时间、备注）
输出：查询供应商信息成功或失败。
4.2.9.2.2供应商信息录入
输入：录入要添加的供应商信息（供应商编号、供应商名称、简称、公司地址、负责人、联系电话、邮箱地址、邮政编码、传真、开户银行、银行账户、最后修改时间、备注）
处理：从数据库中添加（供应商编号、供应商名称、简称、公司地址、负责人、联系电话、邮箱地址、邮政编码、传真、开户银行、银行账户、最后修改时间、备注）
输出：录入供应商信息成功或失败。
4.2.9.2.3供应商信息修改
输入：输入修改的供应商信息（供应商编号、供应商名称、负责人）
处理：修改已存储的供应商信息（供应商编号、供应商名称、简称、公司地址、负责人、联系电话、邮箱地址、邮政编码、传真、开户银行、银行账户、最后修改时间、备注）添加到数据库。
输出：修改供应商信息成功或失败。
4.2.9.3流程逻辑图
 
4.2.10、商品类别管理
4.2.10.1程序描述
管理员通过此模块实现对商品类别信息的增删改查操作。
4.2.10.2功能
4.2.10.2.1增加商品类别信息
输入：按条件输入要增加的商品分类信息（商品分类Id，name）
处理：向数据库发送语句，执行操作
输出：更新成功或者失败
4.2.10.2.2删除商品类别信息
输入：按条件输入要删除的商品分类信息（商品分类Id，name）
处理：向数据库发送语句，执行操作
输出：更新成功或者失败

4.2.10.2.3更新商品类别信息
输入：按条件输入要更新的商品分类信息（商品分类Id，name）
处理：向数据库发送语句，执行操作
输出：更新成功或者失败

4.2.10.2.4查询商品类别信息
输入：按条件输入要查询的商品分类信息（商品分类Id，name）
处理：向数据库发送查询语句，返回结果集
输出：商品分类表（商品类别Id，商品类别名字） 


4.2.10.3流程逻辑图
 

4.2.11、每日提醒设置
4.2.11.1程序描述
每日提醒模块用于超市各部门发布公告信息，便于员工实时了解各项通知。
4.2.11.2功能
4.2.11.2.1公告信息录入
输入：添加公告信息，内容包括（编号,标题，发布部门，发布时间，公告内容，备注，公告附件），
处理：向数据库添加公告信息（编号,标题，发布部门，发布时间，公告内容，备注）
输出：添加公告信息成功或失败。

4.2.11.3流程逻辑图
 
五、财务管理
5.1程序描述
财务管理模块，是在本次项目中极为重要的一个模块，在该模块中，超级管理员及指定的管理员有员工工资信息的录入、修改、查询权限，以及查询营业额、录入与修改支出详情的权限。 
5.2功能
5.2.1员工工资管理
5.2.1.1程序描述
对员工工资信息的修改，添加等管理。
5.2.1.2功能
5.2.1.2.1员工实发工资信息录入
输入：输入要添加的员工工资信息：流水号，员工编号，时间，薪水，备注 ，其中薪水由基本工资和考勤记录信息相关
处理：存储已输入的员工工资信息：流水号，员工编号，时间，薪水，备注 
输出：录入员工工资信息成功或失败。
5.2.1.2.1员工实发工资信息修改
输入：输入要修改的员工工资信息：流水号（只读），员工编号，时间，薪水，备注 
处理：存储已输入的员工工资信息：流水号，员工编号，时间，薪水，备注 
输出：修改员工工资信息成功或失败
5.2.1.3流程逻辑图

5.2.2营业额
程序描述
功能
流程逻辑图
5.2.3支出
5.2.2.1程序描述

5.2.2.2功能
5.2.2.2.1支出信息录入
管理员登录后可以录入支出信息
输入：输入要添加的支出信息：流水号，员工编号，时间，金额，支出原因，备注 
处理：存储已输入的支出信息：流水号，员工编号，时间，金额，支出原因，备注
输出：录入支出信息成功或失败

5.2.2.2.2支出信息修改
管理员登录后可以修改支出信息
输入：输入要修改的支出信息：流水号（只读），员工编号，时间，金额，支出原因，备注 
处理：存储已输入的支出信息：流水号，员工编号，时间，金额，支出原因，备注
输出：修改支出信息成功或失败
5.2.2.3流程逻辑图

六、统计报表
6.1程序描述
由相应管理人员对相应模块统计数据进行查看，查看方式可为报表形式和图形形式，不具有修改和删除功能
6.2功能
6.2.1采购进货统计
6.2.1.1功能
输入：选择查看按照当天/本周/本月/本季度/本年度以及往年度、商品分类、供应商的不同显示的进货统计表。
处理：查询数据库数据生成详细报表或柱状图形式表。
输出：返回采购进货报表的详细信息或柱状图信息。
6.2.1.2流程逻辑图
 
6.2.2采购退货统计
6.2.2.1功能
输入：选择查看按照当天/本周/本月/本季度/本年度以及往年度、商品分类、供应商的不同显示的退货统计表。
处理：查询数据库数据生成详细报表或柱状图形式表。
输出：返回采购退货报表的详细信息或柱状图信息。
6.2.2.2流程逻辑图
 
6.2.3销售商品统计
6.2.3.1功能
输入：选择查看按照当天/本周/本月/本季度/本年度以及往年度、商品分类、售货员的不同显示的销售的商品的统计表。
处理：查询数据库数据生成详细报表或柱状图形式表。
输出：返回销售报表的详细信息或柱状图信息。
6.2.3.2逻辑流程图
 
6.2.4销售退货统计
6.2.4.1功能
输入：选择查看按照当天/本周/本月/本季度/本年度以及往年度、商品分类不同显示的销售的商品的退货统计表。
处理：查询数据库数据生成详细报表或柱状图形式表。
输出：返回退货报表的详细信息或柱状图信息。
6.2.4.2逻辑流程图
 
6.2.5业务员销售统计
6.2.5.1功能
输入：选择统计某位销售员的按照当天/本周/本月/本季度/本年度以及往年度销售额的统计报表或柱状图。
	处理：查询数据库数据生成详细报表或柱状图形式表。
输出：返回业务员销售报表的详细信息或柱状图信息。
6.2.5.2逻辑流程图
 
6.2.6商品销售排行统计
6.2.6.1功能
输入：选择查询某种商品按照当天/本周/本月/本季度/本年度以及往年度的商品的销售排行（可查询前几名）。
	处理：查询数据库数据生成详细报表或柱状图形式表。
输出：返回商品销售排行报表的详细信息或柱状图信息。
6.2.6.2逻辑流程图
 
6.2.7营业额统计（日、月、季、年）统计
6.2.7.1功能
输入：选择按照今日/本周/本月/季度/年度以及任意年度的营业额查询。
	处理：查询数据库数据生成详细报表或柱状图形式表。
输出：返回商品对应营业额的详细信息或柱状图信息。
6.2.7.2逻辑流程图
 

七、售后管理
7.1程序描述
售后服务，可以进行礼品兑换、退货以及礼品兑换和退货记录的查看，员工输入会员的Id，查看
7.2功能
7.2.1礼品兑换
输入：列出所有礼品积分的对应关系，输入会员Id，查询会员的积分
处理：从数据库里查询出礼品积分的对应关系（礼品编号，商品编号，所需积分），显示在页面上，输入会员Id，从数据库里查询出该会员的积分，列出所有该会员可以兑换礼品，当点击确认兑换后，会员积分减少相应积分，商品库里该商品减一，并记录在出库信息表里
输出：礼物兑换成功 。
7.2.2顾客退货
输入：输入退货的信息，包括商品编号，退货金额，员工编号，时间，原因；
处理：向数据库里添加该退货信息（商品编号，退货金额，员工编号，时间，原因），并把该商品放入仓库里，记录在出库记录里
输出：退货成功 
7.2.3记录查询
输入：输入查询条件（时间，礼品兑换，退货记录）
处理：先去数据库里查询出所有的记录显示在页面上，再根据你输入的条件去数据库里查询符合该条件的记录列出来，显示在页面上； 
输出：查询的结果
7.3流程逻辑图
 
八、进货管理

九、库存管理
9.1程序描述
仓库管理模块主要包括入库管理、出库管理、库存管理和库存报警四大模块。在该模块中，超级管理员或指定的管理员有商品出入库信息的录入、修改、查询权限，以及查询库存商品的数量和报警商品的信息的功能。
9.2功能
9.2.1入库管理
9.2.1.1入库信息查询
输入：按条件输入要查询的商品入库信息（入库流水号，仓库编号等）
处理：从数据库中调出查询的入库信息（入库流水号，仓库编号，负责人编号，采购流水号，入库数量，入库时间，入库原因，备注）

9.2.1.2入库信息录入
输入：录入要添加的商品入库信息（入库流水号，仓库编号，负责人编号，采购流水号，入库数量，入库时间，入库原因，备注等）
处理：从数据库中添加（入库流水号，仓库编号，负责人编号，采购流水号，入库数量，入库时间，入库原因，备注等）
输出：录入商品入库信息成功或失败
9.2.1.3入库信息修改
输入：输入修改的入库信息（入库流水号，仓库编号，负责人编号，采购流水号，入库数量，入库时间，入库原因，备注等）
处理：修改已存储的商品入库信息（入库流水号，仓库编号，负责人编号，采购流水号，入库数量，入库时间，入库原因，备注等）添加到数据库。
输出：修改入库信息成功或失败
9.2.2出库管理
9.2.2.1出库信息查询
输入：按条件输入要查询的出库信息（出库流水号，采购流水号等）
处理：从数据库中调出查询的出库信息（出库流水号，仓库编号，负责人编号，采购流水号，出库数量，出库时间，出库去向，原因等）
输出：查询出库信息成功
9.2.2.2出库信息录入
输入：录入要添加的商品出库信息（出库流水号，仓库编号，负责人编号，采购流水号，出库数量，出库时间，出库去向，原因等）
处理：从数据库中添加（出库流水号，仓库编号，负责人编号，采购流水号，出库数量，出库时间，出库去向，原因等）
输出：录入商品出库信息成功或失败
9.2.2.3入库信息修改
输入：输入修改的出库信息（出库流水号，仓库编号，负责人编号，采购流水号，出库数量，出库时间，出库去向，原因等）
处理：修改已存储的商品出库信息（出库流水号，仓库编号，负责人编号，采购流水号，出库数量，出库时间，出库去向，原因等）添加到数据库。
输出：修改出库信息成功或失败
9.2.3库存管理
9.2.3.1库存信息查询
输入：按条件输入要查询的库存信息（存库流水号，仓库编号，采购流水号等）
处理：从数据库中调出查询的库存信息（存库流水号，仓库编号，采购流水号，剩余数量，备注等）
输出：查询库存信息成功
9.2.4.库存报警
9.2.4.1报警信息查询
输入：按条件输入要查询的报警商品信息（）
处理：从数据库中调出查询的报警商品信息（）
输出：查询报警信息成功
9.3逻辑流程图
 
十、每日提醒
10.1程序描述
每日提醒模块，该模块由过期货物提醒，查看公告，考勤查询等三部分组成，过期货物提醒包括过期库存货物和在架过期货物提醒。
10.2功能
10.2.1过期货物提醒
输入：商品编号
处理：采购表，库存表，和在售商品表等多表联合，在页面显示即将过期的商品信息，查询指定商品是否过期
输出：查询过期商品成功或失败。
10.2.2查看公告
输入：公告发布时间或发布部门
处理：查询数据库中公告表，显示指定的公告
输出：查询公告成功或失败。
10.2.3考勤查询
输入：员工编号
处理：查询数据库中考勤表，显示指定员工的考勤记录
输出：查询考勤记录成功或失败。

10.3程序流程图
 
十一、系统设置
11.1程序描述
本模块是系统设置模块，该模块由修改密码，权限设置等两部分组成。
11.2功能
11.2.1修改密码
用户输入新密码，判断密码强度，再次输入新密码进行确认，判断两次输入的密码是否相同，当两次输入的密码相同时，密码修改成功；否则，密码修改失败
权限设置
通过查询数据库中的公告表在页面显示公告信息，用户也可以根据指定条件，比如发布部门，发布时间等查询符合条件的公告，也可以下载发布该公告时添加的附件。 
11.2.2权限设置
只有超级管理员才拥有此功能，通过查询数据库中的用户表，在页面显示用户信息，超级管理员可以对已有用户，进行删除，更新，和修改用户所拥有的权限，也可以添加新的用户。 
11.3逻辑流程图
 
