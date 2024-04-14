-- General Instructions
-- 1.	The .sql files are run automatically, so please ensure that there are no syntax errors in the file. If we are unable to run your file, you get an automatic reduction to 0 marks.
-- Comment in MYSQL 
-- 
-- SOLUTIONS
-- 
-- 1
SELECT st.first_name, st.last_name, c.course_name
FROM students st
JOIN enrollments en ON st.student_id = en.student_id
JOIN courses c ON en.course_id = c.course_id;
-- 2
SELECT c.course_name, en.grade
FROM enrollments en
JOIN courses c ON en.course_id = c.course_id;
-- 3
SELECT st.first_name, st.last_name, c.course_name, inst.first_name AS instructor_first_name, inst.last_name AS instructor_last_name
FROM students st
JOIN enrollments en ON st.student_id = en.student_id
JOIN courses c ON en.course_id = c.course_id
JOIN instructors inst ON c.instructor_id = inst.instructor_id;
-- 4
SELECT st.first_name, st.last_name, st.age, st.city
FROM students st
JOIN enrollments en ON st.student_id = en.student_id
JOIN courses c ON en.course_id = c.course_id
WHERE c.course_name = 'Mathematics';
-- 5
SELECT c.course_name, inst.first_name AS instructor_first_name, inst.last_name AS instructor_last_name
FROM courses c
JOIN instructors inst ON c.instructor_id = inst.instructor_id;
-- 6
SELECT st.first_name, st.last_name, en.grade, c.course_name
FROM students st
JOIN enrollments en ON st.student_id = en.student_id
JOIN courses c ON en.course_id = c.course_id;
-- 7
SELECT st.first_name, st.last_name, st.age
FROM students st
JOIN enrollments en ON st.student_id = en.student_id
GROUP BY st.student_id
HAVING COUNT(en.enrollment_id) > 1;
-- 8
SELECT c.course_name, COUNT(en.enrollment_id) AS enrolled_students
FROM courses c
LEFT JOIN enrollments en ON c.course_id = en.course_id
GROUP BY c.course_id;
-- 9
SELECT st.first_name, st.last_name, st.age
FROM students st
LEFT JOIN enrollments en ON st.student_id = en.student_id
WHERE en.enrollment_id IS NULL;
-- 10
SELECT c.course_name, AVG(grade) AS average_grade
FROM courses c
JOIN enrollments en ON c.course_id = en.course_id
GROUP BY c.course_id;
-- 11
SELECT st.first_name, st.last_name, c.course_name, en.grade
FROM students st
JOIN enrollments en ON st.student_id = en.student_id
JOIN courses c ON en.course_id = c.course_id
WHERE en.grade > 'B';
-- 12
SELECT c.course_name, inst.first_name AS instructor_first_name, inst.last_name AS instructor_last_name
FROM courses c
JOIN instructors inst ON c.instructor_id = inst.instructor_id
WHERE inst.last_name LIKE 'S%';
-- 13
SELECT st.first_name, st.last_name, st.age
FROM students st
JOIN enrollments en ON st.student_id = en.student_id
JOIN courses c ON en.course_id = c.course_id
JOIN instructors inst ON c.instructor_id = inst.instructor_id
WHERE inst.first_name = 'Dr. Akhil';
-- 14
SELECT c.course_name, MAX(en.grade) AS max_grade
FROM courses c
JOIN enrollments en ON c.course_id = en.course_id
GROUP BY c.course_id;
-- 15
SELECT st.first_name, st.last_name, st.age, c.course_name
FROM students st
JOIN enrollments en ON st.student_id = en.student_id
JOIN courses c ON en.course_id = c.course_id
ORDER BY c.course_name ASC;
