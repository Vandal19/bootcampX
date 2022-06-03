SELECT students.name as student_name, cohorts.name as cohort_name, cohorts.start_date as cohorts_start_date, students.start_date as students_start_date
FROM students FULL OUTER JOIN cohorts ON students.cohort_id = cohorts.id
WHERE cohorts.start_date != students.start_date
ORDER BY cohorts.start_date;