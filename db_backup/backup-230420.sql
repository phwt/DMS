--
-- PostgreSQL database dump
--

-- Dumped from database version 11.7
-- Dumped by pg_dump version 12.2

-- Started on 2020-04-23 21:33:23

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

--
-- TOC entry 222 (class 1259 OID 16629)
-- Name: authen_employee; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.authen_employee (
    id integer NOT NULL,
    department_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.authen_employee OWNER TO doadmin;

--
-- TOC entry 221 (class 1259 OID 16627)
-- Name: authen_employee_id_seq; Type: SEQUENCE; Schema: public; Owner: doadmin
--

CREATE SEQUENCE public.authen_employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.authen_employee_id_seq OWNER TO doadmin;

--
-- TOC entry 3989 (class 0 OID 0)
-- Dependencies: 221
-- Name: authen_employee_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: doadmin
--

ALTER SEQUENCE public.authen_employee_id_seq OWNED BY public.authen_employee.id;


--
-- TOC entry 3853 (class 2604 OID 16632)
-- Name: authen_employee id; Type: DEFAULT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.authen_employee ALTER COLUMN id SET DEFAULT nextval('public.authen_employee_id_seq'::regclass);


--
-- TOC entry 3983 (class 0 OID 16629)
-- Dependencies: 222
-- Data for Name: authen_employee; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.authen_employee (id, department_id, user_id) FROM stdin;
1	1	1
2	1	2
3	1	3
4	1	4
5	1	5
6	1	6
\.


--
-- TOC entry 3990 (class 0 OID 0)
-- Dependencies: 221
-- Name: authen_employee_id_seq; Type: SEQUENCE SET; Schema: public; Owner: doadmin
--

SELECT pg_catalog.setval('public.authen_employee_id_seq', 5, true);


--
-- TOC entry 3856 (class 2606 OID 16634)
-- Name: authen_employee authen_employee_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.authen_employee
    ADD CONSTRAINT authen_employee_pkey PRIMARY KEY (id);


--
-- TOC entry 3858 (class 2606 OID 16636)
-- Name: authen_employee authen_employee_user_id_key; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.authen_employee
    ADD CONSTRAINT authen_employee_user_id_key UNIQUE (user_id);


--
-- TOC entry 3854 (class 1259 OID 16647)
-- Name: authen_employee_dept_id_id_308eb801; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX authen_employee_dept_id_id_308eb801 ON public.authen_employee USING btree (department_id);


--
-- TOC entry 3860 (class 2606 OID 16734)
-- Name: authen_employee authen_employee_department_id_b65497f7_fk_authen_department_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.authen_employee
    ADD CONSTRAINT authen_employee_department_id_b65497f7_fk_authen_department_id FOREIGN KEY (department_id) REFERENCES public.authen_department(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3859 (class 2606 OID 16642)
-- Name: authen_employee authen_employee_user_id_8e354367_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.authen_employee
    ADD CONSTRAINT authen_employee_user_id_8e354367_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2020-04-23 21:33:27

--
-- PostgreSQL database dump complete
--

