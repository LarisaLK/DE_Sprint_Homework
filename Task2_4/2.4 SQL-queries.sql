/* 1. Фамилия сотрудника с самой высокой заработной платой. */

--- Вариант 1
SELECT surname FROM worker ORDER BY salary DESC LIMIT 1

--- Вариант 2  (выведет фамилии всех сотрудников с максимальной з/п)
SELECT surname FROM worker WHERE salary=(SELECT MAX(salary) FROM worker)



/* 2. Фамилии сотрудников в алфавитном порядке. */

SELECT surname FROM worker ORDER BY surname



/* 3. Средний стаж для каждого уровня сотрудника (в днях). */

SELECT work_level, ROUND(AVG(current_date-start_work)) AS experience 
FROM worker 
GROUP BY work_level
ORDER BY experience DESC



/* 4. Фамилия сотрудника и название отдела, в котором он работает. */

SELECT surname, name_department 
FROM worker 
INNER JOIN department ON worker.department = department.id



/* 5. Название отдела, фамилия сотрудника с самой высокой з/п в данном отделе, саму з/п. */

SELECT name_department, surname, salary FROM (
SELECT 
  surname, department, salary,
  row_number() OVER(PARTITION BY department ORDER BY department, salary DESC) as max_in_dep
FROM worker) q
INNER JOIN department
ON q.department = department.id
WHERE max_in_dep=1