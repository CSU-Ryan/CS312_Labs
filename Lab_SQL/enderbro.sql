-- STUDENTS TABLE
CREATE TABLE enderbro_students (
    name VARCHAR(255),
    id INT,
    gpa DOUBLE
);

SHOW CREATE TABLE enderbro_students;

BEGIN
    DECLARE @i INT Default 1 ;
    WHILE @i <= 26
        INSERT INTO enderbro_students VALUES (
            ASCII(@i + 64, @i + 96, @i + 96),
            @i + 800000000,
            ROUND(RAND() * 2 + 2, 2);
        );
        SET @i = @i + 1;
    END WHILE;
END;

SELECT * FROM enderbro_students
ORDER BY id;


-- CLASSES TABLE
CREATE TABLE enderbro_classes (
    department_code VARCHAR(5),
    course_number INT,
    credits INT
)

INSERT INTO enderbro_classes VALUES
    ('CS', 164, 4),
    ('CS', 220, 4),
    ('CS', 250, 4),
    ('CS', 320, 3),
    ('CS', 214, 3),
    ('CS', 345, 3),
    ('CS', 370, 3),
    ('CT', 310, 3);

SHOW CREATE TABLE enderbro_classes;

SELECT * FROM enderbro_classes;

UPDATE enderbro_classes
SET
    department_code = 'CS',
    course_number = 312
WHERE department_code = 'CT' AND course_number = 310;

SELECT * FROM enderbro_classes;


-- ENROLLMENT TABLE
CREATE TABLE enderbro_enrollments (
    student_id INT,
    course_number INT,
    semester ENUM('FA23', 'SP24', 'SU24', 'FA24', 'SP25', 'SU25', 'FA25', 'SP26') NOT NULL,
    FOREIGN KEY (student_id) REFERENCES enderbro_students(id),
    FOREIGN KEY (course_number) REFERENCES enderbro_classes(course_number)
);

BEGIN
    DECLARE @i INT DEFAULT 1;
    WHILE @i <= 26
        INSERT INTO enderbro_enrollments VALUES
            (@i + 800000000, 164, 'FA23'),
            (@i + 800000000, 214, 'SP24'),
            (@i + 800000000, 250, 'SP25'),
            (@i + 800000000, 312, 'SP26'),
        SET @i = @i + 1;
    END WHILE;
END;

SELECT COUNT(*) FROM enderbro_enrollments;

-- JOINING TABLES
SELECT *
FROM enderbro_enrollments roll JOIN enderbro_students stud
ON roll.student_id = stud.id
WHERE roll.course_number = 312;

SELECT class.department_code, class.course_number, class.credits
FROM enderbro_classes class JOIN enderbro_enrollments roll
ON class.course_number = roll.course_number
GROUP BY roll.course_number
HAVING COUNT(roll.student_id) > 0;