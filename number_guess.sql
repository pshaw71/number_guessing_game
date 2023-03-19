--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: game_user; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.game_user (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.game_user OWNER TO freecodecamp;

--
-- Name: game_user_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.game_user_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.game_user_user_id_seq OWNER TO freecodecamp;

--
-- Name: game_user_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.game_user_user_id_seq OWNED BY public.game_user.user_id;


--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    date_time timestamp without time zone NOT NULL,
    number_guesses integer NOT NULL
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
-- Name: game_user user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.game_user ALTER COLUMN user_id SET DEFAULT nextval('public.game_user_user_id_seq'::regclass);


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Data for Name: game_user; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.game_user VALUES (1, 'user_1679095282938');
INSERT INTO public.game_user VALUES (2, 'user_1679095282937');
INSERT INTO public.game_user VALUES (3, 'Kevin');
INSERT INTO public.game_user VALUES (4, 'Harrod');
INSERT INTO public.game_user VALUES (5, 'user_1679096471750');
INSERT INTO public.game_user VALUES (6, 'user_1679096471749');
INSERT INTO public.game_user VALUES (7, 'user_1679096856381');
INSERT INTO public.game_user VALUES (8, 'user_1679096856380');
INSERT INTO public.game_user VALUES (9, 'user_1679096878707');
INSERT INTO public.game_user VALUES (10, 'user_1679096878706');
INSERT INTO public.game_user VALUES (11, 'John');
INSERT INTO public.game_user VALUES (12, 'user_1679096982356');
INSERT INTO public.game_user VALUES (13, 'user_1679096982355');
INSERT INTO public.game_user VALUES (14, 'user_1679162123909');
INSERT INTO public.game_user VALUES (15, 'user_1679162123908');
INSERT INTO public.game_user VALUES (16, 'user_1679162152450');
INSERT INTO public.game_user VALUES (17, 'user_1679162152449');
INSERT INTO public.game_user VALUES (18, 'user_1679162223573');
INSERT INTO public.game_user VALUES (19, 'user_1679162223572');
INSERT INTO public.game_user VALUES (20, 'Thomas');
INSERT INTO public.game_user VALUES (21, 'user_1679162386325');
INSERT INTO public.game_user VALUES (22, 'user_1679162386324');
INSERT INTO public.game_user VALUES (23, 'Nicholas');
INSERT INTO public.game_user VALUES (24, 'user_1679188177831');
INSERT INTO public.game_user VALUES (25, 'user_1679188177830');
INSERT INTO public.game_user VALUES (26, 'user_1679188698655');
INSERT INTO public.game_user VALUES (27, 'user_1679188733122');
INSERT INTO public.game_user VALUES (28, 'user_1679188733121');
INSERT INTO public.game_user VALUES (29, 'user_1679189306776');
INSERT INTO public.game_user VALUES (30, 'user_1679189306775');
INSERT INTO public.game_user VALUES (31, 'user_1679189523496');
INSERT INTO public.game_user VALUES (32, 'user_1679189523495');
INSERT INTO public.game_user VALUES (33, 'user_1679189687355');
INSERT INTO public.game_user VALUES (34, 'user_1679189687354');
INSERT INTO public.game_user VALUES (35, 'user_1679190173166');
INSERT INTO public.game_user VALUES (36, 'user_1679190173165');
INSERT INTO public.game_user VALUES (37, 'user_1679190414672');
INSERT INTO public.game_user VALUES (38, 'user_1679190414671');
INSERT INTO public.game_user VALUES (39, 'user_1679190475841');
INSERT INTO public.game_user VALUES (40, 'user_1679190475840');
INSERT INTO public.game_user VALUES (41, 'user_1679190682466');
INSERT INTO public.game_user VALUES (42, 'user_1679190682465');
INSERT INTO public.game_user VALUES (43, 'user_1679190780886');
INSERT INTO public.game_user VALUES (44, 'user_1679190780885');
INSERT INTO public.game_user VALUES (45, 'user_1679190794804');
INSERT INTO public.game_user VALUES (46, 'user_1679190794803');


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 23, '2023-03-19 01:14:10.358022', 17);
INSERT INTO public.games VALUES (2, 20, '2023-03-19 01:17:40.40043', 7);
INSERT INTO public.games VALUES (3, 26, '2023-03-19 01:18:19.798477', 474);
INSERT INTO public.games VALUES (4, 26, '2023-03-19 01:18:19.937755', 259);
INSERT INTO public.games VALUES (5, 27, '2023-03-19 01:18:53.342111', 839);
INSERT INTO public.games VALUES (6, 27, '2023-03-19 01:18:53.506698', 603);
INSERT INTO public.games VALUES (7, 28, '2023-03-19 01:18:53.739906', 779);
INSERT INTO public.games VALUES (8, 28, '2023-03-19 01:18:53.910803', 881);
INSERT INTO public.games VALUES (9, 27, '2023-03-19 01:18:54.069373', 488);
INSERT INTO public.games VALUES (10, 27, '2023-03-19 01:18:54.237887', 733);
INSERT INTO public.games VALUES (11, 27, '2023-03-19 01:18:54.377015', 211);
INSERT INTO public.games VALUES (12, 20, '2023-03-19 01:20:23.670726', 11);
INSERT INTO public.games VALUES (13, 20, '2023-03-19 01:27:06.059449', 11);
INSERT INTO public.games VALUES (14, 20, '2023-03-19 01:28:10.942287', 10);
INSERT INTO public.games VALUES (15, 29, '2023-03-19 01:28:26.955468', 60);
INSERT INTO public.games VALUES (16, 29, '2023-03-19 01:28:27.130799', 284);
INSERT INTO public.games VALUES (17, 30, '2023-03-19 01:28:27.330966', 332);
INSERT INTO public.games VALUES (18, 30, '2023-03-19 01:28:27.519165', 400);
INSERT INTO public.games VALUES (19, 29, '2023-03-19 01:28:27.686058', 38);
INSERT INTO public.games VALUES (20, 29, '2023-03-19 01:28:27.871862', 403);
INSERT INTO public.games VALUES (21, 29, '2023-03-19 01:28:28.061136', 447);
INSERT INTO public.games VALUES (22, 31, '2023-03-19 01:32:03.694291', 495);
INSERT INTO public.games VALUES (23, 31, '2023-03-19 01:32:03.960318', 960);
INSERT INTO public.games VALUES (24, 32, '2023-03-19 01:32:04.168513', 539);
INSERT INTO public.games VALUES (25, 32, '2023-03-19 01:32:04.38783', 23);
INSERT INTO public.games VALUES (26, 31, '2023-03-19 01:32:04.654382', 686);
INSERT INTO public.games VALUES (27, 31, '2023-03-19 01:32:04.90306', 631);
INSERT INTO public.games VALUES (28, 31, '2023-03-19 01:32:05.156884', 660);
INSERT INTO public.games VALUES (29, 20, '2023-03-19 01:33:18.646971', 8);
INSERT INTO public.games VALUES (30, 33, '2023-03-19 01:34:47.577139', 785);
INSERT INTO public.games VALUES (31, 33, '2023-03-19 01:34:47.820545', 657);
INSERT INTO public.games VALUES (32, 34, '2023-03-19 01:34:48.026396', 692);
INSERT INTO public.games VALUES (33, 34, '2023-03-19 01:34:48.263839', 773);
INSERT INTO public.games VALUES (34, 33, '2023-03-19 01:34:48.515456', 981);
INSERT INTO public.games VALUES (35, 33, '2023-03-19 01:34:48.73966', 387);
INSERT INTO public.games VALUES (36, 33, '2023-03-19 01:34:48.976079', 780);
INSERT INTO public.games VALUES (37, 20, '2023-03-19 01:35:40.747039', 9);
INSERT INTO public.games VALUES (38, 20, '2023-03-19 01:42:47.337465', 12);
INSERT INTO public.games VALUES (39, 35, '2023-03-19 01:42:53.345418', 98);
INSERT INTO public.games VALUES (40, 35, '2023-03-19 01:42:53.59924', 976);
INSERT INTO public.games VALUES (41, 36, '2023-03-19 01:42:53.785157', 84);
INSERT INTO public.games VALUES (42, 36, '2023-03-19 01:42:53.9988', 159);
INSERT INTO public.games VALUES (43, 35, '2023-03-19 01:42:54.219973', 411);
INSERT INTO public.games VALUES (44, 35, '2023-03-19 01:42:54.456391', 770);
INSERT INTO public.games VALUES (45, 35, '2023-03-19 01:42:54.700896', 838);
INSERT INTO public.games VALUES (46, 37, '2023-03-19 01:46:54.928322', 948);
INSERT INTO public.games VALUES (47, 37, '2023-03-19 01:46:55.183471', 789);
INSERT INTO public.games VALUES (48, 38, '2023-03-19 01:46:55.369221', 434);
INSERT INTO public.games VALUES (49, 38, '2023-03-19 01:46:55.577441', 64);
INSERT INTO public.games VALUES (50, 37, '2023-03-19 01:46:55.803985', 501);
INSERT INTO public.games VALUES (51, 37, '2023-03-19 01:46:56.033741', 409);
INSERT INTO public.games VALUES (52, 37, '2023-03-19 01:46:56.255943', 324);
INSERT INTO public.games VALUES (53, 39, '2023-03-19 01:47:56.065212', 742);
INSERT INTO public.games VALUES (54, 39, '2023-03-19 01:47:56.329773', 883);
INSERT INTO public.games VALUES (55, 40, '2023-03-19 01:47:56.545335', 939);
INSERT INTO public.games VALUES (56, 40, '2023-03-19 01:47:56.787249', 721);
INSERT INTO public.games VALUES (57, 39, '2023-03-19 01:47:57.015406', 494);
INSERT INTO public.games VALUES (58, 39, '2023-03-19 01:47:57.261502', 870);
INSERT INTO public.games VALUES (59, 39, '2023-03-19 01:47:57.471894', 165);
INSERT INTO public.games VALUES (60, 20, '2023-03-19 01:51:15.578575', 3);
INSERT INTO public.games VALUES (61, 41, '2023-03-19 01:51:22.690941', 727);
INSERT INTO public.games VALUES (62, 41, '2023-03-19 01:51:22.93203', 395);
INSERT INTO public.games VALUES (63, 42, '2023-03-19 01:51:23.139552', 673);
INSERT INTO public.games VALUES (64, 42, '2023-03-19 01:51:23.390812', 689);
INSERT INTO public.games VALUES (65, 41, '2023-03-19 01:51:23.644752', 893);
INSERT INTO public.games VALUES (66, 41, '2023-03-19 01:51:23.896691', 744);
INSERT INTO public.games VALUES (67, 41, '2023-03-19 01:51:24.119069', 204);
INSERT INTO public.games VALUES (68, 43, '2023-03-19 01:53:01.111988', 717);
INSERT INTO public.games VALUES (69, 43, '2023-03-19 01:53:01.375378', 823);
INSERT INTO public.games VALUES (70, 44, '2023-03-19 01:53:01.573602', 474);
INSERT INTO public.games VALUES (71, 44, '2023-03-19 01:53:01.793862', 225);
INSERT INTO public.games VALUES (72, 43, '2023-03-19 01:53:02.003423', 10);
INSERT INTO public.games VALUES (73, 43, '2023-03-19 01:53:02.24927', 603);
INSERT INTO public.games VALUES (74, 43, '2023-03-19 01:53:02.495836', 575);
INSERT INTO public.games VALUES (75, 45, '2023-03-19 01:53:15.018481', 622);
INSERT INTO public.games VALUES (76, 45, '2023-03-19 01:53:15.241127', 199);
INSERT INTO public.games VALUES (77, 46, '2023-03-19 01:53:15.455378', 706);
INSERT INTO public.games VALUES (78, 46, '2023-03-19 01:53:15.691335', 748);
INSERT INTO public.games VALUES (79, 45, '2023-03-19 01:53:15.927786', 540);
INSERT INTO public.games VALUES (80, 45, '2023-03-19 01:53:16.162281', 547);
INSERT INTO public.games VALUES (81, 45, '2023-03-19 01:53:16.407404', 675);


--
-- Name: game_user_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.game_user_user_id_seq', 46, true);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 81, true);


--
-- Name: game_user game_user_user_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.game_user
    ADD CONSTRAINT game_user_user_id_key UNIQUE (user_id);


--
-- Name: game_user game_user_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.game_user
    ADD CONSTRAINT game_user_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.game_user(user_id);


--
-- PostgreSQL database dump complete
--

