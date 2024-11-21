--
-- PostgreSQL database dump
--

-- Dumped from database version 17rc1
-- Dumped by pg_dump version 17rc1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: isit_1year; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.isit_1year (
    id integer NOT NULL,
    name_subject character varying(50) NOT NULL,
    semester integer NOT NULL,
    number_weeks integer,
    number_credits integer,
    lections integer,
    practice_seminars integer,
    lab_classes integer,
    number_hours integer,
    listening_hours integer,
    lectures integer,
    practice_seminars_hours integer,
    lab_classes_hours integer,
    iwst integer,
    iws integer,
    total_control_coursework integer
);


ALTER TABLE public.isit_1year OWNER TO postgres;

--
-- Name: isit_1year_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.isit_1year ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.isit_1year_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: isit_2year; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.isit_2year (
    id integer NOT NULL,
    name_subject character varying(50) NOT NULL,
    semester integer NOT NULL,
    number_weeks integer,
    number_credits integer,
    lections integer,
    practice_seminars integer,
    lab_classes integer,
    number_hours integer,
    listening_hours integer,
    lectures integer,
    practice_seminars_hours integer,
    lab_classes_hours integer,
    iwst integer,
    iws integer,
    total_control_coursework integer
);


ALTER TABLE public.isit_2year OWNER TO postgres;

--
-- Name: isit_2year_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.isit_2year ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.isit_2year_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: isit_3year; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.isit_3year (
    id integer NOT NULL,
    name_subject character varying(50) NOT NULL,
    semester integer NOT NULL,
    number_weeks integer,
    number_credits integer,
    lections integer,
    practice_seminars integer,
    lab_classes integer,
    number_hours integer,
    listening_hours integer,
    lectures integer,
    practice_seminars_hours integer,
    lab_classes_hours integer,
    iwst integer,
    iws integer,
    total_control_coursework integer
);


ALTER TABLE public.isit_3year OWNER TO postgres;

--
-- Name: isit_3year_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.isit_3year ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.isit_3year_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: isit_4year; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.isit_4year (
    id integer NOT NULL,
    name_subject character varying(50) NOT NULL,
    semester integer NOT NULL,
    number_weeks integer,
    number_credits integer,
    lections integer,
    practice_seminars integer,
    lab_classes integer,
    number_hours integer,
    listening_hours integer,
    lectures integer,
    practice_seminars_hours integer,
    lab_classes_hours integer,
    iwst integer,
    iws integer,
    total_control_coursework integer
);


ALTER TABLE public.isit_4year OWNER TO postgres;

--
-- Name: isit_4year_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.isit_4year ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.isit_4year_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: ivt_1year; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ivt_1year (
    id integer NOT NULL,
    name_subject character varying(50) NOT NULL,
    semester integer NOT NULL,
    number_weeks integer,
    number_credits integer,
    lections integer,
    practice_seminars integer,
    lab_classes integer,
    number_hours integer,
    listening_hours integer,
    lectures integer,
    practice_seminars_hours integer,
    lab_classes_hours integer,
    iwst integer,
    iws integer,
    total_control_coursework integer
);


ALTER TABLE public.ivt_1year OWNER TO postgres;

--
-- Name: ivt_1year_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.ivt_1year ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.ivt_1year_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: ivt_2year; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ivt_2year (
    id integer NOT NULL,
    name_subject character varying(50) NOT NULL,
    semester integer NOT NULL,
    number_weeks integer,
    number_credits integer,
    lections integer,
    practice_seminars integer,
    lab_classes integer,
    number_hours integer,
    listening_hours integer,
    lectures integer,
    practice_seminars_hours integer,
    lab_classes_hours integer,
    iwst integer,
    iws integer,
    total_control_coursework integer
);


ALTER TABLE public.ivt_2year OWNER TO postgres;

--
-- Name: ivt_2year_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.ivt_2year ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.ivt_2year_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: ivt_3year; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ivt_3year (
    id integer NOT NULL,
    name_subject character varying(50) NOT NULL,
    semester integer NOT NULL,
    number_weeks integer,
    number_credits integer,
    lections integer,
    practice_seminars integer,
    lab_classes integer,
    number_hours integer,
    listening_hours integer,
    lectures integer,
    practice_seminars_hours integer,
    lab_classes_hours integer,
    iwst integer,
    iws integer,
    total_control_coursework integer
);


ALTER TABLE public.ivt_3year OWNER TO postgres;

