--
-- PostgreSQL Init Script - CRM Microservice
--

-- @author - Benjamin Wong Wei En, Hao Jun Poon, Belle Lee, Chen Ziyi, Masturah Binte Sulaiman
-- @team   - G3T4

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

SET default_table_access_method = heap;

--
-- Name: user; Type: TABLE; Schema: public; Owner: crmdb
--

CREATE TABLE public."user" (
    username character varying(80) NOT NULL,
    user_type integer NOT NULL,
    chat_id character varying(80)
);


ALTER TABLE public."user" OWNER TO crmdb;

--
-- Name: user user_pkey; Type: CONSTRAINT; Schema: public; Owner: crmdb
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (username);


--
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: crmdb
--

COPY public."user" (username, user_type, chat_id) FROM stdin;
cjj	0	\N
czz	1	\N
cjb	1	\N
csb2	2	\N
\.


--
-- PostgreSQL database dump complete
--
