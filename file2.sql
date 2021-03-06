-- SELEZIONARE TUTTI GLI ISCRITTI AL CORSO DI LAUREA IN ECONOMIA (ID = 53)

SELECT * FROM `students` JOIN `degrees` ON `degrees` . `id` = `students` . `degree_id` WHERE `degree_id` = 53

-- SELEZIONARE TUTTI I CORSI DI LAUREA DEL DIPARTIMENTO DI NEUROSCIENZE

SELECT * FROM `degrees` JOIN `departments` ON `departments` . `id` = `degrees` . `department_id` WHERE `department_id` = 7

-- SELEZIONARE TUTTI I CORSI IN CUI INSEGNA FULVIO AMATO

SELECT * FROM `courses` JOIN `course_teacher` ON `course_teacher` . `course_id` = `courses` . `id` JOIN `teachers` ON `course_teacher` . `teacher_id` = `teachers` . `id` WHERE `teacher_id` = 44

-- SELEZIONARE TUTTI GLI STUDENTI CON I DATI RELATIVI AL CORSO E IL RELATIVO DIPARTIMENTO, IN ORDINE ALFABETICO PER COGNOME E NOME

SELECT `students` . `name`, `students` . `surname`, `degrees` . `name`, `degrees` . `level`, `degrees` . `address`, `degrees` . `email` , `degrees` . `website`, `departments` . `name`
FROM `students` 
JOIN `degrees` ON `degrees` . `id` = `students` . `degree_id`
JOIN `departments` ON `departments` . `id` = `degrees` . `department_id`
ORDER BY `students` . `surname` ASC

-- SELEZIONARE TUTTI I CORSI DI LAUREA CON I RELATIVI INSEGNANTI

SELECT `degrees` . `name` AS `Corso di Laurea`, `courses` . `name` AS `Corso Interno`, `teachers` . `name`, `teachers` . `surname`
FROM `degrees`
JOIN `courses` ON `degrees` . `id` = `courses` . `degree_id`
JOIN `course_teacher` ON `course_teacher` . `course_id` = `courses` . `id`
JOIN `teachers` ON `teachers` . `id` = `course_teacher` . `teacher_id`
ORDER BY `degrees` . `name`

-- SELEZIONARE TUTTI I DOCENTI DEL DIPARTIMENTO DI MATEMATICA

SELECT `teachers` . `name` AS `Nome`, `teachers` . `surname` AS `Cognome` 
FROM `teachers` 
JOIN `course_teacher` ON `course_teacher` . `teacher_id` = `teachers` . `id`
JOIN `courses` ON `courses` . `id` = `course_teacher` . `course_id`
JOIN `degrees` ON `degrees` . `id` = `courses` . `degree_id`
JOIN `departments` ON `departments` . `id` = `degrees` . `department_id`
WHERE `departments` . `name` = 'Dipartimento di Matematica'