--
-- Name: ivt_3year_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.ivt_3year ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.ivt_3year_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: ivt_4year; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ivt_4year (
    id integer NOT NULL,
    name_subject character varying(50) NOT NULL,
    semester integer NOT NULL,
    number_weeks integer,
    number_credits integer,
    lections integer,
    practice_seminars integer,
    lab_classes integer,
    number_hours integer,
    listening_hours integer,
    lectures integer,
    practice_seminars_hours integer,
    lab_classes_hours integer,
    iwst integer,
    iws integer,
    total_control_coursework integer
);


ALTER TABLE public.ivt_4year OWNER TO postgres;

--
-- Name: ivt_4year_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.ivt_4year ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.ivt_4year_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: isit_1year; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.isit_1year (id, name_subject, semester, number_weeks, number_credits, lections, practice_seminars, lab_classes, number_hours, listening_hours, lectures, practice_seminars_hours, lab_classes_hours, iwst, iws, total_control_coursework) FROM stdin;
1	Иностранный язык 	1	16	2	0	2	0	60	32	0	32	0	9	19	0
2	Кыргызский язык и литература	1	16	4	0	4	0	120	64	0	64	0	19	37	0
3	Русский язык	1	16	2	0	2	0	60	32	0	32	0	9	19	0
4	Философия 	1	16	4	2	2	0	120	64	32	32	0	19	37	0
5	Высшая  математика	1	16	6	2	4	0	180	96	32	64	0	28	56	0
6	Информатика (СПО)	1	16	6	2	0	4	180	96	32	0	64	28	56	0
7	Мат. логика и теория алг., Теория Множеств	1	16	6	2	0	4	180	96	32	0	64	28	56	0
8	Физическая культура	1	16	0	0	0	0	0	0	0	0	0	0	0	0
10	Программа личностного роста (Модуль 1)	1	16	2	0	2	0	60	32	0	32	0	9	19	0
11	Иностранный язык 	2	16	2	0	2	0	60	32	0	32	0	9	19	0
12	Кыргызский язык и литература	2	16	4	0	4	0	120	64	0	64	0	19	37	0
13	Русский язык	2	16	2	0	2	0	60	32	0	32	0	9	19	0
14	Информатика (ППО)	2	16	4	1	0	3	120	64	16	0	48	19	37	0
15	Высшая  математика	2	16	4	2	2	0	120	64	32	32	0	19	37	0
16	Основы прог-ния и алгоритмизации                  	2	16	5	2	0	3	150	80	32	0	48	23	47	0
17	Физика	2	16	3	1	2	0	90	48	16	32	0	14	28	0
18	Манасоведение	2	16	2	1	1	0	60	32	16	16	0	9	19	0
19	Физическая культура	2	16	0	0	0	0	0	0	0	0	0	0	0	0
20	Учебная практика 	2	16	4	0	4	0	120	0	0	0	0	0	0	0
22	Программа личностного роста (Модуль 2)	2	16	2	0	2	0	60	32	0	32	0	9	19	0
9	ИТОГО (1 семестр)	8	0	30	8	14	8	900	480	128	224	128	140	280	0
21	ИТОГО  (2 семестр)	10	0	30	7	17	6	900	416	112	208	96	121	243	0
\.


