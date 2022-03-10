-- SELEZIONARE TUTTI GLI ISCRITTI AL CORSO DI LAUREA IN ECONOMIA (ID = 53)

SELECT * FROM `students` JOIN `degrees` ON `degrees` . `id` = `students` . `degree_id` WHERE `degree_id` = 53

-- SELEZIONARE TUTTI I CORSI DI LAUREA DEL DIPARTIMENTO DI NEUROSCIENZE

SELECT * FROM `degrees` JOIN `departments` ON `departments` . `id` = `degrees` . `department_id` WHERE `department_id` = 7