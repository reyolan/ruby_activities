CREATE TABLE students (
    id integer PRIMARY KEY,
    first_name TEXT NOT NULL,
    middle_name TEXT default '',
    last_name TEXT NOT NULL,
    age integer NOT NULL CHECK (age > 0),
    location TEXT
);
INSERT INTO
    students (
        id,
        first_name,
        middle_name,
        last_name,
        age,
        location
    )
VALUES
    (1, 'Vaughn', 'Tumacder', 'Santos', 22, 'Manila'),
    (2, 'Aeron', 'Gonzales', 'Wong', 23, 'Marikina'),
    (
        3,
        'Joy',
        'Laconsay',
        'Sumalangcay',
        22,
        'Marikina'
    ),
    (
        4,
        'Dominique',
        'Ermitanio',
        'Barrientos',
        22,
        'Laguna'
    );
INSERT INTO
    students(id, first_name, last_name, age, location)
VALUES
    (5, 'Eunice', 'Mazo', 22, 'Manila'),
    (6, 'Viany', 'Manuel', 22, 'Pasig');
UPDATE
    students
SET
    first_name = 'Ivan',
    middle_name = 'Ingram',
    last_name = 'Howard',
    age = 25,
    location = 'Bulacan'
WHERE
    id = 1;
DELETE FROM
    students
WHERE
    id = (
        SELECT
            MAX(id)
        FROM
            students
    );