--
-- Data for Name: isit_2year; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.isit_2year (id, name_subject, semester, number_weeks, number_credits, lections, practice_seminars, lab_classes, number_hours, listening_hours, lectures, practice_seminars_hours, lab_classes_hours, iwst, iws, total_control_coursework) FROM stdin;
1	Комп. англ. язык, Технический перевод	3	17	2	0	2	0	60	34	0	34	0	9	17	0
2	Физика	3	17	4	2	2	0	120	68	34	34	0	17	35	0
3	Программирование	3	17	5	2	0	3	150	85	34	0	51	22	43	0
4	Высшая  математика	3	17	3	1	2	0	90	51	17	34	0	13	26	0
5	Электротехника,электроника и схемотехника	3	17	4	2	0	2	120	68	34	0	34	17	35	0
6	Упр. проектами, Крит. мышление	3	17	2	1	1	0	60	34	17	17	0	9	17	0
7	Компьютерная графика и дизайн 	3	17	5	2	0	3	150	85	34	0	51	22	43	0
8	Введение в инф-ные технологии	3	17	2	1	1	0	60	34	17	17	0	9	17	0
9	Учебная практика	3	17	3	0	3	0	90	0	0	0	0	0	0	0
11	Программа личностного роста (Модуль 3)	1	17	2	0	2	0	60	34	0	34	0	9	17	0
19	М. экзамен (Кырг. язык; История; География ) 	4	16	3	0	0	0	90	0	0	0	0	0	0	0
12	Комп. англ. язык, Технический перевод	4	16	2	0	2	0	60	32	0	32	0	9	19	0
13	Программирование	4	16	4	2	0	2	120	64	32	0	32	19	37	4
14	Электротехника,электроника и схемотехника	4	16	4	2	0	2	120	64	32	0	32	19	37	0
15	Компьютерная графика и дизайн 	4	16	4	2	0	2	120	64	32	0	32	19	37	0
16	База данных	4	16	3	1	0	2	90	48	166	0	32	14	28	0
17	История  Кыргызстана	4	16	4	2	2	0	120	64	32	32	0	19	37	0
18	Политология, Культурологоия	4	16	2	1	1	0	60	32	16	16	0	9	19	0
20	Производственная практика	4	16	2	0	2	0	60	0	0	0	0	0	0	0
22	Программа личностного роста (Модуль 4)	2	16	2	0	2	0	60	32	0	32	0	9	19	0
10	ИТОГО (3 семестр)	9	0	30	11	11	8	900	459	187	136	136	18	233	0
21	ИТОГО (4 семестр)	10	0	30	11	8	8	900	400	176	96	128	117	233	0
\.


--
-- Data for Name: isit_3year; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.isit_3year (id, name_subject, semester, number_weeks, number_credits, lections, practice_seminars, lab_classes, number_hours, listening_hours, lectures, practice_seminars_hours, lab_classes_hours, iwst, iws, total_control_coursework) FROM stdin;
1	Т. вероятности, мат. стат. и случайные процессы	5	16	6	2	0	4	180	96	32	0	64	28	65	0
2	Инфокомуниционные системы и сети	5	16	3	1	0	2	90	48	16	0	32	14	28	0
3	Основы теории управления	5	16	4	2	0	2	120	64	32	0	32	19	37	0
4	Электротехника,электроника и схемотехника	5	16	4	2	0	2	120	64	32	0	32	19	37	0
5	Комп. англ. язык, Технический перевод   	5	16	2	0	2	0	60	32	0	32	0	9	19	0
6	Компьютерная графика и дизайн 	5	16	5	2	0	3	150	80	32	0	48	23	47	0
7	Базы данных	5	16	6	2	0	4	180	96	32	0	64	28	56	0
9	Программа личностного роста (Модуль 5)	5	16	2	0	2	0	60	32	0	32	0	9	19	0
10	Инфокоммуникационные системы и сети	6	16	3	1	0	2	90	48	16	0	32	14	28	0
11	Методы оптимизации	6	16	4	1	0	3	120	64	16	0	48	19	37	6
12	Компьютерное моделирование 	6	16	4	1	0	3	120	64	16	0	48	19	37	0
13	Метрология, стандартизация и сертификация	6	16	4	2	0	2	120	64	32	0	32	19	37	0
14	Архитектура информационных систем	6	16	4	2	0	2	120	64	32	0	32	19	37	0
15	Комп. англ. язык, Технический перевод   	6	16	2	0	2	0	60	32	0	32	0	9	19	0
16	Защита информации	6	16	3	1	0	2	90	48	16	0	32	14	28	0
17	Производственная практика	6	16	6	0	6	0	180	0	0	0	0	0	0	0
19	Программа личностного роста (Модуль 6)	2	16	2	0	2	0	60	32	0	32	0	9	19	0
8	ИТОГО (5 семестр)	7	0	30	11	2	17	900	480	176	32	272	140	280	0
18	ИТОГО (6 семестр)	8	0	30	8	8	14	900	384	128	32	224	113	223	0
\.


