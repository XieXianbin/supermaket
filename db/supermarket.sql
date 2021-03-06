SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[gift_tab]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[gift_tab](
	[giftlId] [int] IDENTITY(1,1) NOT NULL,
	[productId] [int] NOT NULL,
	[score] [int] NOT NULL,
	[remarks] [text] NULL CONSTRAINT [DF_gift_tab_remarks]  DEFAULT ('无'),
 CONSTRAINT [PK_gift_tab] PRIMARY KEY CLUSTERED 
(
	[giftlId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[giftRecord_tab]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[giftRecord_tab](
	[giftId] [int] IDENTITY(1,1) NOT NULL,
	[purchId] [int] NOT NULL,
	[giftCount] [int] NOT NULL,
	[employeeId] [int] NOT NULL,
	[gifttime] [varchar](30) NOT NULL,
	[vipId] [int] NOT NULL,
	[remarks] [text] NULL CONSTRAINT [DF_giftRecord_tab_remarks]  DEFAULT ('无'),
 CONSTRAINT [PK_giftRecord_tab] PRIMARY KEY CLUSTERED 
(
	[giftId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[notice_tab]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[notice_tab](
	[noticeId] [int] IDENTITY(1,1) NOT NULL,
	[noticeTitle] [nvarchar](100) NOT NULL,
	[deptId] [int] NOT NULL,
	[noticeTime] [varchar](50) NOT NULL,
	[noticeContent] [text] NOT NULL,
	[lookCount] [int] NOT NULL,
	[remarks] [text] NOT NULL CONSTRAINT [DF_notice_tab_remarks]  DEFAULT ('无'),
 CONSTRAINT [PK_notice_tab] PRIMARY KEY CLUSTERED 
(
	[noticeId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[inexpense_tab]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[inexpense_tab](
	[inExpenId] [int] IDENTITY(1,1) NOT NULL,
	[employeeId] [int] NOT NULL,
	[inReason] [varchar](50) NULL,
	[money] [float] NULL,
	[inDate] [varchar](30) NULL,
	[remarks] [text] NULL CONSTRAINT [DF_inexpense_tab_remarks]  DEFAULT ('无'),
 CONSTRAINT [PK_inexpense_tab] PRIMARY KEY CLUSTERED 
(
	[inExpenId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[inStorage_tab]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[inStorage_tab](
	[instorageId] [int] IDENTITY(1,1) NOT NULL,
	[storageId] [int] NOT NULL,
	[purchId] [int] NOT NULL,
	[employeeId] [int] NOT NULL,
	[inNum] [int] NOT NULL,
	[inTime] [varchar](30) NULL,
	[inReason] [varchar](50) NULL,
	[remarks] [text] NULL CONSTRAINT [DF_inStorage_tab_remarks]  DEFAULT ('无'),
 CONSTRAINT [PK_inStorage_tab] PRIMARY KEY CLUSTERED 
(
	[instorageId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[lose_tab]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[lose_tab](
	[loseId] [int] IDENTITY(1,1) NOT NULL,
	[purchId] [int] NOT NULL,
	[employeeId] [int] NOT NULL,
	[count] [int] NOT NULL,
	[productNorms] [varchar](50) NULL,
	[time] [varchar](30) NULL,
	[remarks] [text] NULL CONSTRAINT [DF_lose_tab_remarks]  DEFAULT ('无'),
 CONSTRAINT [PK_lose_tab] PRIMARY KEY CLUSTERED 
(
	[loseId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[onsell_tab]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[onsell_tab](
	[serialId] [int] IDENTITY(1,1) NOT NULL,
	[purchId] [int] NOT NULL,
	[shelfId] [int] NOT NULL,
	[count] [int] NOT NULL,
	[remarks] [text] NULL CONSTRAINT [DF_onsell_tab_remarks]  DEFAULT ('无'),
 CONSTRAINT [PK_onsell_tab] PRIMARY KEY CLUSTERED 
(
	[serialId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[order_tab]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[order_tab](
	[orderId] [int] IDENTITY(1,1) NOT NULL,
	[vipId] [int] NOT NULL,
	[purchId] [int] NOT NULL,
	[productPrice] [float] NOT NULL,
	[count] [int] NOT NULL,
	[orderTime] [varchar](30) NOT NULL,
	[orderState] [varchar](50) NULL,
	[remarks] [text] NULL CONSTRAINT [DF_order_tab_remarks]  DEFAULT ('无'),
 CONSTRAINT [PK_order_tab] PRIMARY KEY CLUSTERED 
(
	[orderId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[outExpense_tab]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[outExpense_tab](
	[outExpenId] [int] IDENTITY(1,1) NOT NULL,
	[employeeId] [int] NOT NULL,
	[outReason] [varchar](50) NULL,
	[money] [float] NOT NULL,
	[outDate] [varchar](30) NOT NULL,
	[remarks] [text] NULL CONSTRAINT [DF_outExpense_tab_remarks]  DEFAULT ('无'),
 CONSTRAINT [PK_outExpense_tab] PRIMARY KEY CLUSTERED 
(
	[outExpenId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[outStorage_tab]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[outStorage_tab](
	[outstorageId] [int] IDENTITY(1,1) NOT NULL,
	[storageId] [int] NOT NULL,
	[purchId] [int] NOT NULL,
	[employeeId] [int] NOT NULL,
	[outNum] [int] NOT NULL,
	[outTime] [varchar](30) NULL,
	[outDirection] [varchar](100) NULL,
	[reason] [text] NULL CONSTRAINT [DF_outStorage_tab_reason]  DEFAULT ('无'),
 CONSTRAINT [PK_outStorage_tab] PRIMARY KEY CLUSTERED 
(
	[outstorageId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[product_tab]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[product_tab](
	[productId] [int] IDENTITY(10000001,1) NOT NULL,
	[productName] [varchar](50) NOT NULL,
	[productTypeId] [int] NOT NULL,
	[productNorms] [varchar](50) NULL,
	[productPrice] [float] NULL,
	[producer] [varchar](50) NULL,
	[supplierId] [int] NOT NULL,
	[barCode] [varchar](30) NULL,
	[remarks] [varchar](30) NULL,
 CONSTRAINT [PK_product_tab] PRIMARY KEY CLUSTERED 
(
	[productId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[productType_tab]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[productType_tab](
	[productTypeId] [int] IDENTITY(1001,1) NOT NULL,
	[productTypeName] [varchar](50) NOT NULL,
	[remarks] [text] NULL CONSTRAINT [DF_productType_tab_remarks]  DEFAULT ('无'),
 CONSTRAINT [PK_productType_tab] PRIMARY KEY CLUSTERED 
(
	[productTypeId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[purch_tab]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[purch_tab](
	[purchId] [int] IDENTITY(100001,1) NOT NULL,
	[productId] [int] NOT NULL,
	[inPrice] [float] NOT NULL,
	[purchCount] [int] NOT NULL,
	[purchTime] [varchar](30) NULL,
	[productTime] [varchar](30) NULL,
	[expireTime] [varchar](30) NULL,
	[employeeId] [int] NULL,
	[companyId] [int] NULL,
	[remarks] [text] NULL CONSTRAINT [DF_purch_tab_remarks]  DEFAULT ('无'),
 CONSTRAINT [PK_purch_tab] PRIMARY KEY CLUSTERED 
(
	[purchId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[return_tab]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[return_tab](
	[returnId] [int] IDENTITY(10001,1) NOT NULL,
	[purchId] [int] NOT NULL,
	[returnPrice] [float] NULL,
	[returnCount] [int] NULL,
	[returnTime] [varchar](30) NULL,
	[employeeId] [int] NOT NULL,
	[companyId] [int] NOT NULL,
	[remarks] [text] NULL CONSTRAINT [DF_return_tab_remarks]  DEFAULT ('无'),
 CONSTRAINT [PK_return_tab] PRIMARY KEY CLUSTERED 
(
	[returnId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dept_tab]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[dept_tab](
	[deptId] [int] IDENTITY(1001,1) NOT NULL,
	[deptName] [varchar](20) NOT NULL,
	[employeeId] [int] NOT NULL,
	[deptTel] [varchar](20) NULL,
	[deptAddress] [varchar](200) NULL,
	[remarks] [text] NULL,
 CONSTRAINT [PK_dept_tab] PRIMARY KEY CLUSTERED 
(
	[deptId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[vip_tab]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[vip_tab](
	[vipId] [int] IDENTITY(88800001,1) NOT NULL,
	[vipName] [varchar](20) NOT NULL,
	[vipPass] [varchar](50) NOT NULL,
	[vipSex] [varchar](10) NULL,
	[vipBirthday] [varchar](30) NULL,
	[vipIdNum] [varchar](18) NULL,
	[vipPicture] [image] NULL,
	[vipTel] [varchar](20) NULL,
	[vipAddress] [varchar](100) NULL,
	[vipEmail] [varchar](50) NULL,
	[vipQQ] [varchar](20) NULL,
	[vipMoney] [int] NULL,
	[vipScore] [int] NULL,
	[vipQuestion] [varchar](50) NOT NULL,
	[vipAnswer] [varchar](100) NOT NULL,
	[vipTime] [varchar](30) NOT NULL,
	[vipRemarks] [text] NULL CONSTRAINT [DF_vip_tab_vipRemarks]  DEFAULT ('无'),
 CONSTRAINT [PK_vip_tab] PRIMARY KEY CLUSTERED 
(
	[vipId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[supplier_tab]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[supplier_tab](
	[companyId] [int] IDENTITY(10001,1) NOT NULL,
	[companyName] [varchar](100) NULL,
	[companyShort] [varchar](50) NULL,
	[companyAddress] [varchar](200) NULL,
	[manager] [varchar](50) NULL,
	[companyTel] [varchar](20) NULL,
	[email] [varchar](50) NULL,
	[postalCode] [varchar](20) NULL,
	[fax] [varchar](20) NULL,
	[bankName] [varchar](100) NULL,
	[bankAccounts] [varchar](50) NULL,
	[addTime] [varchar](30) NULL,
	[remarks] [text] NULL CONSTRAINT [DF_supplier_tab_remarks]  DEFAULT ('无'),
 CONSTRAINT [PK_supplier_tab] PRIMARY KEY CLUSTERED 
(
	[companyId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user_tab]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[user_tab](
	[employeeId] [int] NOT NULL,
	[userPass] [varchar](20) NOT NULL,
	[userState] [varchar](100) NOT NULL,
 CONSTRAINT [PK_user_tab] PRIMARY KEY CLUSTERED 
(
	[employeeId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[store_tab]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[store_tab](
	[storeId] [int] IDENTITY(1,1) NOT NULL,
	[storageId] [int] NOT NULL,
	[purchId] [int] NOT NULL,
	[remainNum] [int] NULL,
	[remarks] [text] NULL CONSTRAINT [DF_store_tab_remarks]  DEFAULT ('无'),
 CONSTRAINT [PK_store_tab] PRIMARY KEY CLUSTERED 
(
	[storeId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[recordcheck_tab]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[recordcheck_tab](
	[salaryId] [int] IDENTITY(1,1) NOT NULL,
	[employeeId] [int] NOT NULL,
	[date] [datetime] NOT NULL,
	[late] [int] NULL,
	[early] [int] NULL,
	[overtime] [int] NULL,
	[absenteeism] [int] NULL,
	[remarks] [text] NULL CONSTRAINT [DF_recordcheck_tab_remarks]  DEFAULT ('无'),
 CONSTRAINT [PK_recordcheck_tab] PRIMARY KEY CLUSTERED 
(
	[salaryId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[storage_tab]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[storage_tab](
	[storageId] [int] IDENTITY(101,1) NOT NULL,
	[storageAddress] [varchar](50) NOT NULL,
	[storageArea] [float] NULL,
	[storageType] [varchar](50) NULL,
	[employeeId] [int] NOT NULL,
	[remarks] [text] NULL CONSTRAINT [DF_storage_tab_remarks]  DEFAULT ('无'),
 CONSTRAINT [PK_storage_tab] PRIMARY KEY CLUSTERED 
(
	[storageId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[shelf_tab]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[shelf_tab](
	[shelfId] [int] IDENTITY(10001,1) NOT NULL,
	[shelfLocation] [varchar](50) NULL,
	[shelfType] [varchar](50) NULL,
	[remarks] [text] NULL CONSTRAINT [DF_shelf_tab_remarks]  DEFAULT ('无'),
 CONSTRAINT [PK_shelf_tab] PRIMARY KEY CLUSTERED 
(
	[shelfId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sales_tab]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[sales_tab](
	[salesId] [int] IDENTITY(1,1) NOT NULL,
	[purchId] [int] NOT NULL,
	[productPrice] [float] NULL,
	[count] [int] NOT NULL,
	[employeeId] [int] NULL,
	[salesTime] [varchar](30) NULL,
	[salesWaterNo] [varchar](50) NULL,
	[vipId] [int] NOT NULL,
	[payType] [varchar](50) NULL,
	[remarks] [text] NULL CONSTRAINT [DF_sales_tab_remarks]  DEFAULT ('无'),
 CONSTRAINT [PK_sales_tab] PRIMARY KEY CLUSTERED 
(
	[salesId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[salary_tab]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[salary_tab](
	[salaryId] [int] IDENTITY(1,1) NOT NULL,
	[employeeId] [int] NOT NULL,
	[salaryTime] [varchar](30) NOT NULL,
	[salary] [float] NOT NULL,
	[remarks] [text] NULL CONSTRAINT [DF_salary_tab_remarks]  DEFAULT ('无'),
 CONSTRAINT [PK_salary_tab] PRIMARY KEY CLUSTERED 
(
	[salaryId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[check_tab]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[check_tab](
	[salaryId] [int] IDENTITY(1,1) NOT NULL,
	[employeeId] [int] NOT NULL,
	[deptId] [int] NOT NULL,
	[weeks] [varchar](50) NULL,
	[dateTime] [varchar](30) NULL,
	[time1] [varchar](30) NULL,
	[time2] [varchar](30) NULL,
	[remarks] [text] NULL CONSTRAINT [DF_check_tab_remarks]  DEFAULT ('无'),
 CONSTRAINT [PK_check_tab] PRIMARY KEY CLUSTERED 
(
	[salaryId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[employee_tab]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[employee_tab](
	[employeeId] [int] IDENTITY(20130001,1) NOT NULL,
	[employeeName] [varchar](20) NOT NULL,
	[employeeBirthday] [varchar](30) NOT NULL,
	[employeeSex] [varchar](10) NOT NULL,
	[employeeTel] [varchar](20) NULL,
	[employeeIdNum] [varchar](18) NULL,
	[empPoliState] [varchar](100) NULL,
	[employeePicture] [image] NULL,
	[employeeQq] [varchar](20) NULL,
	[employeeEmail] [varchar](50) NULL,
	[employeeSchool] [varchar](50) NULL,
	[employeeAddress] [varchar](100) NULL,
	[employeePosition] [varchar](20) NULL,
	[basicWage] [float] NULL,
	[deptId] [int] NOT NULL,
	[entryTime] [varchar](30) NOT NULL,
	[leaveTime] [varchar](30) NULL,
	[employeeState] [varchar](10) NULL CONSTRAINT [DF_employee_tab_employeeState]  DEFAULT ('在职'),
	[remarks] [text] NULL CONSTRAINT [DF_employee_tab_remarks]  DEFAULT ('无'),
 CONSTRAINT [PK_employee_tab] PRIMARY KEY CLUSTERED 
(
	[employeeId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[afterSale_tab]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[afterSale_tab](
	[afterSaleId] [int] IDENTITY(1,1) NOT NULL,
	[purchId] [int] NOT NULL,
	[money] [float] NOT NULL,
	[employeeId] [int] NULL,
	[date] [varchar](30) NULL,
	[reason] [text] NULL,
	[remarks] [text] NULL CONSTRAINT [DF_afterSale_tab_remarks]  DEFAULT ('无'),
 CONSTRAINT [PK_afterSale_tab] PRIMARY KEY CLUSTERED 
(
	[afterSaleId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[alerm_tab]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[alerm_tab](
	[alarmId] [int] IDENTITY(1,1) NOT NULL,
	[purchId] [int] NOT NULL,
	[storageCountLimit] [int] NULL,
	[marketCountLimit] [int] NULL,
	[dayLimit] [int] NULL,
	[remarks] [text] NULL CONSTRAINT [DF_alerm_tab_remarks]  DEFAULT ('无'),
 CONSTRAINT [PK_alerm_tab] PRIMARY KEY CLUSTERED 
(
	[alarmId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[downgoods_tab]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[downgoods_tab](
	[serialId] [int] IDENTITY(100001,1) NOT NULL,
	[purchId] [int] NOT NULL,
	[employId] [int] NOT NULL,
	[downCount] [int] NOT NULL,
	[downTime] [int] NOT NULL,
	[remarks] [text] NULL CONSTRAINT [DF_downgoods_tab_remarks]  DEFAULT ('无'),
 CONSTRAINT [PK_downgoods_tab] PRIMARY KEY CLUSTERED 
(
	[serialId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[duty_tab]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[duty_tab](
	[dutyId] [int] IDENTITY(1,1) NOT NULL,
	[employeeId] [int] NOT NULL,
	[date] [varchar](30) NULL,
	[beginTime] [varchar](30) NOT NULL,
	[endTime] [varchar](30) NULL,
	[remarks] [text] NULL CONSTRAINT [DF_duty_tab_remarks]  DEFAULT ('无'),
 CONSTRAINT [PK_duty_tab] PRIMARY KEY CLUSTERED 
(
	[dutyId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[upgoods_tab]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[upgoods_tab](
	[serialId] [int] IDENTITY(100001,1) NOT NULL,
	[purchId] [int] NOT NULL,
	[employId] [int] NOT NULL,
	[upCount] [int] NOT NULL,
	[upTime] [varchar](30) NULL,
	[remarks] [text] NULL CONSTRAINT [DF_upgoods_tab_remarks]  DEFAULT ('无'),
 CONSTRAINT [PK_upgoods_tab] PRIMARY KEY CLUSTERED 
(
	[serialId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
