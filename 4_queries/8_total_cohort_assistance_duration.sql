SELECT cohorts.name as cohort, SUM(assistance_requests.completed_at - assistance_requests.started_at) AS total_duration
FROM students
JOIN assistance_requests ON assistance_requests.student_id = students.id
JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
ORDER BY total_duration;