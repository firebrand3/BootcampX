-- SELECT count(*) FROM assignment_submissions;
-- SELECT students.name as student, count(assignment_submissions.*) as total_submissions
-- FROM assignment_submissions
-- JOIN students ON students.id = student_id
-- WHERE students.end_date IS NULL
-- GROUP BY students.name
-- HAVING count(assignment_submissions.*) < 100;


-- CREATE TABLE teachers (
-- id SERIAL PRIMARY KEY NOT NULL,
-- name VARCHAR (225) NOT NULL,
-- start_date DATE,
-- end_date DATE,
-- is_active BOOLEAN DEFAULT TRUE
-- );

-- CREATE TABLE assistance_requests (
-- id SERIAL PRIMARY KEY NOT NULL,
-- assignment_id INTEGER REFERENCES assignments(id) ON DELETE CASCADE,
-- student_id INTEGER REFERENCES students(id) ON DELETE CASCADE,
-- teacher_id INTEGER REFERENCES teachers(id) ON DELETE CASCADE,
-- created_at TIMESTAMP,
-- started_at TIMESTAMP,
-- completed_at TIMESTAMP,
-- student_feedback TEXT,
-- teacher_feedback TEXT
-- );

SELECT students.id, students.name, cohorts.name
FROM students 
JOIN cohorts ON students.cohort_id = cohorts.id
LIMIT 5;