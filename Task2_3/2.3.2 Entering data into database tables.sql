--- заполнение таблицы "Отдел"
INSERT INTO department (name_department, surname_director, name_director, patronymic_director, employees_number)
VALUES ('Отдел системного администрирования', 'Александров', 'Николай', 'Ярославович', 3);

INSERT INTO department (name_department, surname_director, name_director, patronymic_director, employees_number)
VALUES ('Отдел контроля качества', 'Соловьёв', 'Артём', 'Игоревич', 2);

INSERT INTO department (name_department, surname_director, name_director, patronymic_director, employees_number)
VALUES ('Отдел системной аналитики', 'Наумов', 'Денис', 'Витальевич', 2);

INSERT INTO department (name_department, surname_director, name_director, patronymic_director, employees_number)
VALUES ('Отдел бизнес аналитики', 'Ковальчук', 'Алиса', 'Юрьевна', 3);

INSERT INTO department (name_department, surname_director, name_director, patronymic_director, employees_number)
VALUES ('Отдел ETL-разработки', 'Давыдова', 'Наталья', 'Александровна', 3);

INSERT INTO department (name_department, surname_director, name_director, patronymic_director, employees_number)
VALUES ('Отдел разработки ПО', 'Марков', 'Михаил', 'Андреевич', 4);


--- заполнение таблицы "Сотрудник" (по отделам)
--- Отдел системного администрирования (1)
INSERT INTO worker (id, surname, firstname, patronymic, birthdate, start_work, "position", work_level, salary, department, is_driver)
VALUES ('004578', 'Александров', 'Николай', 'Ярославович', '1983-01-29', '2010-08-01', 'Начальник отдела', 'lead', 120000, 1, True);

INSERT INTO worker (id, surname, firstname, patronymic, birthdate, start_work, "position", work_level, salary, department, is_driver)
VALUES ('015101', 'Попов', 'Сергей', 'Дмитриевич', '1994-10-15', '2019-04-14', 'Системный администратор', 'middle', 85000, 1, True);

INSERT INTO worker (id, surname, firstname, patronymic, birthdate, start_work, "position", work_level, salary, department, is_driver)
VALUES ('020477', 'Щербаков', 'Павел', 'Иванович', '1998-01-29', '2021-11-11', 'Системный администратор', 'junior', 50000, 1, True);

--- Отдел контроля качества (2)
INSERT INTO worker (id, surname, firstname, patronymic, birthdate, start_work, "position", work_level, salary, department, is_driver)
VALUES ('009989', 'Соловьёв', 'Артём', 'Игоревич', '1990-05-12', '2015-03-20', 'Начальник отдела', 'lead', 110000, 2, True);

INSERT INTO worker (id, surname, firstname, patronymic, birthdate, start_work, "position", work_level, salary, department, is_driver)
VALUES ('016000', 'Сафронова', 'Ксения', 'Алексеевна', '1997-11-09', '2019-06-01', 'Специалист по контролю качества', 'middle', 80000, 2, False);

--- Отдел системной аналитики (3)
INSERT INTO worker (id, surname, firstname, patronymic, birthdate, start_work, "position", work_level, salary, department, is_driver)
VALUES ('009998', 'Наумов', 'Денис', 'Витальевич', '1988-12-02', '2015-09-17', 'Начальник отдела', 'lead', 135000, 3, False);

INSERT INTO worker (id, surname, firstname, patronymic, birthdate, start_work, "position", work_level, salary, department, is_driver)
VALUES ('016010', 'Соколова', 'Екатерина', 'Дмитриевна', '1995-11-09', '2019-07-14', 'Системный аналитик', 'middle', 80000, 3, False);

--- Отдел бизнес аналитики (4)
INSERT INTO worker (id, surname, firstname, patronymic, birthdate, start_work, "position", work_level, salary, department, is_driver)
VALUES ('015995', 'Ковальчук', 'Алиса', 'Юрьевна', '1997-02-23', '2019-05-05', 'Начальник отдела', 'lead', 150000, 4, False);

INSERT INTO worker (id, surname, firstname, patronymic, birthdate, start_work, "position", work_level, salary, department, is_driver)
VALUES ('019845', 'Мартынова', 'Софья', 'Андреевна', '1998-05-19', '2020-08-16', 'Бизнес аналитик', 'senior', 110000, 4, False);

INSERT INTO worker (id, surname, firstname, patronymic, birthdate, start_work, "position", work_level, salary, department, is_driver)
VALUES ('020888', 'Колесникова', 'Надежда', 'Алексеевна', '2000-06-02', '2022-07-21', 'Бизнес аналитик', 'junior', 75000, 4, True);

--- Отдел ETL-разработки (5)
INSERT INTO worker (id, surname, firstname, patronymic, birthdate, start_work, "position", work_level, salary, department, is_driver)
VALUES ('015994', 'Давыдова', 'Наталья', 'Александровна', '1997-02-17', '2019-05-05', 'Начальник отдела', 'lead', 150000, 5, True);

