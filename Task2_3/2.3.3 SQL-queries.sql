--- Задание 6

/* 1. Уникальный номер сотрудника, его ФИО и стаж работы – для всех сотрудников компании.
	Стаж выведем отдельно в днях (всего рабочих дней) и в количестве лет и месяцев (пример: стаж работы 5 лет и 2 месяца).
*/

SELECT id, surname, firstname, patronymic,  	
current_date - start_work as experience_in_days,
EXTRACT(YEAR FROM current_date) - EXTRACT(YEAR FROM start_work) as years,
EXTRACT(MONTH FROM current_date) - EXTRACT(MONTH FROM start_work) as months
FROM worker



/* 2. Уникальный номер сотрудника, его ФИО и стаж работы – только первых 3-х сотрудников.
	Рассмотрим варианты сортировки: по количеству дней работы (общему стажу), по алфавиту, по дате приёма.
*/

--- 2.0 Первые 3 сотрудника в БД
SELECT id, surname, firstname, patronymic,  	
current_date - start_work as experience_in_days,
EXTRACT(YEAR FROM current_date) - EXTRACT(YEAR FROM start_work) as years,
EXTRACT(MONTH FROM current_date) - EXTRACT(MONTH FROM start_work) as months
FROM worker
LIMIT 3

--- 2.1 По количеству дней работы (общему стажу)
SELECT id, surname, firstname, patronymic,  	
current_date - start_work as experience_in_days,
EXTRACT(YEAR FROM current_date) - EXTRACT(YEAR FROM start_work) as years,
EXTRACT(MONTH FROM current_date) - EXTRACT(MONTH FROM start_work) as months
FROM worker
ORDER BY experience_in_days DESC LIMIT 3

--- 2.2 По дате приёма на работу
SELECT id, surname, firstname, patronymic,  	
current_date - start_work as experience_in_days,
EXTRACT(YEAR FROM current_date) - EXTRACT(YEAR FROM start_work) as years,
EXTRACT(MONTH FROM current_date) - EXTRACT(MONTH FROM start_work) as months
FROM worker
ORDER BY start_work LIMIT 3



/* 3. Уникальный номер сотрудников - водителей. */

SELECT id FROM worker WHERE is_driver=true



/* 4. Уникальные номера сотрудников, которые хотя бы за 1 квартал получили оценку D или E. */

--- за один квартал
SELECT DISTINCT worker 
FROM rating 
WHERE rate='D' OR rate='E'

--- за первый квартал
SELECT DISTINCT worker 
FROM rating 
WHERE (rate='D' OR rate='E') AND (quater=1)



/* 5. Самая высокая заработная плата. */

SELECT MAX(salary) FROM worker 



--- 6*. Название самого крупного отдела.

--- Вариант 1
SELECT name_department FROM department ORDER BY employees_number DESC LIMIT 1

--- Вариант 2
SELECT name_department FROM department WHERE(employees_number = (SELECT MAX(employees_number) FROM department))



--- 7*. Уникальные номера сотрудников от самых опытных до вновь прибывших (по дате приёма).

SELECT id 	
FROM worker
ORDER BY start_work 



--- 8*. Средняя зарплата для каждого уровня сотрудников.

SELECT work_level, ROUND(AVG(salary::numeric), 2) FROM worker GROUP BY work_level 