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
-- Name: extra; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.extra (
    extra_id integer NOT NULL,
    name character varying(30),
    temperature_in_c integer,
    xray_quantity integer,
    gravity numeric(2,1),
    first_element text,
    rocky boolean NOT NULL,
    satelite boolean NOT NULL
);


ALTER TABLE public.extra OWNER TO freecodecamp;

--
-- Name: extra_extra_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.extra_extra_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.extra_extra_id_seq OWNER TO freecodecamp;

--
-- Name: extra_extra_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.extra_extra_id_seq OWNED BY public.extra.extra_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    temperature_in_c integer,
    xray_quantity integer,
    gravity numeric(2,1),
    first_element text,
    rocky boolean NOT NULL,
    satelite boolean NOT NULL
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
    name character varying(30),
    temperature integer,
    xray_quantity integer,
    gravity numeric(2,1),
    first_element text,
    rocky boolean NOT NULL,
    satelite boolean NOT NULL,
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    temperature integer,
    xray_quantity integer,
    gravity numeric(2,1),
    first_element text,
    rocky boolean NOT NULL,
    satelite boolean NOT NULL,
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
    name character varying(30),
    temperature integer,
    xray_quantity integer,
    gravity numeric(2,1),
    first_element text,
    rocky boolean NOT NULL,
    satelite boolean NOT NULL,
    galaxy_id integer
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
-- Name: extra extra_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra ALTER COLUMN extra_id SET DEFAULT nextval('public.extra_extra_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: extra; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.extra VALUES (1, 'Moca', 23, 4, 8.7, 'Bora', true, true);
INSERT INTO public.extra VALUES (2, 'Poco', 12, 6, 8.6, 'Carta', true, true);
INSERT INTO public.extra VALUES (3, 'Taka', 5, 8, 8.5, 'Comu', true, true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 23, 3, 9.5, 'Hidrogeno', true, false);
INSERT INTO public.galaxy VALUES (2, 'Lactea', 26, 4, 5.4, 'Helio', true, false);
INSERT INTO public.galaxy VALUES (3, 'Cigarro', 21, 2, 2.1, 'Litio', true, true);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 23, 6, 4.2, 'Berilio', true, true);
INSERT INTO public.galaxy VALUES (5, 'Negrot', 30, 7, 4.5, 'Boro', false, false);
INSERT INTO public.galaxy VALUES (6, 'Antena', 11, 8, 6.5, 'Carbono', false, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 12, 1, 2.2, 'Magnesio', false, true, 1);
INSERT INTO public.moon VALUES (2, 'Fobos', 23, 3, 2.9, 'Hierro', false, true, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 43, 5, 3.4, 'Cobalto', false, true, 3);
INSERT INTO public.moon VALUES (4, 'Io', 34, 7, 3.1, 'Niquel', false, true, 4);
INSERT INTO public.moon VALUES (5, 'Europa', 54, 8, 6.4, 'Cobre', false, true, 4);
INSERT INTO public.moon VALUES (6, 'Ganimedes', 65, 7, 2.1, 'Zinc', false, true, 5);
INSERT INTO public.moon VALUES (7, 'Calisto', 32, 5, 4.2, 'Galio', false, true, 5);
INSERT INTO public.moon VALUES (8, 'Encelado', 43, 4, 9.1, 'Germanio', false, true, 5);
INSERT INTO public.moon VALUES (9, 'Titan', 23, 3, 2.3, 'Arsenico', false, true, 6);
INSERT INTO public.moon VALUES (10, 'Rea', 43, 5, 6.5, 'Selenio', false, true, 7);
INSERT INTO public.moon VALUES (11, 'Tetis', 1, 6, 5.1, 'Bromo', false, true, 8);
INSERT INTO public.moon VALUES (12, 'Dione', 3, 7, 6.2, 'Kripton', false, true, 9);
INSERT INTO public.moon VALUES (13, 'Japeto', 4, 8, 3.8, 'Rubidio', false, true, 10);
INSERT INTO public.moon VALUES (14, 'Mimas', 23, 2, 1.1, 'Estroncio', false, true, 10);
INSERT INTO public.moon VALUES (15, 'Caronte', 44, 4, 6.6, 'Itrio', false, true, 10);
INSERT INTO public.moon VALUES (16, 'Triton', 23, 2, 4.6, 'Circonio', false, true, 3);
INSERT INTO public.moon VALUES (17, 'Miranda', 21, 23, 7.6, 'Niobio', false, true, 11);
INSERT INTO public.moon VALUES (18, 'Ariel', 23, 6, 9.8, 'Molibdeno', false, true, 11);
INSERT INTO public.moon VALUES (19, 'Oberon', 14, 8, 4.8, 'Mansoco', false, true, 1);
INSERT INTO public.moon VALUES (20, 'Titania', 16, 9, 7.4, 'Pocumo', false, true, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercurio', 23, 1, 2.5, 'Aluminio', true, false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 12, 2, 2.6, 'Silicio', true, false, 2);
INSERT INTO public.planet VALUES (3, 'Tierra', 32, 3, 5.4, 'Fosforo', true, false, 3);
INSERT INTO public.planet VALUES (4, 'Marte', 43, 5, 2.8, 'Azufre', true, false, 3);
INSERT INTO public.planet VALUES (5, 'Jupiter', 45, 7, 4.6, 'Cloro', true, false, 3);
INSERT INTO public.planet VALUES (6, 'Saturno', 3, 9, 3.6, 'Argon', true, false, 4);
INSERT INTO public.planet VALUES (7, 'Urano', 22, 6, 4.5, 'Potasio', true, false, 4);
INSERT INTO public.planet VALUES (8, 'Neptuno', 12, 5, 2.1, 'Calcio', true, false, 4);
INSERT INTO public.planet VALUES (9, 'Pluton', 32, 4, 3.4, 'Escandio', true, false, 5);
INSERT INTO public.planet VALUES (10, 'Eris', 1, 6, 4.3, 'Titanio', true, false, 6);
INSERT INTO public.planet VALUES (11, 'Haumea', 5, 3, 2.9, 'Vanadio', true, false, 6);
INSERT INTO public.planet VALUES (12, 'Makemake', 2, 3, 3.2, 'Cromo', true, false, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirio', 23, 4, 9.6, 'Nitrogeno', true, true, 1);
INSERT INTO public.star VALUES (2, 'Vega', 24, 6, 5.6, 'Oxigeno', true, true, 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 25, 8, 4.7, 'Fluor', true, true, 2);
INSERT INTO public.star VALUES (4, 'Aldebaran', 12, 5, 7.6, 'Neon', true, true, 2);
INSERT INTO public.star VALUES (5, 'Rigel', 54, 3, 6.5, 'Sodio', true, true, 3);
INSERT INTO public.star VALUES (6, 'Antares', 12, 3, 6.0, 'Magnesio', true, true, 6);


--
-- Name: extra_extra_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.extra_extra_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: extra extra_gravity_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra
    ADD CONSTRAINT extra_gravity_key UNIQUE (gravity);


--
-- Name: extra extra_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra
    ADD CONSTRAINT extra_pkey PRIMARY KEY (extra_id);


--
-- Name: galaxy galaxy_gravity_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_gravity_key UNIQUE (gravity);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_gravity_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_gravity_key UNIQUE (gravity);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_gravity_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_gravity_key UNIQUE (gravity);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_gravity_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_gravity_key UNIQUE (gravity);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

