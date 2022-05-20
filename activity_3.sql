CREATE TABLE notes (
    id integer PRIMARY KEY,
    body TEXT,
    student_id integer references students(id)
);
INSERT INTO
    notes (
        id,
        body,
        student_id
    )
VALUES
    (1, 'Cartesian Product', 1),
    (
        2,
        'Vector Calculus is deadly, triple integral is the end of the world.',
        2
    ),
    (
        3,
        'Calculus is easy if you are good enough to understand Algebra and Trigonometry.',
        1
    ),
    (
        4,
        'Differential Equations is hard if you do not understand your Basic Calculus',
        3
    ),
    (
        6,
        'One of the approximate methods in getting the root of a function is the Newton-Raphson Method',
        4
    ),
    (8, 'Structural Patterns: Facade', 2),
    (9, 'Behavioral Pattern: Observer', 1),
    (10, 'Noted', 3);
    
INSERT INTO
    notes (id, body)
VALUES
    (
        5,
        'If you do not understand Differential Equations, it will be hard to learn Laplace Transform'
    ),
    (7, 'Design Patterns: Singleton, Builder');
    
--gets the students that have notes
SELECT
    students.first_name, students.middle_name, students.last_name, notes.body
FROM
    students
    INNER JOIN notes ON students.id = notes.student_id;


--gets the students that have notes and did not take any notes.
SELECT
     students.first_name, students.middle_name, students.last_name, notes.body
FROM
    students
    LEFT JOIN notes ON students.id = notes.student_id;
    
--gets the owner of the notes, including anonymous notes.
SELECT
     students.first_name, students.middle_name, students.last_name, notes.body
FROM
    students
    RIGHT JOIN notes ON students.id = notes.student_id;

--see the owner of the notes AND see the notes made by each students.
SELECT
    students.first_name,
    students.middle_name,
    students.last_name,
    notes.body
FROM
    students FULL
    JOIN notes ON students.id = notes.student_id;