--
-- Data for Name: isit_4year; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.isit_4year (id, name_subject, semester, number_weeks, number_credits, lections, practice_seminars, lab_classes, number_hours, listening_hours, lectures, practice_seminars_hours, lab_classes_hours, iwst, iws, total_control_coursework) FROM stdin;
1	Безопасность жизнедеятельности	7	15	4	2	2	0	120	60	30	30	0	20	40	0
2	WEB-ориентированные информационные системы	7	15	6	2	0	4	180	90	30	0	60	30	60	0
4	Разработка клиент-серверных прил.	7	15	6	2	0	4	180	90	30	0	60	30	60	0
5	Проектирование информационных систем	7	15	6	2	0	4	180	90	30	0	60	30	60	0
6	Теория информационных процессов и систем	7	15	4	1	0	3	120	60	15	0	45	20	40	0
7	Курсовой проект	7	15	0	0	0	0	0	0	0	0	0	0	0	7
9	Операционные системы	8	14	3	1	0	2	90	42	14	0	28	16	32	0
10	Нейросетевые тех., Технологии ИИ	8	14	4	2	0	2	120	56	28	0	28	21	43	0
11	Теория принятия решений 	8	14	4	1	0	3	120	56	14	0	42	21	43	0
12	Облачные технологии в обработке данных	8	14	2	1	0	1	60	28	14	0	14	11	21	0
13	Средства виз.раз-ки прил., Прог-ние для Android 	8	14	3	1	0	2	90	42	14	0	28	16	32	0
14	Преддипломная практика	8	14	6	0	0	0	180	0	0	0	0	0	0	0
15	Государственный междисциплинарный экзамен	8	14	4	0	0	0	120	0	0	0	0	0	0	0
16	Защита выпускной квалификационной работы	8	14	4	0	0	0	120	0	0	0	0	0	0	0
3	JAVA  прог-ние инф-ных систем	7	15	4	1	0	3	120	60	15	0	45	20	40	0
8	ИТОГО (7 семестр)	7	0	30	10	2	18	900	450	150	30	270	150	300	1
17	ИТОГО (8 семестр)	7	14	30	6	0	10	900	224	84	0	140	85	171	0
\.


--
-- Data for Name: ivt_1year; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ivt_1year (id, name_subject, semester, number_weeks, number_credits, lections, practice_seminars, lab_classes, number_hours, listening_hours, lectures, practice_seminars_hours, lab_classes_hours, iwst, iws, total_control_coursework) FROM stdin;
1	Иностранный язык 	1	16	2	0	2	0	60	32	0	32	0	9	19	0
2	Кыргызский язык и литература	1	16	4	0	4	0	120	64	0	64	0	19	37	0
3	Русский язык	1	16	2	0	2	0	60	32	0	32	0	9	19	0
4	Философия 	1	16	4	2	2	0	120	64	32	32	0	19	37	0
5	Высшая  математика	1	16	6	2	4	0	180	96	32	64	0	28	56	0
6	Информатика (СПО)	1	16	6	2	0	4	180	96	32	0	64	28	56	0
7	Мат. логика и т. алгоритмов, Теория Множеств	1	16	6	2	0	4	180	96	32	0	64	28	56	0
8	Физическая культура	1	16	0	0	0	0	0	0	0	0	0	0	0	0
10	 Программа личностного роста (Модуль 1)	1	16	2	0	2	0	60	32	0	32	0	9	19	0
11	Иностранный язык 	2	16	2	0	2	0	60	32	0	32	0	9	19	0
12	Кыргызский язык и литература	2	16	4	0	4	0	120	64	0	64	0	19	37	0
13	Русский язык	2	16	2	0	2	0	60	32	0	32	0	9	19	0
14	Информатика (ППО)	2	16	4	1	0	3	120	64	16	0	48	19	37	0
15	Высшая  математика	2	16	4	2	2	0	120	64	32	32	0	19	37	0
16	Основы прог-ния, Основы алгоритмизации            	2	16	5	2	0	3	150	80	32	0	48	23	47	0
17	Физика	2	16	3	1	2	0	90	48	16	32	0	14	28	0
18	Манасоведение	2	16	2	1	1	0	60	32	16	16	0	9	19	0
19	Физическая культура	2	16	0	0	0	0	0	0	0	0	0	0	0	0
20	Учебная практика 	2	16	4	0	4	0	120	0	0	0	0	0	0	0
22	Программа личностного роста (Модуль 2)	2	16	2	0	2	0	60	32	0	32	0	9	19	0
9	ИТОГО (1 семестр)	8	0	30	8	14	8	900	480	128	24	128	140	280	0
21	ИТОГО (2 семестр)	10	0	30	7	17	6	900	416	12	208	96	121	243	0
\.