INSERT INTO worker (id, surname, firstname, patronymic, birthdate, start_work, "position", work_level, salary, department, is_driver)
VALUES ('019900', 'Дмитриев', 'Василий', 'Михайлович', '1996-01-15', '2020-12-01', 'ETL-разработчик', 'senior', 125000, 5, True);

INSERT INTO worker (id, surname, firstname, patronymic, birthdate, start_work, "position", work_level, salary, department, is_driver)
VALUES ('020800', 'Смирнова', 'Ирина', 'Борисовна', '1998-04-18', '2022-04-21', 'ETL-разработчик', 'middle', 100000, 5, False);

--- Отдел разработки ПО (6)
INSERT INTO worker (id, surname, firstname, patronymic, birthdate, start_work, "position", work_level, salary, department, is_driver)
VALUES ('009988', 'Марков', 'Михаил', 'Андреевич', '1990-09-22', '2015-03-20', 'Начальник отдела', 'lead', 140000, 6, True);

INSERT INTO worker (id, surname, firstname, patronymic, birthdate, start_work, "position", work_level, salary, department, is_driver)
VALUES ('010001', 'Жигалов', 'Артур', 'Юрьевич', '1992-02-15', '2017-09-19', 'Программист', 'senior', 120000, 6, True);

INSERT INTO worker (id, surname, firstname, patronymic, birthdate, start_work, "position", work_level, salary, department, is_driver)
VALUES ('016225', 'Забродина', 'Любовь', 'Владиславовна', '1994-03-08', '2019-06-07', 'Программист', 'middle', 100000, 6, False);

INSERT INTO worker (id, surname, firstname, patronymic, birthdate, start_work, "position", work_level, salary, department, is_driver)
VALUES ('020750', 'Крюкова', 'Кира', 'Васильевна', '1998-11-28', '2022-01-21', 'Программист', 'junior', 80000, 6, False);


--- заполнение таблицы для премии-rating 
INSERT INTO rating (worker, year_number, quater, rate)
VALUES ('015995', 2021, 1, 'A');
INSERT INTO rating (worker, year_number, quater, rate)
VALUES ('015995', 2021, 2, 'A');
INSERT INTO rating (worker, year_number, quater, rate)
VALUES ('015995', 2021, 3, 'A');
INSERT INTO rating (worker, year_number, quater, rate)
VALUES ('015995', 2021, 4, 'A');
INSERT INTO rating (worker, year_number, quater, rate)
VALUES ('015995', 2022, 1, 'A');
INSERT INTO rating (worker, year_number, quater, rate)
VALUES ('015995', 2022, 2, 'A');
INSERT INTO rating (worker, year_number, quater, rate)
VALUES ('015995', 2022, 3, 'A');

INSERT INTO rating (worker, year_number, quater, rate)
VALUES ('015994', 2021, 1, 'A');
INSERT INTO rating (worker, year_number, quater, rate)
VALUES ('015994', 2021, 2, 'A');
INSERT INTO rating (worker, year_number, quater, rate)
VALUES ('015994', 2021, 3, 'A');
INSERT INTO rating (worker, year_number, quater, rate)
VALUES ('015994', 2021, 4, 'A');
INSERT INTO rating (worker, year_number, quater, rate)
VALUES ('015994', 2022, 1, 'A');
INSERT INTO rating (worker, year_number, quater, rate)
VALUES ('015994', 2022, 2, 'A');
INSERT INTO rating (worker, year_number, quater, rate)
VALUES ('015994', 2022, 3, 'A');

INSERT INTO rating (worker, year_number, quater, rate)
VALUES ('020477', 2022, 1, 'E');
INSERT INTO rating (worker, year_number, quater, rate)
VALUES ('020477', 2022, 2, 'D');
INSERT INTO rating (worker, year_number, quater, rate)
VALUES ('020477', 2022, 3, 'C');

INSERT INTO rating (worker, year_number, quater, rate)
VALUES ('019900', 2021, 1, 'C');
INSERT INTO rating (worker, year_number, quater, rate)
VALUES ('019900', 2021, 2, 'B');
INSERT INTO rating (worker, year_number, quater, rate)
VALUES ('019900', 2021, 3, 'C');
INSERT INTO rating (worker, year_number, quater, rate)
VALUES ('019900', 2021, 4, 'B');
INSERT INTO rating (worker, year_number, quater, rate)
VALUES ('019900', 2022, 1, 'B');
INSERT INTO rating (worker, year_number, quater, rate)
VALUES ('019900', 2022, 2, 'A');
INSERT INTO rating (worker, year_number, quater, rate)
VALUES ('019900', 2022, 3, 'A');

