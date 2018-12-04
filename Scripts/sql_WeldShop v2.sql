

select
w.OpsDate
,w.OpSeq
,w.WorkCenter
,wc.WorkCenterDesc
,d.DepartmentCode
,w.Item
,w.PartNumber
,w.CrewSize
,w.WO_Hrs
,w.ACT_Hrs
,w.Standard_Hrs
,w.SRP1
,w.SRP4
,w.PRP4
,w.WorkCenterType
from WorkOrderHoursDaily w left join ReportingDimensions.dbo.ReportingWorkCenters wc on wc.WorkCenterNum=w.WorkCenter
								left join ReportingDimensions.dbo.ReportingDepts d on d.DepartmentID=wc.DepartmentID

where d.DepartmentCode = '000560'
and w.CrewSize is null