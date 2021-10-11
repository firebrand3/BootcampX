const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

// pool.query(`
// SELECT id, name, cohort_id
// FROM students
// LIMIT 5;
// `)
// .then(res => {
//   console.log(res.rows);
// })
// .catch(err => console.error('query error', err.stack));


pool.query(`
SELECT students.id AS student_id, students.name AS name, cohorts.name AS cohort
FROM students 
JOIN cohorts ON students.cohort_id = cohorts.id
WHERE cohorts.name LIKE '%${process.argv[2]}%'
LIMIT LIMIT ${process.argv[3] || 5};
`)
.then(res => {
  res.rows.forEach(student => {
    console.log(`${student.name} has an id of ${student.student_id} and was in the ${student.cohort} cohort`);
  })
})
.catch(err => console.error('query error', err.stack));