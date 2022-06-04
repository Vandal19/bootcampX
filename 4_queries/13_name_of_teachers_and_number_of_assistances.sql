SELECT teachers.name as teacher, cohorts.name as cohort, COUNT(teacher_id) as total_assistances
FROM  teachers
JOIN assistance_requests ON teachers.id = teacher_id
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = 'JUL02'
GROUP by teacher, cohort
ORDER BY teachers.name;