--
-- Data for Name: ivt_2year; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ivt_2year (id, name_subject, semester, number_weeks, number_credits, lections, practice_seminars, lab_classes, number_hours, listening_hours, lectures, practice_seminars_hours, lab_classes_hours, iwst, iws, total_control_coursework) FROM stdin;
23	Программа личностного роста (Модуль 4)	2	16	2	0	2	0	60	32	0	32	0	9	19	0
10	ИТОГО (3 семестр)	9	0	30	11	11	8	900	459	187	136	118	233	0	0
1	Компьютерный английский язык,Технический перевод  	3	17	2	0	2	0	60	34	0	34	0	9	17	0
2	Физика	3	17	4	2	2	0	120	68	34	34	0	17	35	0
3	Программирование	3	17	5	2	0	3	150	85	34	0	51	22	43	0
4	Высшая  математика	3	17	3	1	2	0	90	51	17	34	0	13	26	0
5	Электротехника,электроника и схемотехника	3	17	4	2	0	2	120	68	34	0	34	17	35	0
6	 Управление проектами , Критическое мышление	3	17	2	1	1	0	60	34	17	17	0	9	17	0
7	Компьютерная графика и дизайн 	3	17	5	2	0	3	150	85	34	0	51	22	43	0
8	Введение в информационные технологии	3	17	2	1	1	0	60	34	17	17	0	9	17	0
9	Учебная практика	3	17	3	0	3	0	90	0	0	0	0	0	0	0
11	Программа личностного роста (Модуль 3)	1	17	2	0	2	0	60	34	0	34	0	9	17	0
12	Компьютерный английский язык,Технический перевод  	4	16	2	0	2	0	60	32	0	32	0	9	19	0
13	Программирование	4	16	4	2	0	2	120	64	32	0	32	19	37	0
14	Электротехника,электроника и схемотехника	4	16	4	2	0	2	120	64	32	0	32	19	37	0
15	Компьютерная графика и дизайн 	4	16	4	2	0	2	120	64	32	0	32	19	37	0
16	Базы данных	4	16	3	1	0	2	90	48	16	0	32	14	28	0
17	История  Кыргызстана	4	16	4	2	2	0	120	64	32	32	0	19	37	0
18	География Кыргызстана	4	16	2	1	1	0	60	32	16	16	0	9	19	0
19	Политология , Культурологоия	4	16	2	1	1	0	60	32	16	16	0	9	19	0
20	Межд. экзамен (Кырг.яз, лит-ра,ист, гео) 	4	16	3	0	0	0	90	0	0	0	0	0	0	0
21	Производственная практика	4	16	2	0	2	0	60	0	0	0	0	0	0	0
22	ИТОГО (4 семестр)	10	0	30	11	8	8	900	400	176	96	128	117	233	0
\.


--
-- Data for Name: ivt_3year; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ivt_3year (id, name_subject, semester, number_weeks, number_credits, lections, practice_seminars, lab_classes, number_hours, listening_hours, lectures, practice_seminars_hours, lab_classes_hours, iwst, iws, total_control_coursework) FROM stdin;
1	Т. вероятности, мат. статистика и случ. процессы	5	16	6	2	0	4	180	96	32	0	64	28	56	0
2	Сети и телекоммуникации	5	16	3	1	0	2	90	48	16	0	32	14	28	0
3	Основы теории управления	5	16	4	2	0	2	120	64	32	0	32	19	37	0
4	Электротехника,электроника и схемотехника	5	16	4	2	0	2	120	64	32	0	32	19	37	0
5	Комп. англ. язык, Технический перевод	5	16	2	0	2	0	60	32	0	32	0	9	19	0
6	Компьютерная графика и дизайн 	5	16	5	2	0	3	150	80	32	0	48	23	47	0
7	Базы данных	5	16	6	2	0	4	180	96	32	0	64	28	56	0
9	Программа личностного роста (Модуль 5)	1	17	2	0	2	0	60	34	0	34	0	9	17	0
10	Сети и телекоммуникации	6	16	3	1	0	2	90	48	16	0	32	14	28	0
11	Методы опимизации	6	16	4	1	0	3	120	64	16	0	48	19	37	6
12	Компьютерное моделирование 	6	16	4	1	0	3	120	64	16	0	48	19	37	0
13	Защита информации	6	16	3	1	0	2	90	48	16	0	32	14	28	0
14	ЭВМ и периферийные устройства	6	16	4	2	0	2	120	64	32	0	32	19	37	0
15	Комп. англ. язык, Технический перевод	6	16	2	0	2	0	60	32	0	32	0	9	19	0
16	Метрология, стандартизация и сертификация	6	16	4	2	0	2	120	64	32	0	32	19	37	0
17	Производственная практика	6	16	6	0	6	0	180	0	0	0	0	0	0	0
19	 Программа личностного роста (Модуль 6)	2	16	2	0	2	0	60	32	0	32	0	9	19	0
8	ИТОГО (5 семестр)	7	0	30	11	2	17	900	480	176	32	272	140	280	0
18	ИТОГО (6 семестр)	8	0	30	8	8	14	900	384	128	32	224	112	224	0
\.


