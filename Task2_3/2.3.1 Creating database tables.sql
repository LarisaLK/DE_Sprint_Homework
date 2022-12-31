-- Table: public.department

-- DROP TABLE IF EXISTS public.department;

CREATE TABLE IF NOT EXISTS public.department
(
    id integer NOT NULL DEFAULT nextval('department_id_seq'::regclass),
    name_department character varying(255) COLLATE pg_catalog."default",
    surname_director character varying(65) COLLATE pg_catalog."default",
    name_director character varying(65) COLLATE pg_catalog."default",
    patronymic_director character varying(65) COLLATE pg_catalog."default",
    employees_number integer,
    CONSTRAINT department_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.department
    OWNER to postgres;

COMMENT ON TABLE public.department
    IS 'Отдел';



-- Table: public.rating

-- DROP TABLE IF EXISTS public.rating;

CREATE TABLE IF NOT EXISTS public.rating
(
    id integer NOT NULL DEFAULT nextval('rating_id_seq'::regclass),
    worker character varying(6) COLLATE pg_catalog."default",
    year_number integer NOT NULL,
    quater integer NOT NULL,
    rate "char",
    CONSTRAINT rating_pkey PRIMARY KEY (id),
    CONSTRAINT worker_id FOREIGN KEY (worker)
        REFERENCES public.worker (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.rating
    OWNER to postgres;
-- Index: fki_worker_id

-- DROP INDEX IF EXISTS public.fki_worker_id;

CREATE INDEX IF NOT EXISTS fki_worker_id
    ON public.rating USING btree
    (worker COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;



-- Table: public.worker

-- DROP TABLE IF EXISTS public.worker;

CREATE TABLE IF NOT EXISTS public.worker
(
    id character varying(6) COLLATE pg_catalog."default" NOT NULL,
    surname character varying(65) COLLATE pg_catalog."default" NOT NULL,
    firstname character varying(65) COLLATE pg_catalog."default" NOT NULL,
    patronymic character varying(65) COLLATE pg_catalog."default" NOT NULL,
    birthdate date,
    start_work date,
    "position" character varying(255) COLLATE pg_catalog."default",
    work_level character varying(10) COLLATE pg_catalog."default" NOT NULL,
    salary money,
    department integer,
    is_driver boolean DEFAULT false,
    CONSTRAINT worker_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.worker
    OWNER to postgres;

COMMENT ON TABLE public.worker
    IS 'Сотрудник';
-- Index: fki_department_id

-- DROP INDEX IF EXISTS public.fki_department_id;

CREATE INDEX IF NOT EXISTS fki_department_id
    ON public.worker USING btree
    (department ASC NULLS LAST)
    TABLESPACE pg_default;