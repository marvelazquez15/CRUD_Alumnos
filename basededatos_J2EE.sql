--
-- PostgreSQL database dump
--

\restrict nFrxAej9erIOiyWzuyND1gohcyrGBjmjOOvPTtyZbB1KjmirnPY8ZmnOqau5ICb

-- Dumped from database version 18.3
-- Dumped by pg_dump version 18.3

-- Started on 2026-04-12 02:21:03

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
-- TOC entry 219 (class 1259 OID 16392)
-- Name: to001_alumno; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.to001_alumno (
    fn_matricula numeric(10,0) NOT NULL,
    fv_nombre character varying(50) NOT NULL,
    fv_primer_apellido character varying(50) NOT NULL,
    fv_segundo_apellido character varying(50),
    fv_carrera character varying(50) NOT NULL,
    fd_fecha_nacimiento date NOT NULL,
    fv_calle character varying(100) NOT NULL,
    fn_numero_exterior numeric(10,0) NOT NULL,
    fn_numero_interior numeric(10,0),
    fv_colonia character varying(100) NOT NULL,
    fv_municipio character varying(100) NOT NULL,
    fv_estado character varying(100) NOT NULL,
    fv_pais character varying(100) NOT NULL,
    fv_codigo_postal character varying(10) NOT NULL,
    fd_fecha_inscripcion date NOT NULL,
    fv_nss character varying(11) NOT NULL,
    fv_curp character varying(18) NOT NULL,
    fn_celular numeric(10,0) NOT NULL,
    fv_escuela character varying(50) NOT NULL,
    fv_correo character varying(100) NOT NULL
);


ALTER TABLE public.to001_alumno OWNER TO postgres;

--
-- TOC entry 5012 (class 0 OID 16392)
-- Dependencies: 219
-- Data for Name: to001_alumno; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.to001_alumno VALUES (202224192, 'Brayan', 'Alvarado ', 'Soria', 'ISC', '2003-12-25', 'Mixes', 15, 2, 'Culturas', 'Chalco', 'México', 'México', '56605', '2026-04-01', '56321456987', 'ALVARADO25122003H1', 5597643125, 'Tec de Chalco', '202224192_alvarado@gmiail.tesch.mx.com');
INSERT INTO public.to001_alumno VALUES (202224195, 'Lizbeth', 'Flores', 'Castillo', 'Informatica', '2000-04-25', 'Lila', 62, 1, 'Jacalones II', 'Chalco', 'México', 'México', '56607', '2026-04-01', '51478523695', 'LIZFLOCAS25042000M', 5613467980, 'Tec de Chalco', '202224195_flores@gmiail.tesch.mx.com');
INSERT INTO public.to001_alumno VALUES (20224109, 'Emmanuel', 'Medina', 'Gorgonio', 'ISC', '2003-11-15', 'Juan F', 20, 10, 'San Marcos', 'Chalco', 'México', 'Mexico', '56610', '2026-04-06', '5589632145', 'EMMAMEDGOR15112003', 5596321458, 'Tec de Chalco', '202224109_medina@tesch.edu.mx');
INSERT INTO public.to001_alumno VALUES (20224101, 'Alexia', 'Liñan', 'T', 'ISC', '2000-11-20', 'Av. Cuauhtemoc', 45, 1, 'Centro', 'Chalco', 'México', 'Mexico', '56600', '2026-04-06', '56001120456', 'ALEXLIAM102MCNSN01', 5512345678, 'Tec de Chalco', '202224101_alexia@tesch.edu.mx');
INSERT INTO public.to001_alumno VALUES (20224102, 'Antonio', 'Hrdz', 'T', 'Informatica', '2002-01-10', 'Calle Hidalgo', 12, 5, 'Casco Antiguo', 'Chalco', 'México', 'Mexico', '56600', '2026-04-06', '56020110789', 'AHRDZ020110MMCR00', 5598765432, 'Tec de Chalco', '202224102_antonioa@tesch.edu.mx');
INSERT INTO public.to001_alumno VALUES (20224103, 'Irving', 'Torres', 'T', 'ISC', '2003-08-05', 'Calle Juarez', 101, 2, 'La Bomba', 'Chalco', 'México', 'Mexico', '56605', '2026-04-06', '56030805123', 'JAVI030805HMCJYS09', 5544332211, 'Tec de Chalco', '202224103_javier@tesch.edu.mx');
INSERT INTO public.to001_alumno VALUES (20224104, 'Jair', 'T', 'C', 'ISC', '2001-03-25', 'Pino Suarez', 3, 102, 'Culturas', 'Chalco', 'México', 'Mexico', '56607', '2026-04-06', '56010325555', 'JAIR010325MMCNST08', 5566778899, 'Tec de Chalco', '202224104_jair@tesch.edu.mx');
INSERT INTO public.to001_alumno VALUES (20224105, 'Alex', 'P', 'C', 'Computación', '2004-12-12', 'Av. Solidaridad', 50, 4, 'Emiliano Zapata', 'Chalco', 'México', 'Mexico', '56608', '2026-04-06', '56041212990', 'ALEX1041212HMCSRN0', 5511223344, 'IPN', '202224105_alex@tesch.edu.mx');
INSERT INTO public.to001_alumno VALUES (202224196, 'Dónovan', 'Fuentes', 'López', 'ISC', '2004-05-25', 'LACAND', 17, 3, 'Culturas', 'Chalco', 'México', 'México', '56606', '2026-04-01', '56987514236', 'DAVLOPRAM25052004H', 5520634174, 'Tec de Chalco', '202224196_fuentes@gmiail.tesch.mx.com');
INSERT INTO public.to001_alumno VALUES (202224113, 'Mariana', 'Ramirez', 'Velazquez', 'ISC', '2004-05-15', '16 de Sep', 14, 3, 'San Miguel', 'Chalco', 'México', 'México', '56604', '2026-04-01', '56892314785', 'RAVM040515MMCMLRA2', 5574253346, 'Tec de Chalco', '202224113_ramirez@gmiail.tesch.mx.com');


--
-- TOC entry 4856 (class 2606 OID 16416)
-- Name: to001_alumno to001_alumno_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.to001_alumno
    ADD CONSTRAINT to001_alumno_pkey PRIMARY KEY (fn_matricula);


--
-- TOC entry 4858 (class 2606 OID 16442)
-- Name: to001_alumno uq_celular; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.to001_alumno
    ADD CONSTRAINT uq_celular UNIQUE (fn_celular);


--
-- TOC entry 4860 (class 2606 OID 16444)
-- Name: to001_alumno uq_correo; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.to001_alumno
    ADD CONSTRAINT uq_correo UNIQUE (fv_correo);


--
-- TOC entry 4862 (class 2606 OID 16440)
-- Name: to001_alumno uq_curp; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.to001_alumno
    ADD CONSTRAINT uq_curp UNIQUE (fv_curp);


--
-- TOC entry 4864 (class 2606 OID 16438)
-- Name: to001_alumno uq_nss; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.to001_alumno
    ADD CONSTRAINT uq_nss UNIQUE (fv_nss);


-- Completed on 2026-04-12 02:21:03

--
-- PostgreSQL database dump complete
--

\unrestrict nFrxAej9erIOiyWzuyND1gohcyrGBjmjOOvPTtyZbB1KjmirnPY8ZmnOqau5ICb

