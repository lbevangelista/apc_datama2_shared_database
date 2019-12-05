--
-- PostgreSQL database dump
--

-- Dumped from database version 10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.10

-- Started on 2019-12-05 15:00:58

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'SQL_ASCII';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 35 (class 2615 OID 19856)
-- Name: lbevangelista; Type: SCHEMA; Schema: -; Owner: datama2mi182
--

CREATE SCHEMA lbevangelista;


ALTER SCHEMA lbevangelista OWNER TO datama2mi182;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 560 (class 1259 OID 27275)
-- Name: employee; Type: TABLE; Schema: lbevangelista; Owner: datama2mi182
--

CREATE TABLE lbevangelista.employee (
    employee_id integer NOT NULL,
    emp_fname character varying,
    emp_mname character varying,
    emp_lname character varying,
    emp_pnumber integer,
    emp_email character varying,
    emp_position character varying,
    emp_hire_date date,
    emp_salary numeric
);


ALTER TABLE lbevangelista.employee OWNER TO datama2mi182;

--
-- TOC entry 611 (class 1259 OID 28072)
-- Name: employee_view; Type: VIEW; Schema: lbevangelista; Owner: datama2mi182
--

CREATE VIEW lbevangelista.employee_view AS
 SELECT employee.employee_id,
    employee.emp_fname,
    employee.emp_mname,
    employee.emp_lname,
    employee.emp_pnumber,
    employee.emp_email,
    employee.emp_position
   FROM lbevangelista.employee
  WHERE (employee.employee_id < 5);


ALTER TABLE lbevangelista.employee_view OWNER TO datama2mi182;

--
-- TOC entry 561 (class 1259 OID 27281)
-- Name: requirements; Type: TABLE; Schema: lbevangelista; Owner: datama2mi182
--

CREATE TABLE lbevangelista.requirements (
    id integer NOT NULL,
    req_comments character varying,
    employee_id integer
);


ALTER TABLE lbevangelista.requirements OWNER TO datama2mi182;

--
-- TOC entry 4153 (class 0 OID 27275)
-- Dependencies: 560
-- Data for Name: employee; Type: TABLE DATA; Schema: lbevangelista; Owner: datama2mi182
--

INSERT INTO lbevangelista.employee VALUES (1, 'Lars Lean ', 'Belicena', 'Evangelista', 231123, 'lbevangelista@gmail.com', 'CIO', '2010-03-18', 380000);
INSERT INTO lbevangelista.employee VALUES (2, 'Kevin', 'Pelloso', 'Keng', 1231231, 'kpkeng@gmail.com', 'CEO', '2010-03-28', 380000);


--
-- TOC entry 4154 (class 0 OID 27281)
-- Dependencies: 561
-- Data for Name: requirements; Type: TABLE DATA; Schema: lbevangelista; Owner: datama2mi182
--



--
-- TOC entry 3986 (class 2606 OID 27479)
-- Name: employee employee_pkey; Type: CONSTRAINT; Schema: lbevangelista; Owner: datama2mi182
--

ALTER TABLE ONLY lbevangelista.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (employee_id);


--
-- TOC entry 3987 (class 2606 OID 27706)
-- Name: requirements employee_id; Type: FK CONSTRAINT; Schema: lbevangelista; Owner: datama2mi182
--

ALTER TABLE ONLY lbevangelista.requirements
    ADD CONSTRAINT employee_id FOREIGN KEY (id) REFERENCES lbevangelista.employee(employee_id);


-- Completed on 2019-12-05 15:00:58

--
-- PostgreSQL database dump complete
--