INSERT INTO rating (worker, year_number, quater, rate)
VALUES ('016010', 2021, 1, 'E');
INSERT INTO rating (worker, year_number, quater, rate)
VALUES ('016010', 2021, 2, 'D');
INSERT INTO rating (worker, year_number, quater, rate)
VALUES ('016010', 2021, 3, 'D');
INSERT INTO rating (worker, year_number, quater, rate)
VALUES ('016010', 2021, 4, 'E');
INSERT INTO rating (worker, year_number, quater, rate)
VALUES ('016010', 2022, 1, 'C');
INSERT INTO rating (worker, year_number, quater, rate)
VALUES ('016010', 2022, 2, 'B');
INSERT INTO rating (worker, year_number, quater, rate)
VALUES ('016010', 2022, 3, 'B');

INSERT INTO rating (worker, year_number, quater, rate)
VALUES ('016225', 2021, 1, 'E');
INSERT INTO rating (worker, year_number, quater, rate)
VALUES ('016225', 2021, 2, 'D');
INSERT INTO rating (worker, year_number, quater, rate)
VALUES ('016225', 2021, 3, 'C');
INSERT INTO rating (worker, year_number, quater, rate)
VALUES ('016225', 2021, 4, 'C');
INSERT INTO rating (worker, year_number, quater, rate)
VALUES ('016225', 2022, 1, 'B');
INSERT INTO rating (worker, year_number, quater, rate)
VALUES ('016225', 2022, 2, 'B');
INSERT INTO rating (worker, year_number, quater, rate)
VALUES ('016225', 2022, 3, 'A');

INSERT INTO rating (worker, year_number, quater, rate)
VALUES ('016000', 2021, 1, 'E');
INSERT INTO rating (worker, year_number, quater, rate)
VALUES ('016000', 2021, 2, 'E');
INSERT INTO rating (worker, year_number, quater, rate)
VALUES ('016000', 2021, 3, 'D');
INSERT INTO rating (worker, year_number, quater, rate)
VALUES ('016000', 2021, 4, 'D');
INSERT INTO rating (worker, year_number, quater, rate)
VALUES ('016000', 2022, 1, 'C');
INSERT INTO rating (worker, year_number, quater, rate)
VALUES ('016000', 2022, 2, 'B');
INSERT INTO rating (worker, year_number, quater, rate)
VALUES ('016000', 2022, 3, 'B');

INSERT INTO rating (worker, year_number, quater, rate)
VALUES ('015101', 2021, 1, 'D');
INSERT INTO rating (worker, year_number, quater, rate)
VALUES ('015101', 2021, 2, 'E');
INSERT INTO rating (worker, year_number, quater, rate)
VALUES ('015101', 2021, 3, 'D');
INSERT INTO rating (worker, year_number, quater, rate)
VALUES ('015101', 2021, 4, 'C');
INSERT INTO rating (worker, year_number, quater, rate)
VALUES ('015101', 2022, 1, 'B');
INSERT INTO rating (worker, year_number, quater, rate)
VALUES ('015101', 2022, 2, 'A');
INSERT INTO rating (worker, year_number, quater, rate)
VALUES ('015101', 2022, 3, 'A');

INSERT INTO rating (worker, year_number, quater, rate)
VALUES ('019845', 2021, 1, 'C');
INSERT INTO rating (worker, year_number, quater, rate)
VALUES ('019845', 2021, 2, 'C');
INSERT INTO rating (worker, year_number, quater, rate)
VALUES ('019845', 2021, 3, 'B');
INSERT INTO rating (worker, year_number, quater, rate)
VALUES ('019845', 2021, 4, 'A');
INSERT INTO rating (worker, year_number, quater, rate)
VALUES ('019845', 2022, 1, 'B');
INSERT INTO rating (worker, year_number, quater, rate)
VALUES ('019845', 2022, 2, 'A');
INSERT INTO rating (worker, year_number, quater, rate)
VALUES ('019845', 2022, 3, 'A');




/**/
INSERT INTO department (name_department, surname_director, name_director, patronymic_director, employees_number)
VALUES ('Отдел интеллектуального анализа данных', 'Евсеев', 'Александр', 'Евгеньевич', 3);


INSERT INTO worker (id, surname, firstname, patronymic, birthdate, start_work, "position", work_level, salary, department, is_driver)
VALUES ('022001', 'Евсеев', 'Александр', 'Евгеньевич', '1975-01-29', '2022-12-01', 'Начальник отдела', 'lead', 150000, 7, True);

INSERT INTO worker (id, surname, firstname, patronymic, birthdate, start_work, "position", work_level, salary, department, is_driver)
VALUES ('022002', 'Спиридонова', 'Евгения', 'Александровна', '1998-09-25', '2022-12-01', 'Data Scientist', 'junior', 100000, 7, False);

INSERT INTO worker (id, surname, firstname, patronymic, birthdate, start_work, "position", work_level, salary, department, is_driver)
VALUES ('022003', 'Пономарёва', 'Ольга', 'Ильинична', '1998-05-11', '2022-12-01', 'Data Scientist', 'junior', 100000, 7, False);
