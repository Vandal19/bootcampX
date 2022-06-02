SELECT name, id
FROM students
WHERE students.email ISNULL OR students.phone ISNULL