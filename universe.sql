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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text,
    mass integer,
    distance_from_earth integer
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_hole_black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_hole_black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_hole_black_hole_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description character varying(60) NOT NULL,
    galaxy_type character varying(20) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    stars integer NOT NULL,
    has_black_holes boolean NOT NULL
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
    name character varying(40) NOT NULL,
    description character varying(60) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    is_natural boolean NOT NULL,
    ratio_in_km integer NOT NULL,
    planet_id integer NOT NULL
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
    name character varying(40) NOT NULL,
    description character varying(60) NOT NULL,
    planet_type character varying(20) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth numeric(18,1) NOT NULL,
    has_life boolean NOT NULL,
    star_id integer NOT NULL
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
    description character varying(60) NOT NULL,
    star_type character varying(20) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth numeric(18,1) NOT NULL,
    galaxy_id integer NOT NULL
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
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_hole_black_hole_id_seq'::regclass);


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
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (1, 'fist', 'first black hole', 4676, 4678);
INSERT INTO public.black_hole VALUES (2, 'second', 'second black hole', 9835, 3762);
INSERT INTO public.black_hole VALUES (3, 'third', 'third black hole', 1234, 24532);
INSERT INTO public.black_hole VALUES (4, 'fourth', 'fourth black hole', 8764, 4334);
INSERT INTO public.black_hole VALUES (5, 'fifth', 'fifth black hole', 5554, 99872);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'É a galaxia espieral mais próxima
da Via Láctea', 'Espiral', 10000000, 2540000, true);
INSERT INTO public.galaxy VALUES (2, 'Grande Nuvem de Magalhães', 'Uma galáxia Anã', 'Anã', 100000, 1000000000, true);
INSERT INTO public.galaxy VALUES (3, 'Galáxia do Rodamoinho', 'Uma galáxia Espiral', 'Espiral', 4260700, 50600000, true);
INSERT INTO public.galaxy VALUES (4, 'Galáxia de Pégasus', 'Uma galáxia Anã', 'Anã', 7854212, 987528, false);
INSERT INTO public.galaxy VALUES (5, 'Galáxia de Rosse', 'Uma galáxia Irregular', 'Irregulares', 321456, 745896, false);
INSERT INTO public.galaxy VALUES (6, 'Centaurus', 'Uma galáxia Elíptica', 'Elípticas', 258963, 3215486, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (21, 'moon1', 'moon', 34875, true, 4952, 2);
INSERT INTO public.moon VALUES (22, 'moon2', 'moon2', 23873, false, 3251, 8);
INSERT INTO public.moon VALUES (23, 'moon3', 'moon3', 23942, false, 4521, 10);
INSERT INTO public.moon VALUES (24, 'moon4', 'moon4', 2325, true, 23524, 12);
INSERT INTO public.moon VALUES (25, 'moon5', 'moon5', 5464, false, 6545, 11);
INSERT INTO public.moon VALUES (26, 'moon15', 'moon', 3543, true, 4213, 8);
INSERT INTO public.moon VALUES (27, 'moon16', 'moon2', 23873, false, 3251, 15);
INSERT INTO public.moon VALUES (28, 'moon17', 'moon3', 23942, false, 4521, 16);
INSERT INTO public.moon VALUES (29, 'moon18', 'moon4', 2325, true, 23524, 14);
INSERT INTO public.moon VALUES (30, 'moon19', 'moon5', 5464, false, 6545, 14);
INSERT INTO public.moon VALUES (31, 'moon12', 'moon', 3543, true, 4213, 8);
INSERT INTO public.moon VALUES (32, 'moon13', 'moon2', 23873, false, 3251, 12);
INSERT INTO public.moon VALUES (33, 'moon14', 'moon3', 23942, false, 4521, 16);
INSERT INTO public.moon VALUES (34, 'moon22', 'moon4', 2325, true, 23524, 7);
INSERT INTO public.moon VALUES (35, 'moon25', 'moon5', 6547, false, 7457, 9);
INSERT INTO public.moon VALUES (36, 'moon105', 'sailor moon', 8523, false, 9853, 10);
INSERT INTO public.moon VALUES (37, 'moon24', 'sober moon', 7458, false, 753, 10);
INSERT INTO public.moon VALUES (38, 'moon145', 'galactica moon', 9632, false, 421, 3);
INSERT INTO public.moon VALUES (39, 'moon222', 'mo467', 2659, true, 721, 2);
INSERT INTO public.moon VALUES (40, 'moon251', 'moon245', 6325, true, 7253, 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'Plutão', 'Um planeta Anão', 'Anão', 8000, 100.1, true, 2);
INSERT INTO public.planet VALUES (3, 'Haumea', 'Um planeta gasoso', 'Exoplaneta', 2200, 8000.1, false, 1);
INSERT INTO public.planet VALUES (7, 'Kepler-10', 'Um planeta acquoso', 'Exoplaneta', 3560, 45600.1, true, 4);
INSERT INTO public.planet VALUES (8, 'Terra', 'Planeta Azul', 'Planeta Terra', 4500, 0.0, true, 1);
INSERT INTO public.planet VALUES (9, 'Kepler-B', 'Um planeta inóspito', 'Exoplaneta', 5874, 87534.1, true, 4);
INSERT INTO public.planet VALUES (10, 'Marte', 'Planeta Vermelho', 'Planeta Rochoso', 9854, 38475.0, false, 7);
INSERT INTO public.planet VALUES (11, 'Gastrix', 'Um planeta inóspito', 'Exoplaneta', 9845, 9853.1, true, 1);
INSERT INTO public.planet VALUES (12, 'Jupiter', 'Planeta cheio de furacões', 'Planeta acquoso', 4785, 87565.0, false, 2);
INSERT INTO public.planet VALUES (13, 'Kepler-10b', 'Segundo menor planeta', 'Planeta anão', 5986, 43596.0, false, 7);
INSERT INTO public.planet VALUES (14, 'Ogle-2005', 'O exoplaneta mais frio', 'Planeta anão frio', 10953, 98345.0, false, 5);
INSERT INTO public.planet VALUES (15, 'Trisuns', 'Um planeta com três sóis', 'Exoplaneta', 5896, 10095.7, true, 7);
INSERT INTO public.planet VALUES (16, 'Mercúrio', 'Planeta de Lava, mais próximo ao sol', 'Planeta Rochoso', 8754, 87565.0, true, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Estrela1', 'Possui um brilho muito forte', 'Anã Branca', 2000, 564000.3, 1);
INSERT INTO public.star VALUES (2, 'Estrela2', 'Possui um brilho forte', 'Anã Vermelha', 244, 9874.2, 1);
INSERT INTO public.star VALUES (4, 'Estrela3', 'Vermelho sangue, maior estrela da galáxia Andromeda', 'Super Nova Vermelha', 8223, 15000.0, 1);
INSERT INTO public.star VALUES (5, 'Estrela4', 'Vermelho sangue, maior estrela do universo observavel', 'Super Nova Branca', 10000, 9045555.0, 3);
INSERT INTO public.star VALUES (6, 'Estrela5', 'Menor estrela do universo observavel', 'Anã Branca', 2099, 4754.8, 4);
INSERT INTO public.star VALUES (7, 'Estrela6', 'Exibe um brilho poderoso, pode ser visto da Terra', 'Qasar em formação', 2985, 475543.4, 5);


--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_hole_black_hole_id_seq', 5, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 40, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 16, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


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
-- Name: black_hole name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT name UNIQUE (name);


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
-- Name: star galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);