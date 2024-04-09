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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    number_guess integer,
    times_guess integer,
    user_id integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 54, 7, 1);
INSERT INTO public.games VALUES (2, 7, 7, 11);
INSERT INTO public.games VALUES (3, 17, 17, 11);
INSERT INTO public.games VALUES (4, 70, 70, 12);
INSERT INTO public.games VALUES (5, 97, 97, 12);
INSERT INTO public.games VALUES (6, 83, 85, 11);
INSERT INTO public.games VALUES (7, 56, 56, 11);
INSERT INTO public.games VALUES (8, 82, 82, 11);
INSERT INTO public.games VALUES (9, 45, 45, 13);
INSERT INTO public.games VALUES (10, 84, 84, 13);
INSERT INTO public.games VALUES (11, 92, 92, 14);
INSERT INTO public.games VALUES (12, 86, 86, 14);
INSERT INTO public.games VALUES (13, 87, 89, 13);
INSERT INTO public.games VALUES (14, 65, 65, 13);
INSERT INTO public.games VALUES (15, 71, 71, 13);
INSERT INTO public.games VALUES (16, 64, 7, 1);
INSERT INTO public.games VALUES (17, 58, 58, 15);
INSERT INTO public.games VALUES (18, 1, 1, 15);
INSERT INTO public.games VALUES (19, 12, 12, 16);
INSERT INTO public.games VALUES (20, 79, 79, 16);
INSERT INTO public.games VALUES (21, 97, 99, 15);
INSERT INTO public.games VALUES (22, 74, 74, 15);
INSERT INTO public.games VALUES (23, 93, 93, 15);
INSERT INTO public.games VALUES (24, 62, 8, 1);
INSERT INTO public.games VALUES (25, 527, 528, 17);
INSERT INTO public.games VALUES (26, 755, 756, 17);
INSERT INTO public.games VALUES (27, 188, 189, 18);
INSERT INTO public.games VALUES (28, 489, 490, 18);
INSERT INTO public.games VALUES (29, 323, 326, 17);
INSERT INTO public.games VALUES (30, 462, 463, 17);
INSERT INTO public.games VALUES (31, 530, 531, 17);
INSERT INTO public.games VALUES (32, 634, 635, 19);
INSERT INTO public.games VALUES (33, 848, 849, 19);
INSERT INTO public.games VALUES (34, 7, 8, 20);
INSERT INTO public.games VALUES (35, 265, 266, 20);
INSERT INTO public.games VALUES (36, 191, 194, 19);
INSERT INTO public.games VALUES (37, 703, 704, 19);
INSERT INTO public.games VALUES (38, 839, 840, 19);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'chang');
INSERT INTO public.users VALUES (2, 'liu');
INSERT INTO public.users VALUES (3, 'user_1712658691020');
INSERT INTO public.users VALUES (4, 'user_1712658691019');
INSERT INTO public.users VALUES (5, 'user_1712659917944');
INSERT INTO public.users VALUES (6, 'user_1712659917943');
INSERT INTO public.users VALUES (7, 'user_1712659990255');
INSERT INTO public.users VALUES (8, 'user_1712659990254');
INSERT INTO public.users VALUES (9, 'user_1712661071171');
INSERT INTO public.users VALUES (10, 'user_1712661071170');
INSERT INTO public.users VALUES (11, 'user_1712661143526');
INSERT INTO public.users VALUES (12, 'user_1712661143525');
INSERT INTO public.users VALUES (13, 'user_1712662698504');
INSERT INTO public.users VALUES (14, 'user_1712662698503');
INSERT INTO public.users VALUES (15, 'user_1712662737029');
INSERT INTO public.users VALUES (16, 'user_1712662737028');
INSERT INTO public.users VALUES (17, 'user_1712662869946');
INSERT INTO public.users VALUES (18, 'user_1712662869945');
INSERT INTO public.users VALUES (19, 'user_1712662920651');
INSERT INTO public.users VALUES (20, 'user_1712662920650');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 38, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 20, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

