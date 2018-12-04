select 
 cast(h.STARTDATE as date) as OpsDate
 ,r.EmployeeNumber
 ,r.EmployeeName
 ,r.DepartmentID
 ,r.EmployeeStatus
 ,r.HireDate
 ,r.TermDate
 ,h.Hrs as PaidHours
 ,h.STARTDATE as StartDT
 ,h.ENDDATE as EndDT
 
 
from HumanResources.dbo.eTimeHours h left join HumanResources.dbo.EmployeeRoster r on r.EmployeeNumber=h.ID
where 
h.APPLYDATE >='20180101' --
and r.DepartmentID='000560' 
and LEFT(h.ID,1)='4' 
