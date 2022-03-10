-- SELEZIONARE TUTTI GLI ISCRITTI AL CORSO DI LAUREA IN ECONOMIA (ID = 53)

SELECT * FROM `students` JOIN `degrees` ON `degrees` . `id` = `students` . `degree_id` WHERE `degree_id` = 53

-- SELEZIONARE TUTTI I CORSI DI LAUREA DEL DIPARTIMENTO DI NEUROSCIENZE

SELECT * FROM `degrees` JOIN `departments` ON `departments` . `id` = `degrees` . `department_id` WHERE `department_id` = 7

-- SELEZIONARE TUTTI I CORSI IN CUI INSEGNA FULVIO AMATO

SELECT * FROM `courses` JOIN `course_teacher` ON `course_teacher` . `course_id` = `courses` . `id` JOIN `teachers` ON `course_teacher` . `teacher_id` = `teachers` . `id` WHERE `teacher_id` = 44