--
-- Data for Name: ivt_4year; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ivt_4year (id, name_subject, semester, number_weeks, number_credits, lections, practice_seminars, lab_classes, number_hours, listening_hours, lectures, practice_seminars_hours, lab_classes_hours, iwst, iws, total_control_coursework) FROM stdin;
1	Безопасность жизнедеятельности	7	15	4	2	2	0	120	60	30	30	0	20	40	0
2	Проектирование информационных систем	7	15	6	2	0	4	180	90	30	0	60	30	60	0
3	JAVA   программирование информационных систем	7	15	4	1	0	3	120	60	15	0	45	20	40	0
4	Разработка клиент-серверных приложений	7	15	6	2	0	4	180	90	30	0	60	30	60	0
5	WEB-ориентированные инф. системы	7	15	6	2	0	4	180	90	30	0	60	30	60	0
7	Курсовой проект	7	15	0	0	0	0	0	0	0	0	0	0	0	7
9	Операционные системы	8	14	3	1	0	2	90	42	14	0	28	32	16	0
10	Нейросетевые тех. , Технологии ис. интеллекта   	8	14	4	2	0	2	120	56	28	0	28	43	21	0
11	Теория принятия решений 	8	14	4	1	0	3	120	56	14	0	42	43	21	0
12	Технологии удаленного доступа к б.д.	8	14	2	1	0	1	60	28	14	0	14	21	11	0
13	Средства виз. раз. прил., Прог-ние для  Android   	8	14	3	1	0	2	90	42	14	0	28	32	16	0
14	Преддипломная практика	8	14	6	0	0	0	180	0	0	0	0	0	0	0
15	Гос. междисциплинарный экзамен	8	14	4	0	0	0	120	0	0	0	0	0	0	0
16	Информатика (ППО)	8	14	4	0	0	0	120	0	0	0	0	0	0	0
6	Инф. системы и технологии	7	15	4	1	0	3	120	60	15	0	45	20	40	0
8	ИТОГО (7 семестр)	7	0	30	10	2	18	900	450	150	30	270	150	300	1
17	ИТОГО (8 семестр)	7	14	30	6	0	10	900	224	84	0	140	171	85	0
\.


--
-- Name: isit_1year_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.isit_1year_id_seq', 23, true);


--
-- Name: isit_2year_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.isit_2year_id_seq', 22, true);


--
-- Name: isit_3year_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.isit_3year_id_seq', 19, true);


--
-- Name: isit_4year_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.isit_4year_id_seq', 17, true);


--
-- Name: ivt_1year_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ivt_1year_id_seq', 23, true);


--
-- Name: ivt_2year_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ivt_2year_id_seq', 27, true);


--
-- Name: ivt_3year_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ivt_3year_id_seq', 19, true);


--
-- Name: ivt_4year_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ivt_4year_id_seq', 17, true);


--
-- Name: isit_1year isit_1year_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.isit_1year
    ADD CONSTRAINT isit_1year_pk PRIMARY KEY (id);


--
-- Name: isit_2year isit_2year_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.isit_2year
    ADD CONSTRAINT isit_2year_pk PRIMARY KEY (id);


--
-- Name: isit_3year isit_3year_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.isit_3year
    ADD CONSTRAINT isit_3year_pk PRIMARY KEY (id);


--
-- Name: isit_4year isit_4year_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.isit_4year
    ADD CONSTRAINT isit_4year_pk PRIMARY KEY (id);


--
-- Name: ivt_1year ivt_1year_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ivt_1year
    ADD CONSTRAINT ivt_1year_pk PRIMARY KEY (id);


--
-- Name: ivt_2year ivt_2year_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ivt_2year
    ADD CONSTRAINT ivt_2year_pk PRIMARY KEY (id);


--
-- Name: ivt_3year ivt_3year_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ivt_3year
    ADD CONSTRAINT ivt_3year_pk PRIMARY KEY (id);


--
-- Name: ivt_4year ivt_4year_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ivt_4year
    ADD CONSTRAINT ivt_4year_pk PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

