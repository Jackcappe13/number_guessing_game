--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: leaderboards; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.leaderboards (
    user_id integer NOT NULL,
    username character varying(22),
    games_played integer,
    best_game integer
);


ALTER TABLE public.leaderboards OWNER TO freecodecamp;

--
-- Name: leaderboards_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.leaderboards_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.leaderboards_user_id_seq OWNER TO freecodecamp;

--
-- Name: leaderboards_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.leaderboards_user_id_seq OWNED BY public.leaderboards.user_id;


--
-- Name: leaderboards user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.leaderboards ALTER COLUMN user_id SET DEFAULT nextval('public.leaderboards_user_id_seq'::regclass);


--
-- Data for Name: leaderboards; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.leaderboards VALUES (20, 'You', 3, 2);
INSERT INTO public.leaderboards VALUES (3, 'user_1722848957229', 2, 126);
INSERT INTO public.leaderboards VALUES (13, 'user_1722849577642', 2, 29);
INSERT INTO public.leaderboards VALUES (2, 'user_1722848957230', 5, 509);
INSERT INTO public.leaderboards VALUES (12, 'user_1722849577643', 5, 365);
INSERT INTO public.leaderboards VALUES (5, 'user_1722849014758', 2, 483);
INSERT INTO public.leaderboards VALUES (4, 'user_1722849014759', 5, 303);
INSERT INTO public.leaderboards VALUES (26, 'user_1722850158025', 2, 249);
INSERT INTO public.leaderboards VALUES (15, 'user_1722849698281', 2, 2);
INSERT INTO public.leaderboards VALUES (38, 'user_1722850706307', 1, 686);
INSERT INTO public.leaderboards VALUES (25, 'user_1722850158026', 5, 290);
INSERT INTO public.leaderboards VALUES (14, 'user_1722849698282', 5, 2);
INSERT INTO public.leaderboards VALUES (7, 'user_1722849069528', 2, 101);
INSERT INTO public.leaderboards VALUES (50, 'user_1722850977485', 2, 18);
INSERT INTO public.leaderboards VALUES (6, 'user_1722849069529', 5, 255);
INSERT INTO public.leaderboards VALUES (17, 'user_1722849709485', 2, 1);
INSERT INTO public.leaderboards VALUES (9, 'user_1722849243421', 2, 26);
INSERT INTO public.leaderboards VALUES (37, 'user_1722850706308', 1, 519);
INSERT INTO public.leaderboards VALUES (16, 'user_1722849709486', 5, 1);
INSERT INTO public.leaderboards VALUES (8, 'user_1722849243422', 5, 597);
INSERT INTO public.leaderboards VALUES (28, 'user_1722850197040', 2, 443);
INSERT INTO public.leaderboards VALUES (49, 'user_1722850977486', 5, 144);
INSERT INTO public.leaderboards VALUES (27, 'user_1722850197041', 5, 209);
INSERT INTO public.leaderboards VALUES (11, 'user_1722849502820', 2, 229);
INSERT INTO public.leaderboards VALUES (10, 'user_1722849502821', 5, 348);
INSERT INTO public.leaderboards VALUES (19, 'user_1722849912810', 2, 342);
INSERT INTO public.leaderboards VALUES (18, 'user_1722849912811', 5, 332);
INSERT INTO public.leaderboards VALUES (40, 'user_1722850747365', 2, 323);
INSERT INTO public.leaderboards VALUES (30, 'user_1722850221077', 2, 256);
INSERT INTO public.leaderboards VALUES (29, 'user_1722850221078', 5, 270);
INSERT INTO public.leaderboards VALUES (52, 'user_1722851007814', 2, 359);
INSERT INTO public.leaderboards VALUES (22, 'user_1722849986517', 2, 35);
INSERT INTO public.leaderboards VALUES (21, 'user_1722849986518', 5, 143);
INSERT INTO public.leaderboards VALUES (39, 'user_1722850747366', 5, 354);
INSERT INTO public.leaderboards VALUES (51, 'user_1722851007815', 5, 266);
INSERT INTO public.leaderboards VALUES (32, 'user_1722850366993', 2, 342);
INSERT INTO public.leaderboards VALUES (24, 'user_1722850038615', 2, 150);
INSERT INTO public.leaderboards VALUES (31, 'user_1722850366994', 5, 141);
INSERT INTO public.leaderboards VALUES (23, 'user_1722850038616', 5, 13);
INSERT INTO public.leaderboards VALUES (42, 'user_1722850848200', 2, 870);
INSERT INTO public.leaderboards VALUES (34, 'user_1722850379261', 2, 797);
INSERT INTO public.leaderboards VALUES (54, 'user_1722851079718', 2, 159);
INSERT INTO public.leaderboards VALUES (41, 'user_1722850848201', 5, 169);
INSERT INTO public.leaderboards VALUES (1, 'Me', 13, 1);
INSERT INTO public.leaderboards VALUES (33, 'user_1722850379262', 5, 231);
INSERT INTO public.leaderboards VALUES (53, 'user_1722851079719', 5, 174);
INSERT INTO public.leaderboards VALUES (36, 'user_1722850532505', 2, 140);
INSERT INTO public.leaderboards VALUES (44, 'user_1722850899941', 2, 224);
INSERT INTO public.leaderboards VALUES (35, 'user_1722850532506', 5, 140);
INSERT INTO public.leaderboards VALUES (43, 'user_1722850899942', 5, 108);
INSERT INTO public.leaderboards VALUES (56, 'user_1722851113745', 2, 330);
INSERT INTO public.leaderboards VALUES (46, 'user_1722850912633', 2, 278);
INSERT INTO public.leaderboards VALUES (55, 'user_1722851113746', 5, 600);
INSERT INTO public.leaderboards VALUES (45, 'user_1722850912634', 5, 288);
INSERT INTO public.leaderboards VALUES (48, 'user_1722850956227', 2, 117);
INSERT INTO public.leaderboards VALUES (47, 'user_1722850956228', 5, 368);


--
-- Name: leaderboards_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.leaderboards_user_id_seq', 56, true);


--
-- Name: leaderboards leaderboards_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.leaderboards
    ADD CONSTRAINT leaderboards_pkey PRIMARY KEY (user_id);


--
-- Name: leaderboards leaderboards_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.leaderboards
    ADD CONSTRAINT leaderboards_username_key UNIQUE (username);


--
-- PostgreSQL database dump complete
--

