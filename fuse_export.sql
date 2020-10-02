--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.10
-- Dumped by pg_dump version 9.6.10

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: expenses; Type: TABLE; Schema: public; Owner: fuse
--

CREATE TABLE public.expenses (
    id integer NOT NULL,
    description character varying(250) NOT NULL,
    amount numeric(15,6),
    created date,
    tstamp timestamp without time zone DEFAULT now(),
    fk_report integer
);


ALTER TABLE public.expenses OWNER TO fuse;

--
-- Name: expenses_id_seq; Type: SEQUENCE; Schema: public; Owner: fuse
--

CREATE SEQUENCE public.expenses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.expenses_id_seq OWNER TO fuse;

--
-- Name: expenses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: fuse
--

ALTER SEQUENCE public.expenses_id_seq OWNED BY public.expenses.id;


--
-- Name: flyway_schema_history; Type: TABLE; Schema: public; Owner: fuse
--

CREATE TABLE public.flyway_schema_history (
    installed_rank integer NOT NULL,
    version character varying(50),
    description character varying(200) NOT NULL,
    type character varying(20) NOT NULL,
    script character varying(1000) NOT NULL,
    checksum integer,
    installed_by character varying(100) NOT NULL,
    installed_on timestamp without time zone DEFAULT now() NOT NULL,
    execution_time integer NOT NULL,
    success boolean NOT NULL
);


ALTER TABLE public.flyway_schema_history OWNER TO fuse;

--
-- Name: report; Type: TABLE; Schema: public; Owner: fuse
--

CREATE TABLE public.report (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    created date,
    tstamp timestamp without time zone DEFAULT now()
);


ALTER TABLE public.report OWNER TO fuse;

--
-- Name: expenses id; Type: DEFAULT; Schema: public; Owner: fuse
--

ALTER TABLE ONLY public.expenses ALTER COLUMN id SET DEFAULT nextval('public.expenses_id_seq'::regclass);


--
-- Data for Name: expenses; Type: TABLE DATA; Schema: public; Owner: fuse
--

COPY public.expenses (id, description, amount, created, tstamp, fk_report) FROM stdin;
45	autost conf	13.600000	2020-09-13	2020-09-21 16:15:21.256195	1
46	autost pieta Torino	17.700000	2020-09-13	2020-09-21 16:16:35.763066	1
47	Autostrade Savona vado /con	15.800000	2020-09-12	2020-09-21 16:18:52.55233	1
48	Mare Hotel	681.000000	2020-09-12	2020-09-21 16:19:08.431244	1
39	Carlton Hotel	111.500000	2020-09-13	2020-09-21 16:24:07.688772	1
40	AtoGrill ITALIEN	30.650000	2020-09-13	2020-09-21 16:05:51.525611	1
41	Autogrill Itali	17.050000	2020-09-13	2020-09-21 16:06:46.034914	1
42	Palais Stephanie Canne Fr	31.200000	2020-09-13	2020-09-21 16:07:56.236287	1
36	RTA STA SALE2 Nice Fr	7.800000	2020-09-12	2020-09-21 16:09:03.583289	1
37	Paradise Nice Frankreich	83.650000	2020-09-12	2020-09-21 16:09:31.597451	1
38	Rado Plage	122.650000	2020-09-12	2020-09-21 16:10:15.704569	1
35	IHG HOTEL FR	127.800000	2020-09-10	2020-09-21 16:11:14.584975	1
34	Tunnel du Frejus	51.600000	2020-09-10	2020-09-21 16:11:32.066421	1
43	shell mougins france	70.250000	2020-09-12	2020-09-21 16:12:50.876369	1
44	Carlton HOtel	210.200000	2020-09-13	2020-09-21 16:14:04.889234	1
\.


--
-- Name: expenses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: fuse
--

SELECT pg_catalog.setval('public.expenses_id_seq', 49, true);


--
-- Data for Name: flyway_schema_history; Type: TABLE DATA; Schema: public; Owner: fuse
--

COPY public.flyway_schema_history (installed_rank, version, description, type, script, checksum, installed_by, installed_on, execution_time, success) FROM stdin;
1	1.0.0	Quarkus	SQL	db/migration/V1.0.0__Quarkus.sql	1558141439	fuse	2020-09-18 10:09:37.061416	15	t
\.


--
-- Data for Name: report; Type: TABLE DATA; Schema: public; Owner: fuse
--

COPY public.report (id, name, created, tstamp) FROM stdin;
1	Simple Report	2019-07-30	2020-09-18 10:09:37.061416
\.


--
-- Name: expenses expenses_pkey; Type: CONSTRAINT; Schema: public; Owner: fuse
--

ALTER TABLE ONLY public.expenses
    ADD CONSTRAINT expenses_pkey PRIMARY KEY (id);


--
-- Name: flyway_schema_history flyway_schema_history_pk; Type: CONSTRAINT; Schema: public; Owner: fuse
--

ALTER TABLE ONLY public.flyway_schema_history
    ADD CONSTRAINT flyway_schema_history_pk PRIMARY KEY (installed_rank);


--
-- Name: report report_pkey; Type: CONSTRAINT; Schema: public; Owner: fuse
--

ALTER TABLE ONLY public.report
    ADD CONSTRAINT report_pkey PRIMARY KEY (id);


--
-- Name: flyway_schema_history_s_idx; Type: INDEX; Schema: public; Owner: fuse
--

CREATE INDEX flyway_schema_history_s_idx ON public.flyway_schema_history USING btree (success);


--
-- Name: expenses expenses_fk_report_fkey; Type: FK CONSTRAINT; Schema: public; Owner: fuse
--

ALTER TABLE ONLY public.expenses
    ADD CONSTRAINT expenses_fk_report_fkey FOREIGN KEY (fk_report) REFERENCES public.report(id);


--
-- PostgreSQL database dump complete
--

