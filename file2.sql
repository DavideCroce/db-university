-- SELEZIONARE TUTTI GLI ISCRITTI AL CORSO DI LAUREA IN ECONOMIA (ID = 53)

SELECT * FROM `students` JOIN `degrees` ON `degrees` . `id` = `students` . `degree_id` WHERE `degree_id` = 53

