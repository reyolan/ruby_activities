-- Display count of all students
SELECT
    COUNT(id) AS number_of_students
FROM
    students;

-- Select all students with location is Manila

SELECT
    *
FROM
    students
WHERE
    location = 'Manila';


-- Display average age of all students
SELECT
    AVG(age) as average_age
FROM
    students;

-- Display all students by age in descending order
SELECT
*
FROM students ORDER BY age DESC;
