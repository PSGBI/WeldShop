


select wc.*
,wo.OpsDate
,wo.OrderNumber
,wo.WorkCenterType
,wo.PartNumber
,wo.OpSeq
,wo.WO_Hrs
,wo.ACT_Hrs
,wo.Standard_Hrs
,wo.SetUp
,wo.CrewSize
from Finance.dbo.WorkOrderHours wo
		left join ReportingDimensions.dbo.ReportingWorkCenters wc 
			right join ReportingDimensions.dbo.ReportingDepts wd on wd.DepartmentID=wc.DepartmentID
			on wc.WorkCenterNum=wo.WorkCenter
where wd.DepartmentCode = '000560'