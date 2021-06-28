select d.Name as Department, e.Name as Employee,e.Salary 
from Employee e
join Department d on d.Id = e.DepartmentId
where
    (e.DepartmentId, Salary) in 
    (
        select
            departmentId, MAX(Salary)
        from
            Employee
        Group by DepartmentId
    )
