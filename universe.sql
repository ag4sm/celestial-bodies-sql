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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description character varying(30) NOT NULL,
    age_in_millions_years numeric,
    planet_id integer,
    star_id integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL,
    has_life boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: nebula; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.nebula (
    nebula_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description character varying(50) NOT NULL
);


ALTER TABLE public.nebula OWNER TO freecodecamp;

--
-- Name: nebula_nebula_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.nebula_nebula_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nebula_nebula_id_seq OWNER TO freecodecamp;

--
-- Name: nebula_nebula_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.nebula_nebula_id_seq OWNED BY public.nebula.nebula_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description character varying(30) NOT NULL,
    num_of_moons integer,
    has_life boolean,
    moon_id integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    light_years_distance integer,
    description character varying(30)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: nebula nebula_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebula ALTER COLUMN nebula_id SET DEFAULT nextval('public.nebula_nebula_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'our home galaxy', 33000, 5, NULL);
INSERT INTO public.galaxy VALUES (4, 'Andromeda', 'Queen of Greece', 152000, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Black Eye Galaxy', 'looks like a black eye', 650000, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Cartwheel Galaxy', 'looks like a cart wheel', 352000, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'Centaurus A', 'looks very interesting', 400000, NULL, NULL);
INSERT INTO public.galaxy VALUES (8, 'Ciricinus', 'small faint galaxy', 400000, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Earth moon', 'our favorite rock', false, 5);
INSERT INTO public.moon VALUES (2, 'Metis', 'Jupiter moon 1', false, 7);
INSERT INTO public.moon VALUES (3, 'Adrastia', 'Jupiter moon 2', false, 7);
INSERT INTO public.moon VALUES (4, 'Amalthea', 'Jupiter moon 3', false, 7);
INSERT INTO public.moon VALUES (5, 'Thebe', 'Jupiter moon 4', false, 7);
INSERT INTO public.moon VALUES (6, 'Dione', 'Saturn moon', false, 8);
INSERT INTO public.moon VALUES (7, 'Encladaus', 'Saturn moon', false, 8);
INSERT INTO public.moon VALUES (8, 'Hyperion', 'Saturn moon', false, 8);
INSERT INTO public.moon VALUES (9, 'Iapetus', 'Saturn moon', false, 8);
INSERT INTO public.moon VALUES (10, 'Mimas', 'Saturn moon', false, 8);
INSERT INTO public.moon VALUES (11, 'Phoebe', 'Saturn moon', false, 8);
INSERT INTO public.moon VALUES (12, 'Rhea', 'Saturn moon', false, 8);
INSERT INTO public.moon VALUES (13, 'Tethys', 'Saturn moon', false, 8);
INSERT INTO public.moon VALUES (14, 'Titan', 'Saturn moon', false, 8);
INSERT INTO public.moon VALUES (15, 'Aerial', 'Uranus moon', false, 9);
INSERT INTO public.moon VALUES (16, 'Miranda', 'Uranus moon', false, 9);
INSERT INTO public.moon VALUES (17, 'Oberon', 'Uranus moon', false, 9);
INSERT INTO public.moon VALUES (18, 'Titania', 'Uranus moon', false, 9);
INSERT INTO public.moon VALUES (19, 'Umberial', 'Uranus moon', false, 9);
INSERT INTO public.moon VALUES (20, 'Nerid', 'Neptune moon', false, 10);
INSERT INTO public.moon VALUES (21, 'Triton', 'Neptune moon', false, 10);


--
-- Data for Name: nebula; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.nebula VALUES (1, 'Horse Head', 'looks like a horse head');
INSERT INTO public.nebula VALUES (2, 'Planetary Nebula', 'looks like a planet');
INSERT INTO public.nebula VALUES (3, 'Dumbbell', 'wide at each end but narrow in the middle');
INSERT INTO public.nebula VALUES (4, 'Gum', 'not sure on this one');
INSERT INTO public.nebula VALUES (5, 'Ngc 1501', 'not sure on this one');
INSERT INTO public.nebula VALUES (6, 'Ring', 'looks like a ring');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (3, 'Mercury', 'closest to the sun', 0, false, NULL, 1);
INSERT INTO public.planet VALUES (4, 'Venus', 'second planet in Milky way', 0, false, NULL, 1);
INSERT INTO public.planet VALUES (5, 'Earth', 'our home', 1, true, NULL, 1);
INSERT INTO public.planet VALUES (6, 'Mars', 'we are exploring this planet', 0, false, NULL, 1);
INSERT INTO public.planet VALUES (7, 'Jupiter', 'our biggest planet', 4, false, NULL, 1);
INSERT INTO public.planet VALUES (8, 'Saturn', 'has big rings', 5, false, NULL, 1);
INSERT INTO public.planet VALUES (9, 'Uranis', 'pronounced urinis', 0, false, NULL, 1);
INSERT INTO public.planet VALUES (10, 'Neptune', 'dont know much about it', 0, false, NULL, 1);
INSERT INTO public.planet VALUES (11, 'Pluto', 'still a planet to me', 0, false, NULL, 1);
INSERT INTO public.planet VALUES (12, 'Pluto Junior', 'still a planet to me', 0, true, NULL, 1);
INSERT INTO public.planet VALUES (13, 'Earth Junior', 'still a planet to me', 0, true, NULL, 1);
INSERT INTO public.planet VALUES (14, 'Mars Junior', 'still a planet to me', 0, false, NULL, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, NULL, NULL);
INSERT INTO public.star VALUES (2, '', 4, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Alpharetz', 4, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Mirach', 4, NULL, NULL);
INSERT INTO public.star VALUES (5, 'And', 4, NULL, NULL);
INSERT INTO public.star VALUES (6, 'ecrus', 6, NULL, NULL);
INSERT INTO public.star VALUES (7, 'Adhil', 6, NULL, NULL);
INSERT INTO public.star VALUES (8, 'Ain', 6, NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: nebula_nebula_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.nebula_nebula_id_seq', 6, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: galaxy galaxy_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_description_key UNIQUE (description);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: nebula nebula_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebula
    ADD CONSTRAINT nebula_name_key UNIQUE (name);


--
-- Name: nebula nebula_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebula
    ADD CONSTRAINT nebula_name_key1 UNIQUE (name);


--
-- Name: nebula nebula_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebula
    ADD CONSTRAINT nebula_pkey PRIMARY KEY (nebula_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy galaxy_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

