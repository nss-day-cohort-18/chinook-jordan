SELECT Employee.FirstName, Employee.LastName, Employee.Title
FROM Employee
WHERE Employee.Title LIKE '%sales%agent%'