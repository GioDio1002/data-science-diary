select 
    d.Name as Department, e.Name as Employee,
    e.Salary
from 
    Employee e 
        join
    Department d on e.DepartmentId = d.Id
where
    (select 
        count(distinct e1.salary)
    from Employee e1
    where
        e1.Salary > e.Salary
            and e1.DepartmentId = e.DepartmentId) < 3
