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
-- Name: asteroids; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroids (
    asteroids_id integer NOT NULL,
    name character varying(30) NOT NULL,
    potencially_hazardous boolean NOT NULL,
    explored boolean NOT NULL,
    discovered integer
);


ALTER TABLE public.asteroids OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    expanding_velocity integer,
    number_of_stars integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    radius integer,
    planet_id integer,
    distance_to_planet integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    radius integer,
    age numeric(4,1),
    has_life boolean NOT NULL,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_to_earth integer,
    solar_radius integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: asteroids; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroids VALUES (1, 'Bennu', true, true, 1999);
INSERT INTO public.asteroids VALUES (2, 'Mathilde', false, false, 1885);
INSERT INTO public.asteroids VALUES (3, 'Chariklo', false, false, 1997);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Canis Major Dwarf', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Cygnus A', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Magellanic Clouds', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Virgo A', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1731, 1, 385);
INSERT INTO public.moon VALUES (2, 'Phobos', 11267, 4, 6);
INSERT INTO public.moon VALUES (3, 'Deimos', 6, 4, 23);
INSERT INTO public.moon VALUES (4, 'Charon', 606, 9, 19);
INSERT INTO public.moon VALUES (5, 'Ganymede', 2634, 5, 1070);
INSERT INTO public.moon VALUES (6, 'Europa', 1560, 5, 671);
INSERT INTO public.moon VALUES (7, 'Io', 1815, 5, 421);
INSERT INTO public.moon VALUES (8, 'Callisto', 4800, 5, 1883);
INSERT INTO public.moon VALUES (9, 'Enceladus', 252, 6, 283);
INSERT INTO public.moon VALUES (10, 'Titan', 2574, 6, 1200);
INSERT INTO public.moon VALUES (11, 'Epimetheus', 58, 6, 151);
INSERT INTO public.moon VALUES (12, 'Hyperion', 135, 6, 1500);
INSERT INTO public.moon VALUES (13, 'Tethys', 531, 6, 295);
INSERT INTO public.moon VALUES (14, 'Pandora', 41, 6, 142);
INSERT INTO public.moon VALUES (15, 'Ariel', 578, 8, 190);
INSERT INTO public.moon VALUES (16, 'Titania', 788, 8, 435);
INSERT INTO public.moon VALUES (17, 'Umbriel', 584, 8, 166);
INSERT INTO public.moon VALUES (18, 'Rosalind', 36, 8, 69);
INSERT INTO public.moon VALUES (19, 'Triton', 1353, 7, 354);
INSERT INTO public.moon VALUES (20, 'Larissa', 97, 7, 48);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 6371, 4.5, true, 1);
INSERT INTO public.planet VALUES (2, 'Mercury', 2439, 4.5, false, 1);
INSERT INTO public.planet VALUES (3, 'Venus', 6051, 4.5, false, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 3389, 4.6, false, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 69911, 4.6, false, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 58232, 4.5, false, 1);
INSERT INTO public.planet VALUES (7, 'Neptun', 24622, 4.5, false, 1);
INSERT INTO public.planet VALUES (8, 'Uranus', 25362, 4.5, false, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 1188, 4.6, false, 1);
INSERT INTO public.planet VALUES (10, 'Orcus', 479, 4.6, false, 1);
INSERT INTO public.planet VALUES (11, 'Gonggong', 1230, 4.6, false, 1);
INSERT INTO public.planet VALUES (12, 'Makemake', 715, 4.6, false, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'UY Scuti', 5100, 1708, 1);
INSERT INTO public.star VALUES (3, 'VY Canis Majoris', 3913, 1420, 1);
INSERT INTO public.star VALUES (4, 'RW Cephei', 29000, 1158, 1);
INSERT INTO public.star VALUES (5, 'V354 Cephei', 15000, 685, 1);
INSERT INTO public.star VALUES (6, 'KY Cygni', 500, 1420, 1);
INSERT INTO public.star VALUES (1, 'Sun', 1, 1, 1);


--
-- Name: asteroids asteroids_asteroids_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroids
    ADD CONSTRAINT asteroids_asteroids_id_key UNIQUE (asteroids_id);


--
-- Name: asteroids asteroids_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroids
    ADD CONSTRAINT asteroids_name_key UNIQUE (name);


--
-- Name: asteroids asteroids_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroids
    ADD CONSTRAINT asteroids_pkey PRIMARY KEY (asteroids_id);


--
-- Name: galaxy galaxy_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_description_key UNIQUE (description);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


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
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


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

