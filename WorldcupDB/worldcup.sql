--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(100) NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (63, 2018, 'Final', 4, 2, 395, 392);
INSERT INTO public.games VALUES (64, 2018, 'Third Place', 2, 0, 387, 394);
INSERT INTO public.games VALUES (65, 2018, 'Semi-Final', 2, 1, 392, 394);
INSERT INTO public.games VALUES (66, 2018, 'Semi-Final', 1, 0, 395, 387);
INSERT INTO public.games VALUES (67, 2018, 'Quarter-Final', 3, 2, 392, 403);
INSERT INTO public.games VALUES (68, 2018, 'Quarter-Final', 2, 0, 394, 405);
INSERT INTO public.games VALUES (69, 2018, 'Quarter-Final', 2, 1, 387, 388);
INSERT INTO public.games VALUES (70, 2018, 'Quarter-Final', 2, 0, 395, 408);
INSERT INTO public.games VALUES (71, 2018, 'Eighth-Final', 2, 1, 394, 390);
INSERT INTO public.games VALUES (72, 2018, 'Eighth-Final', 1, 0, 405, 406);
INSERT INTO public.games VALUES (73, 2018, 'Eighth-Final', 3, 2, 387, 398);
INSERT INTO public.games VALUES (74, 2018, 'Eighth-Final', 2, 0, 388, 399);
INSERT INTO public.games VALUES (75, 2018, 'Eighth-Final', 2, 1, 392, 393);
INSERT INTO public.games VALUES (76, 2018, 'Eighth-Final', 2, 1, 403, 404);
INSERT INTO public.games VALUES (77, 2018, 'Eighth-Final', 2, 1, 408, 402);
INSERT INTO public.games VALUES (78, 2018, 'Eighth-Final', 4, 3, 395, 386);
INSERT INTO public.games VALUES (79, 2014, 'Final', 1, 0, 396, 386);
INSERT INTO public.games VALUES (80, 2014, 'Third Place', 3, 0, 400, 388);
INSERT INTO public.games VALUES (81, 2014, 'Semi-Final', 1, 0, 386, 400);
INSERT INTO public.games VALUES (82, 2014, 'Semi-Final', 7, 1, 396, 388);
INSERT INTO public.games VALUES (83, 2014, 'Quarter-Final', 1, 0, 400, 391);
INSERT INTO public.games VALUES (84, 2014, 'Quarter-Final', 1, 0, 386, 387);
INSERT INTO public.games VALUES (85, 2014, 'Quarter-Final', 2, 1, 388, 390);
INSERT INTO public.games VALUES (86, 2014, 'Quarter-Final', 1, 0, 396, 395);
INSERT INTO public.games VALUES (87, 2014, 'Eighth-Final', 2, 1, 388, 389);
INSERT INTO public.games VALUES (88, 2014, 'Eighth-Final', 2, 0, 390, 408);
INSERT INTO public.games VALUES (89, 2014, 'Eighth-Final', 2, 0, 395, 401);
INSERT INTO public.games VALUES (90, 2014, 'Eighth-Final', 2, 1, 396, 385);
INSERT INTO public.games VALUES (91, 2014, 'Eighth-Final', 2, 1, 400, 399);
INSERT INTO public.games VALUES (92, 2014, 'Eighth-Final', 2, 1, 391, 397);
INSERT INTO public.games VALUES (93, 2014, 'Eighth-Final', 1, 0, 386, 406);
INSERT INTO public.games VALUES (94, 2014, 'Eighth-Final', 2, 1, 387, 407);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (385, 'Algeria');
INSERT INTO public.teams VALUES (386, 'Argentina');
INSERT INTO public.teams VALUES (387, 'Belgium');
INSERT INTO public.teams VALUES (388, 'Brazil');
INSERT INTO public.teams VALUES (389, 'Chile');
INSERT INTO public.teams VALUES (390, 'Colombia');
INSERT INTO public.teams VALUES (391, 'Costa Rica');
INSERT INTO public.teams VALUES (392, 'Croatia');
INSERT INTO public.teams VALUES (393, 'Denmark');
INSERT INTO public.teams VALUES (394, 'England');
INSERT INTO public.teams VALUES (395, 'France');
INSERT INTO public.teams VALUES (396, 'Germany');
INSERT INTO public.teams VALUES (397, 'Greece');
INSERT INTO public.teams VALUES (398, 'Japan');
INSERT INTO public.teams VALUES (399, 'Mexico');
INSERT INTO public.teams VALUES (400, 'Netherlands');
INSERT INTO public.teams VALUES (401, 'Nigeria');
INSERT INTO public.teams VALUES (402, 'Portugal');
INSERT INTO public.teams VALUES (403, 'Russia');
INSERT INTO public.teams VALUES (404, 'Spain');
INSERT INTO public.teams VALUES (405, 'Sweden');
INSERT INTO public.teams VALUES (406, 'Switzerland');
INSERT INTO public.teams VALUES (407, 'United States');
INSERT INTO public.teams VALUES (408, 'Uruguay');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 94, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 408, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);



--
-- PostgreSQL database dump complete
--
