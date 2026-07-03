PRAGMA foreign_keys = ON;

-- Delete students first because students depends on courses.
DELETE FROM students;
DELETE FROM courses;

INSERT INTO courses (course_id, course_name, credits)
VALUES
    (1, 'Java', 5),
    (2, 'Database', 4),
    (3, 'Web Development', 6);

INSERT INTO students (id, name, email, age, course_id)
VALUES
    (1, 'Alice', 'alice@example.com', 20, 1),
    (2, 'Bob', 'bob@example.com', 22, 2),
    (3, 'Charlie', 'charlie@example.com', 19, 3),
    (4, 'David', 'david@example.com', 21, 1),
    (5, 'Eva', 'eva@example.com', 23, 2);