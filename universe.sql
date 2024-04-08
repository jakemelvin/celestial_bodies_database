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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: blackhole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackhole (
    blackhole_id integer NOT NULL,
    name character varying(40) NOT NULL,
    type character varying(60)
);


ALTER TABLE public.blackhole OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.blackhole_blackhole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blackhole_blackhole_id_seq OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.blackhole_blackhole_id_seq OWNED BY public.blackhole.blackhole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text,
    nombre_etoiles numeric,
    type character varying(40)
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
    planet_id integer,
    name character varying(40) NOT NULL,
    has_life boolean,
    composition character varying(60)
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
    star_id integer,
    name character varying(40) NOT NULL,
    temperature_en_celcius integer,
    masse_en_masse_terrestre integer,
    has_life boolean
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
    name character varying(40) NOT NULL,
    masse_en_masse_solaire integer,
    luminosite_en_luminosite_solaire numeric,
    temperature_en_kelvin integer,
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
-- Name: blackhole blackhole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole ALTER COLUMN blackhole_id SET DEFAULT nextval('public.blackhole_blackhole_id_seq'::regclass);


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
-- Data for Name: blackhole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackhole VALUES (1, 'Sagittarius A', 'Trou noir de Kerr supermassif');
INSERT INTO public.blackhole VALUES (2, 'Messier 87', 'Trou noir de Kerr supermassif');
INSERT INTO public.blackhole VALUES (3, 'V616 Monocerotis', 'Trou noir de Schwarzschild');
INSERT INTO public.blackhole VALUES (4, 'GRO J1655-40', 'Trou noir de Schwarzschild');
INSERT INTO public.blackhole VALUES (5, 'Cygnus X-1', 'Trou noir de Kerr');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Voie lactée', 'Une galaxie spirale barrée avec un bulbe central proéminent et quatre bras spiraux principaux. Elle contient notre système solaire.', 250000000000, 'Spirale barrée');
INSERT INTO public.galaxy VALUES (2, 'Galaxie dAndromède', 'La galaxie spirale la plus proche de la Voie lactée, visible à lœil nu dans un ciel sombre. Elle est légèrement plus grande que la Voie lactée.', 1000000000, 'Spirale');
INSERT INTO public.galaxy VALUES (3, 'Galaxie du Triangle', 'Une galaxie spirale triangulaire, la troisième plus grande galaxie du Groupe local. Elle est connue pour ses nombreuses régions de formation détoiles.', 30000000000, 'Spirale');
INSERT INTO public.galaxy VALUES (4, 'Galaxie du Sombrero', 'Une galaxie spirale lenticulaire avec un bulge central proéminent et un disque aplati. Elle est connue pour son anneau de poussière et de gaz.', 1000000000, 'Spirale lenticulaire');
INSERT INTO public.galaxy VALUES (5, 'Galaxie des Cinq Cents Nuages Bleus', 'Une galaxie irrégulière naine avec un grand nombre de nébuleuses à émission, lui donnant une apparence bleue.', 10000000000, 'Irrégulière');
INSERT INTO public.galaxy VALUES (6, 'Galaxie Cartwheel', 'Une galaxie lenticulaire avec une structure en anneau unique, résultat dune collision avec une autre galaxie.', 100000000000, 'Anneau polaire');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, 'VY Canis Majoris b I', false, 'Roche et glace');
INSERT INTO public.moon VALUES (2, 1, 'VY Canis Majoris b II', true, 'Glace et hydrocarbures');
INSERT INTO public.moon VALUES (3, 2, 'VY Canis Majoris c I', false, 'Roche et métal');
INSERT INTO public.moon VALUES (4, 2, 'VY Canis Majoris c II', true, 'Glace et océan subglaciaire');
INSERT INTO public.moon VALUES (5, 3, 'S Andromedae b I', false, 'Roche et glace');
INSERT INTO public.moon VALUES (6, 3, 'S Andromedae b II', true, 'Glace et hydrocarbures');
INSERT INTO public.moon VALUES (7, 4, 'S Andromedae c I', false, 'Roche et métal');
INSERT INTO public.moon VALUES (8, 4, 'S Andromedae c II', true, 'Glace et océan subglaciaire');
INSERT INTO public.moon VALUES (9, 5, 'R Trianguli b I', false, 'Roche et glace');
INSERT INTO public.moon VALUES (10, 5, 'R Trianguli b II', true, 'Glace et hydrocarbures');
INSERT INTO public.moon VALUES (11, 6, 'R Trianguli c I', false, 'Roche et métal');
INSERT INTO public.moon VALUES (12, 6, 'R Trianguli c II', true, 'Glace et océan subglaciaire');
INSERT INTO public.moon VALUES (13, 7, 'Sombrero Galaxy Nucleus b I', false, 'Roche et glace');
INSERT INTO public.moon VALUES (14, 7, 'Sombrero Galaxy Nucleus b II', true, 'Glace et hydrocarbures');
INSERT INTO public.moon VALUES (15, 8, 'Sombrero Galaxy Nucleus c I', false, 'Roche et métal');
INSERT INTO public.moon VALUES (16, 8, 'Sombrero Galaxy Nucleus c II', true, 'Glace et océan subglaciaire');
INSERT INTO public.moon VALUES (17, 9, 'NGC 5253-A b I', false, 'Roche et glace');
INSERT INTO public.moon VALUES (18, 9, 'NGC 5253-A b II', true, 'Glace et hydrocarbures');
INSERT INTO public.moon VALUES (19, 10, 'NGC 5253-A c I', false, 'Roche et métal');
INSERT INTO public.moon VALUES (20, 10, 'NGC 5253-A c II', true, 'Glace et océan subglaciaire');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 'VY Canis Majoris b', 200, 10, false);
INSERT INTO public.planet VALUES (2, 1, 'VY Canis Majoris c', 100, 5, false);
INSERT INTO public.planet VALUES (3, 2, 'S Andromedae b', 300, 15, false);
INSERT INTO public.planet VALUES (4, 2, 'S Andromedae c', 200, 8, false);
INSERT INTO public.planet VALUES (5, 3, 'R Trianguli b', 50, 3, false);
INSERT INTO public.planet VALUES (6, 3, 'R Trianguli c', 0, 2, false);
INSERT INTO public.planet VALUES (7, 4, 'Sombrero Galaxy Nucleus b', 1000, 100, false);
INSERT INTO public.planet VALUES (8, 4, 'Sombrero Galaxy Nucleus c', 500, 50, false);
INSERT INTO public.planet VALUES (9, 5, 'NGC 5253-A b', 1000, 5, false);
INSERT INTO public.planet VALUES (10, 5, 'NGC 5253-A c', 500, 3, false);
INSERT INTO public.planet VALUES (11, 6, 'Cartwheel Galaxy Nucleus b', 2000, 1000, false);
INSERT INTO public.planet VALUES (12, 6, 'Cartwheel Galaxy Nucleus c', 1000, 500, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'VY Canis Majoris', 25, 400000, 3500, 1);
INSERT INTO public.star VALUES (2, 'S Andromedae', 30, 10000000, 9000, 2);
INSERT INTO public.star VALUES (3, 'R Trianguli', 6, 5000, 2700, 3);
INSERT INTO public.star VALUES (4, 'Sombrero Galaxy Nucleus', 1000000000, 10000000000, NULL, 4);
INSERT INTO public.star VALUES (5, 'NGC 5253-A', 10, 100000, 30000, 5);
INSERT INTO public.star VALUES (6, 'Cartwheel Galaxy Nucleus', 100000000, 100000000000, NULL, 6);


--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.blackhole_blackhole_id_seq', 5, true);


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
-- Name: blackhole blackhole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_pkey PRIMARY KEY (blackhole_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: blackhole unique_blackhole; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT unique_blackhole UNIQUE (blackhole_id);


--
-- Name: galaxy unique_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy UNIQUE (galaxy_id);


--
-- Name: moon unique_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon UNIQUE (moon_id);


--
-- Name: planet unique_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet UNIQUE (planet_id);


--
-- Name: star unique_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star UNIQUE (star_id);


--
-- Name: star fk_galaxy_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_star FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_moon; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_moon FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_planet FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

