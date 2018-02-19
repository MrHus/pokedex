--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.6
-- Dumped by pg_dump version 9.6.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: evolution; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE evolution (
    id bigint NOT NULL,
    tier integer,
    chain integer,
    version integer
);


ALTER TABLE evolution OWNER TO postgres;

--
-- Name: evolution_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE evolution_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE evolution_id_seq OWNER TO postgres;

--
-- Name: evolution_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE evolution_id_seq OWNED BY evolution.id;


--
-- Name: pokemon; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE pokemon (
    id bigint NOT NULL,
    evolution_id bigint NOT NULL,
    name character varying(50),
    height integer,
    weight integer,
    version integer
);


ALTER TABLE pokemon OWNER TO postgres;

--
-- Name: pokemon_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE pokemon_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pokemon_id_seq OWNER TO postgres;

--
-- Name: pokemon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE pokemon_id_seq OWNED BY pokemon.id;


--
-- Name: pokemon_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE pokemon_type (
    id bigint NOT NULL,
    pokemon_id bigint NOT NULL,
    type_id bigint NOT NULL,
    seq integer,
    version integer
);


ALTER TABLE pokemon_type OWNER TO postgres;

--
-- Name: pokemon_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE pokemon_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pokemon_type_id_seq OWNER TO postgres;

--
-- Name: pokemon_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE pokemon_type_id_seq OWNED BY pokemon_type.id;


--
-- Name: sprite; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE sprite (
    id bigint NOT NULL,
    pokemon_id bigint NOT NULL,
    front character varying(255),
    back character varying(255),
    version integer
);


ALTER TABLE sprite OWNER TO postgres;

--
-- Name: sprite_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sprite_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sprite_id_seq OWNER TO postgres;

--
-- Name: sprite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE sprite_id_seq OWNED BY sprite.id;


--
-- Name: stat; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE stat (
    id bigint NOT NULL,
    pokemon_id bigint NOT NULL,
    name character varying(20),
    value integer,
    version integer
);


ALTER TABLE stat OWNER TO postgres;

--
-- Name: stat_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE stat_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE stat_id_seq OWNER TO postgres;

--
-- Name: stat_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE stat_id_seq OWNED BY stat.id;


--
-- Name: type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE type (
    id bigint NOT NULL,
    name character varying(20),
    version integer
);


ALTER TABLE type OWNER TO postgres;

--
-- Name: type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE type_id_seq OWNER TO postgres;

--
-- Name: type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE type_id_seq OWNED BY type.id;


--
-- Name: evolution id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY evolution ALTER COLUMN id SET DEFAULT nextval('evolution_id_seq'::regclass);


--
-- Name: pokemon id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pokemon ALTER COLUMN id SET DEFAULT nextval('pokemon_id_seq'::regclass);


--
-- Name: pokemon_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pokemon_type ALTER COLUMN id SET DEFAULT nextval('pokemon_type_id_seq'::regclass);


--
-- Name: sprite id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sprite ALTER COLUMN id SET DEFAULT nextval('sprite_id_seq'::regclass);


--
-- Name: stat id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY stat ALTER COLUMN id SET DEFAULT nextval('stat_id_seq'::regclass);


--
-- Name: type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY type ALTER COLUMN id SET DEFAULT nextval('type_id_seq'::regclass);

--
-- Data for Name: evolution; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO evolution (id, tier, chain, version) VALUES (1, 1, 1, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (2, 1, 2, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (3, 1, 3, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (4, 2, 4, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (5, 2, 5, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (6, 2, 6, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (7, 3, 7, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (8, 3, 8, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (9, 3, 9, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (10, 4, 10, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (11, 4, 11, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (12, 4, 12, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (13, 5, 13, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (14, 5, 14, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (15, 5, 15, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (16, 6, 16, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (17, 6, 17, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (18, 6, 18, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (19, 7, 19, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (20, 7, 20, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (21, 8, 21, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (22, 8, 22, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (23, 9, 23, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (24, 9, 24, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (25, 10, 26, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (26, 10, 27, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (27, 11, 28, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (28, 11, 29, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (29, 12, 30, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (30, 12, 31, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (31, 12, 32, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (32, 13, 33, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (33, 13, 34, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (34, 13, 35, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (35, 14, 37, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (36, 14, 38, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (37, 15, 39, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (38, 15, 40, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (39, 16, 42, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (40, 16, 43, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (41, 17, 44, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (42, 17, 45, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (43, 18, 47, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (44, 18, 48, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (45, 18, 49, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (46, 19, 51, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (47, 19, 52, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (48, 20, 53, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (49, 20, 54, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (50, 21, 55, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (51, 21, 56, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (52, 22, 57, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (53, 22, 58, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (54, 23, 59, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (55, 23, 60, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (56, 24, 61, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (57, 24, 62, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (58, 25, 63, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (59, 25, 64, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (60, 26, 65, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (61, 26, 66, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (62, 26, 67, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (63, 27, 69, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (64, 27, 70, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (65, 27, 71, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (66, 28, 72, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (67, 28, 73, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (68, 28, 74, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (69, 29, 75, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (70, 29, 76, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (71, 29, 77, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (72, 30, 78, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (73, 30, 79, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (74, 31, 80, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (75, 31, 81, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (76, 31, 82, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (77, 32, 83, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (78, 32, 84, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (79, 33, 85, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (80, 33, 86, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (81, 34, 88, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (82, 34, 89, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (83, 35, 91, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (84, 36, 92, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (85, 36, 93, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (86, 37, 94, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (87, 37, 95, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (88, 38, 96, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (89, 38, 97, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (90, 39, 98, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (91, 39, 99, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (92, 40, 100, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (93, 40, 101, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (94, 40, 102, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (95, 41, 103, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (96, 42, 105, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (97, 42, 106, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (98, 43, 107, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (99, 43, 108, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (100, 44, 109, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (101, 44, 110, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (102, 45, 111, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (103, 45, 112, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (104, 46, 113, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (105, 46, 114, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (106, 47, 116, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (107, 47, 117, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (108, 48, 119, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (109, 49, 121, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (110, 49, 122, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (111, 50, 123, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (112, 50, 124, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (113, 51, 127, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (114, 52, 129, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (115, 53, 131, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (116, 54, 132, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (117, 54, 133, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (118, 55, 135, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (119, 55, 136, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (120, 56, 137, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (121, 56, 138, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (122, 57, 140, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (123, 58, 141, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (124, 59, 144, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (125, 60, 146, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (126, 61, 149, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (127, 62, 151, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (128, 63, 152, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (129, 64, 153, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (130, 64, 154, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (131, 65, 155, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (132, 66, 156, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (133, 67, 157, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (134, 67, 158, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (135, 67, 159, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (136, 67, 160, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (137, 68, 166, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (138, 69, 169, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (139, 69, 170, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (140, 70, 171, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (141, 70, 172, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (142, 71, 173, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (143, 72, 175, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (144, 73, 176, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (145, 74, 177, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (146, 75, 178, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (147, 76, 179, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (148, 76, 180, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (149, 76, 181, 0);
INSERT INTO evolution (id, tier, chain, version) VALUES (150, 77, 182, 0);


--
-- Name: evolution_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('evolution_id_seq', 150, true);


--
-- Data for Name: pokemon; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (1, 1, 'bulbasaur', 7, 69, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (2, 2, 'ivysaur', 10, 130, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (3, 3, 'venusaur', 20, 1000, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (4, 4, 'charmander', 6, 85, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (5, 5, 'charmeleon', 11, 190, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (6, 6, 'charizard', 17, 905, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (7, 7, 'squirtle', 5, 90, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (8, 8, 'wartortle', 10, 225, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (9, 9, 'blastoise', 16, 855, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (10, 10, 'caterpie', 3, 29, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (11, 11, 'metapod', 7, 99, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (12, 12, 'butterfree', 11, 320, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (13, 13, 'weedle', 3, 32, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (14, 14, 'kakuna', 6, 100, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (15, 15, 'beedrill', 10, 295, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (16, 16, 'pidgey', 3, 18, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (17, 17, 'pidgeotto', 11, 300, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (18, 18, 'pidgeot', 15, 395, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (19, 19, 'rattata', 3, 35, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (20, 20, 'raticate', 7, 185, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (21, 21, 'spearow', 3, 20, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (22, 22, 'fearow', 12, 380, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (23, 23, 'ekans', 20, 69, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (24, 24, 'arbok', 35, 650, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (25, 25, 'pikachu', 4, 60, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (26, 26, 'raichu', 8, 300, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (27, 27, 'sandshrew', 6, 120, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (28, 28, 'sandslash', 10, 295, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (29, 29, 'nidoran-f', 4, 70, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (30, 30, 'nidorina', 8, 200, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (31, 31, 'nidoqueen', 13, 600, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (32, 32, 'nidoran-m', 5, 90, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (33, 33, 'nidorino', 9, 195, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (34, 34, 'nidoking', 14, 620, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (35, 35, 'clefairy', 6, 75, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (36, 36, 'clefable', 13, 400, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (37, 37, 'vulpix', 6, 99, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (38, 38, 'ninetales', 11, 199, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (39, 39, 'jigglypuff', 5, 55, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (40, 40, 'wigglytuff', 10, 120, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (41, 41, 'zubat', 8, 75, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (42, 42, 'golbat', 16, 550, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (43, 43, 'oddish', 5, 54, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (44, 44, 'gloom', 8, 86, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (45, 45, 'vileplume', 12, 186, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (46, 46, 'paras', 3, 54, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (47, 47, 'parasect', 10, 295, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (48, 48, 'venonat', 10, 300, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (49, 49, 'venomoth', 15, 125, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (50, 50, 'diglett', 2, 8, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (51, 51, 'dugtrio', 7, 333, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (52, 52, 'meowth', 4, 42, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (53, 53, 'persian', 10, 320, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (54, 54, 'psyduck', 8, 196, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (55, 55, 'golduck', 17, 766, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (56, 56, 'mankey', 5, 280, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (57, 57, 'primeape', 10, 320, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (58, 58, 'growlithe', 7, 190, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (59, 59, 'arcanine', 19, 1550, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (60, 60, 'poliwag', 6, 124, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (61, 61, 'poliwhirl', 10, 200, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (62, 62, 'poliwrath', 13, 540, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (63, 63, 'abra', 9, 195, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (64, 64, 'kadabra', 13, 565, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (65, 65, 'alakazam', 15, 480, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (66, 66, 'machop', 8, 195, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (67, 67, 'machoke', 15, 705, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (68, 68, 'machamp', 16, 1300, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (69, 69, 'bellsprout', 7, 40, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (70, 70, 'weepinbell', 10, 64, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (71, 71, 'victreebel', 17, 155, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (72, 72, 'tentacool', 9, 455, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (73, 73, 'tentacruel', 16, 550, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (74, 74, 'geodude', 4, 200, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (75, 75, 'graveler', 10, 1050, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (76, 76, 'golem', 14, 3000, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (77, 77, 'ponyta', 10, 300, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (78, 78, 'rapidash', 17, 950, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (79, 79, 'slowpoke', 12, 360, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (80, 80, 'slowbro', 16, 785, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (81, 81, 'magnemite', 3, 60, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (82, 82, 'magneton', 10, 600, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (83, 83, 'farfetchd', 8, 150, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (84, 84, 'doduo', 14, 392, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (85, 85, 'dodrio', 18, 852, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (86, 86, 'seel', 11, 900, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (87, 87, 'dewgong', 17, 1200, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (88, 88, 'grimer', 9, 300, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (89, 89, 'muk', 12, 300, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (90, 90, 'shellder', 3, 40, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (91, 91, 'cloyster', 15, 1325, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (92, 92, 'gastly', 13, 1, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (93, 93, 'haunter', 16, 1, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (94, 94, 'gengar', 15, 405, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (95, 95, 'onix', 88, 2100, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (96, 96, 'drowzee', 10, 324, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (97, 97, 'hypno', 16, 756, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (98, 98, 'krabby', 4, 65, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (99, 99, 'kingler', 13, 600, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (100, 100, 'voltorb', 5, 104, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (101, 101, 'electrode', 12, 666, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (102, 102, 'exeggcute', 4, 25, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (103, 103, 'exeggutor', 20, 1200, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (104, 104, 'cubone', 4, 65, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (105, 105, 'marowak', 10, 450, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (106, 106, 'hitmonlee', 15, 498, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (107, 107, 'hitmonchan', 14, 502, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (108, 108, 'lickitung', 12, 655, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (109, 109, 'koffing', 6, 10, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (110, 110, 'weezing', 12, 95, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (111, 111, 'rhyhorn', 10, 1150, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (112, 112, 'rhydon', 19, 1200, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (113, 113, 'chansey', 11, 346, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (114, 114, 'tangela', 10, 350, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (115, 115, 'kangaskhan', 22, 800, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (116, 116, 'horsea', 4, 80, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (117, 117, 'seadra', 12, 250, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (118, 118, 'goldeen', 6, 150, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (119, 119, 'seaking', 13, 390, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (120, 120, 'staryu', 8, 345, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (121, 121, 'starmie', 11, 800, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (122, 122, 'mr-mime', 13, 545, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (123, 123, 'scyther', 15, 560, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (124, 124, 'jynx', 14, 406, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (125, 125, 'electabuzz', 11, 300, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (126, 126, 'magmar', 13, 445, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (127, 127, 'pinsir', 15, 550, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (128, 128, 'tauros', 14, 884, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (129, 129, 'magikarp', 9, 100, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (130, 130, 'gyarados', 65, 2350, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (131, 131, 'lapras', 25, 2200, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (132, 132, 'ditto', 3, 40, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (133, 133, 'eevee', 3, 65, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (134, 134, 'vaporeon', 10, 290, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (135, 135, 'jolteon', 8, 245, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (136, 136, 'flareon', 9, 250, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (137, 137, 'porygon', 8, 365, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (138, 138, 'omanyte', 4, 75, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (139, 139, 'omastar', 10, 350, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (140, 140, 'kabuto', 5, 115, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (141, 141, 'kabutops', 13, 405, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (142, 142, 'aerodactyl', 18, 590, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (143, 143, 'snorlax', 21, 4600, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (144, 144, 'articuno', 17, 554, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (145, 145, 'zapdos', 16, 526, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (146, 146, 'moltres', 20, 600, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (147, 147, 'dratini', 18, 33, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (148, 148, 'dragonair', 40, 165, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (149, 149, 'dragonite', 22, 2100, 0);
INSERT INTO pokemon (id, evolution_id, name, height, weight, version) VALUES (150, 150, 'mewtwo', 20, 1220, 0);


--
-- Name: pokemon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('pokemon_id_seq', 150, true);


--
-- Data for Name: pokemon_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (1, 1, 12, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (2, 1, 4, 2, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (3, 2, 12, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (4, 2, 4, 2, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (5, 3, 12, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (6, 3, 4, 2, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (7, 4, 10, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (8, 5, 10, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (9, 6, 10, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (10, 6, 3, 2, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (11, 7, 11, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (12, 8, 11, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (13, 9, 11, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (14, 10, 7, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (15, 11, 7, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (16, 12, 7, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (17, 12, 3, 2, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (18, 13, 7, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (19, 13, 4, 2, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (20, 14, 7, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (21, 14, 4, 2, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (22, 15, 7, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (23, 15, 4, 2, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (24, 16, 1, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (25, 16, 3, 2, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (26, 17, 1, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (27, 17, 3, 2, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (28, 18, 1, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (29, 18, 3, 2, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (30, 19, 1, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (31, 20, 1, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (32, 21, 1, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (33, 21, 3, 2, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (34, 22, 1, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (35, 22, 3, 2, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (36, 23, 4, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (37, 24, 4, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (38, 25, 13, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (39, 26, 13, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (40, 27, 5, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (41, 28, 5, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (42, 29, 4, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (43, 30, 4, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (44, 31, 4, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (45, 31, 5, 2, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (46, 32, 4, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (47, 33, 4, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (48, 34, 4, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (49, 34, 5, 2, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (50, 35, 17, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (51, 36, 17, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (52, 37, 10, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (53, 38, 10, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (54, 39, 1, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (55, 39, 17, 2, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (56, 40, 1, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (57, 40, 17, 2, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (58, 41, 4, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (59, 41, 3, 2, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (60, 42, 4, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (61, 42, 3, 2, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (62, 43, 12, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (63, 43, 4, 2, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (64, 44, 12, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (65, 44, 4, 2, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (66, 45, 12, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (67, 45, 4, 2, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (68, 46, 7, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (69, 46, 12, 2, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (70, 47, 7, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (71, 47, 12, 2, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (72, 48, 7, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (73, 48, 4, 2, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (74, 49, 7, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (75, 49, 4, 2, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (76, 50, 5, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (77, 51, 5, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (78, 52, 1, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (79, 53, 1, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (80, 54, 11, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (81, 55, 11, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (82, 56, 2, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (83, 57, 2, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (84, 58, 10, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (85, 59, 10, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (86, 60, 11, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (87, 61, 11, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (88, 62, 11, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (89, 62, 2, 2, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (90, 63, 14, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (91, 64, 14, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (92, 65, 14, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (93, 66, 2, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (94, 67, 2, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (95, 68, 2, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (96, 69, 12, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (97, 69, 4, 2, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (98, 70, 12, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (99, 70, 4, 2, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (100, 71, 12, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (101, 71, 4, 2, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (102, 72, 11, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (103, 72, 4, 2, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (104, 73, 11, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (105, 73, 4, 2, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (106, 74, 6, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (107, 74, 5, 2, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (108, 75, 6, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (109, 75, 5, 2, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (110, 76, 6, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (111, 76, 5, 2, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (112, 77, 10, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (113, 78, 10, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (114, 79, 11, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (115, 79, 14, 2, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (116, 80, 11, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (117, 80, 14, 2, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (118, 81, 13, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (119, 81, 9, 2, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (120, 82, 13, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (121, 82, 9, 2, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (122, 83, 1, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (123, 83, 3, 2, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (124, 84, 1, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (125, 84, 3, 2, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (126, 85, 1, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (127, 85, 3, 2, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (128, 86, 11, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (129, 87, 11, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (130, 87, 15, 2, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (131, 88, 4, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (132, 89, 4, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (133, 90, 11, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (134, 91, 11, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (135, 91, 15, 2, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (136, 92, 8, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (137, 92, 4, 2, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (138, 93, 8, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (139, 93, 4, 2, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (140, 94, 8, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (141, 94, 4, 2, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (142, 95, 6, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (143, 95, 5, 2, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (144, 96, 14, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (145, 97, 14, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (146, 98, 11, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (147, 99, 11, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (148, 100, 13, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (149, 101, 13, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (150, 102, 12, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (151, 102, 14, 2, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (152, 103, 12, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (153, 103, 14, 2, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (154, 104, 5, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (155, 105, 5, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (156, 106, 2, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (157, 107, 2, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (158, 108, 1, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (159, 109, 4, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (160, 110, 4, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (161, 111, 5, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (162, 111, 6, 2, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (163, 112, 5, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (164, 112, 6, 2, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (165, 113, 1, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (166, 114, 12, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (167, 115, 1, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (168, 116, 11, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (169, 117, 11, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (170, 118, 11, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (171, 119, 11, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (172, 120, 11, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (173, 121, 11, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (174, 121, 14, 2, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (175, 122, 14, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (176, 122, 17, 2, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (177, 123, 7, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (178, 123, 3, 2, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (179, 124, 15, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (180, 124, 14, 2, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (181, 125, 13, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (182, 126, 10, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (183, 127, 7, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (184, 128, 1, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (185, 129, 11, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (186, 130, 11, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (187, 130, 3, 2, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (188, 131, 11, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (189, 131, 15, 2, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (190, 132, 1, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (191, 133, 1, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (192, 134, 11, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (193, 135, 13, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (194, 136, 10, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (195, 137, 1, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (196, 138, 6, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (197, 138, 11, 2, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (198, 139, 6, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (199, 139, 11, 2, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (200, 140, 6, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (201, 140, 11, 2, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (202, 141, 6, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (203, 141, 11, 2, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (204, 142, 6, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (205, 142, 3, 2, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (206, 143, 1, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (207, 144, 15, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (208, 144, 3, 2, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (209, 145, 13, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (210, 145, 3, 2, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (211, 146, 10, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (212, 146, 3, 2, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (213, 147, 16, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (214, 148, 16, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (215, 149, 16, 1, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (216, 149, 3, 2, 0);
INSERT INTO pokemon_type (id, pokemon_id, type_id, seq, version) VALUES (217, 150, 14, 1, 0);


--
-- Name: pokemon_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('pokemon_type_id_seq', 217, true);


--
-- Data for Name: sprite; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (1, 1, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/1.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/1.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (2, 2, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/2.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/2.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (3, 3, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/3.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/3.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (4, 4, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/4.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/4.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (5, 5, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/5.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/5.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (6, 6, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/6.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/6.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (7, 7, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/7.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/7.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (8, 8, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/8.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/8.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (9, 9, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/9.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/9.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (10, 10, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/10.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/10.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (11, 11, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/11.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/11.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (12, 12, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/12.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/12.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (13, 13, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/13.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/13.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (14, 14, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/14.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/14.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (15, 15, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/15.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/15.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (16, 16, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/16.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/16.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (17, 17, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/17.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/17.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (18, 18, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/18.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/18.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (19, 19, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/19.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/19.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (20, 20, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/20.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/20.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (21, 21, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/21.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/21.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (22, 22, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/22.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/22.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (23, 23, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/23.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/23.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (24, 24, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/24.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/24.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (25, 25, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/25.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/25.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (26, 26, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/26.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/26.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (27, 27, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/27.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/27.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (28, 28, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/28.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/28.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (29, 29, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/29.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/29.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (30, 30, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/30.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/30.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (31, 31, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/31.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/31.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (32, 32, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/32.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/32.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (33, 33, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/33.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/33.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (34, 34, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/34.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/34.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (35, 35, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/35.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/35.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (36, 36, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/36.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/36.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (37, 37, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/37.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/37.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (38, 38, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/38.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/38.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (39, 39, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/39.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/39.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (40, 40, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/40.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/40.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (41, 41, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/41.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/41.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (42, 42, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/42.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/42.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (43, 43, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/43.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/43.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (44, 44, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/44.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/44.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (45, 45, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/45.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/45.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (46, 46, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/46.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/46.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (47, 47, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/47.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/47.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (48, 48, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/48.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/48.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (49, 49, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/49.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/49.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (50, 50, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/50.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/50.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (51, 51, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/51.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/51.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (52, 52, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/52.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/52.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (53, 53, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/53.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/53.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (54, 54, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/54.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/54.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (55, 55, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/55.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/55.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (56, 56, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/56.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/56.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (57, 57, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/57.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/57.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (58, 58, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/58.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/58.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (59, 59, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/59.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/59.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (60, 60, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/60.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/60.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (61, 61, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/61.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/61.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (62, 62, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/62.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/62.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (63, 63, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/63.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/63.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (64, 64, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/64.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/64.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (65, 65, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/65.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/65.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (66, 66, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/66.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/66.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (67, 67, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/67.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/67.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (68, 68, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/68.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/68.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (69, 69, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/69.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/69.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (70, 70, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/70.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/70.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (71, 71, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/71.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/71.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (72, 72, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/72.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/72.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (73, 73, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/73.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/73.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (74, 74, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/74.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/74.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (75, 75, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/75.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/75.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (76, 76, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/76.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/76.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (77, 77, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/77.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/77.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (78, 78, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/78.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/78.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (79, 79, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/79.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/79.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (80, 80, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/80.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/80.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (81, 81, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/81.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/81.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (82, 82, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/82.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/82.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (83, 83, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/83.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/83.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (84, 84, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/84.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/84.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (85, 85, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/85.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/85.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (86, 86, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/86.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/86.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (87, 87, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/87.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/87.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (88, 88, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/88.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/88.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (89, 89, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/89.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/89.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (90, 90, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/90.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/90.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (91, 91, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/91.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/91.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (92, 92, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/92.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/92.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (93, 93, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/93.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/93.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (94, 94, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/94.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/94.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (95, 95, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/95.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/95.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (96, 96, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/96.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/96.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (97, 97, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/97.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/97.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (98, 98, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/98.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/98.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (99, 99, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/99.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/99.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (100, 100, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/100.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/100.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (101, 101, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/101.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/101.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (102, 102, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/102.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/102.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (103, 103, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/103.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/103.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (104, 104, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/104.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/104.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (105, 105, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/105.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/105.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (106, 106, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/106.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/106.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (107, 107, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/107.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/107.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (108, 108, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/108.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/108.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (109, 109, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/109.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/109.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (110, 110, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/110.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/110.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (111, 111, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/111.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/111.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (112, 112, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/112.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/112.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (113, 113, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/113.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/113.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (114, 114, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/114.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/114.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (115, 115, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/115.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/115.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (116, 116, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/116.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/116.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (117, 117, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/117.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/117.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (118, 118, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/118.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/118.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (119, 119, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/119.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/119.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (120, 120, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/120.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/120.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (121, 121, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/121.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/121.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (122, 122, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/122.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/122.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (123, 123, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/123.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/123.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (124, 124, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/124.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/124.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (125, 125, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/125.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/125.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (126, 126, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/126.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/126.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (127, 127, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/127.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/127.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (128, 128, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/128.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/128.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (129, 129, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/129.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/129.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (130, 130, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/130.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/130.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (131, 131, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/131.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/131.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (132, 132, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/132.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/132.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (133, 133, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/133.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/133.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (134, 134, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/134.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/134.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (135, 135, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/135.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/135.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (136, 136, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/136.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/136.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (137, 137, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/137.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/137.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (138, 138, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/138.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/138.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (139, 139, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/139.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/139.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (140, 140, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/140.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/140.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (141, 141, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/141.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/141.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (142, 142, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/142.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/142.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (143, 143, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/143.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/143.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (144, 144, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/144.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/144.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (145, 145, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/145.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/145.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (146, 146, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/146.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/146.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (147, 147, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/147.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/147.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (148, 148, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/148.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/148.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (149, 149, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/149.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/149.png', 0);
INSERT INTO sprite (id, pokemon_id, front, back, version) VALUES (150, 150, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/150.png', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/150.png', 0);


--
-- Name: sprite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sprite_id_seq', 150, true);


--
-- Data for Name: stat; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (1, 1, 'hp', 45, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (2, 1, 'attack', 49, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (3, 1, 'defense', 49, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (4, 1, 'special-attack', 65, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (5, 1, 'special-defense', 65, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (6, 1, 'speed', 45, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (7, 2, 'hp', 60, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (8, 2, 'attack', 62, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (9, 2, 'defense', 63, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (10, 2, 'special-attack', 80, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (11, 2, 'special-defense', 80, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (12, 2, 'speed', 60, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (13, 3, 'hp', 80, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (14, 3, 'attack', 82, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (15, 3, 'defense', 83, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (16, 3, 'special-attack', 100, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (17, 3, 'special-defense', 100, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (18, 3, 'speed', 80, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (19, 4, 'hp', 39, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (20, 4, 'attack', 52, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (21, 4, 'defense', 43, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (22, 4, 'special-attack', 60, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (23, 4, 'special-defense', 50, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (24, 4, 'speed', 65, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (25, 5, 'hp', 58, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (26, 5, 'attack', 64, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (27, 5, 'defense', 58, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (28, 5, 'special-attack', 80, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (29, 5, 'special-defense', 65, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (30, 5, 'speed', 80, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (31, 6, 'hp', 78, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (32, 6, 'attack', 84, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (33, 6, 'defense', 78, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (34, 6, 'special-attack', 109, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (35, 6, 'special-defense', 85, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (36, 6, 'speed', 100, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (37, 7, 'hp', 44, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (38, 7, 'attack', 48, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (39, 7, 'defense', 65, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (40, 7, 'special-attack', 50, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (41, 7, 'special-defense', 64, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (42, 7, 'speed', 43, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (43, 8, 'hp', 59, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (44, 8, 'attack', 63, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (45, 8, 'defense', 80, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (46, 8, 'special-attack', 65, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (47, 8, 'special-defense', 80, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (48, 8, 'speed', 58, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (49, 9, 'hp', 79, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (50, 9, 'attack', 83, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (51, 9, 'defense', 100, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (52, 9, 'special-attack', 85, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (53, 9, 'special-defense', 105, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (54, 9, 'speed', 78, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (55, 10, 'hp', 45, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (56, 10, 'attack', 30, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (57, 10, 'defense', 35, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (58, 10, 'special-attack', 20, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (59, 10, 'special-defense', 20, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (60, 10, 'speed', 45, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (61, 11, 'hp', 50, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (62, 11, 'attack', 20, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (63, 11, 'defense', 55, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (64, 11, 'special-attack', 25, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (65, 11, 'special-defense', 25, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (66, 11, 'speed', 30, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (67, 12, 'hp', 60, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (68, 12, 'attack', 45, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (69, 12, 'defense', 50, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (70, 12, 'special-attack', 90, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (71, 12, 'special-defense', 80, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (72, 12, 'speed', 70, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (73, 13, 'hp', 40, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (74, 13, 'attack', 35, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (75, 13, 'defense', 30, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (76, 13, 'special-attack', 20, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (77, 13, 'special-defense', 20, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (78, 13, 'speed', 50, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (79, 14, 'hp', 45, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (80, 14, 'attack', 25, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (81, 14, 'defense', 50, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (82, 14, 'special-attack', 25, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (83, 14, 'special-defense', 25, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (84, 14, 'speed', 35, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (85, 15, 'hp', 65, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (86, 15, 'attack', 90, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (87, 15, 'defense', 40, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (88, 15, 'special-attack', 45, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (89, 15, 'special-defense', 80, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (90, 15, 'speed', 75, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (91, 16, 'hp', 40, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (92, 16, 'attack', 45, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (93, 16, 'defense', 40, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (94, 16, 'special-attack', 35, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (95, 16, 'special-defense', 35, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (96, 16, 'speed', 56, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (97, 17, 'hp', 63, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (98, 17, 'attack', 60, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (99, 17, 'defense', 55, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (100, 17, 'special-attack', 50, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (101, 17, 'special-defense', 50, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (102, 17, 'speed', 71, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (103, 18, 'hp', 83, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (104, 18, 'attack', 80, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (105, 18, 'defense', 75, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (106, 18, 'special-attack', 70, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (107, 18, 'special-defense', 70, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (108, 18, 'speed', 101, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (109, 19, 'hp', 30, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (110, 19, 'attack', 56, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (111, 19, 'defense', 35, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (112, 19, 'special-attack', 25, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (113, 19, 'special-defense', 35, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (114, 19, 'speed', 72, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (115, 20, 'hp', 55, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (116, 20, 'attack', 81, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (117, 20, 'defense', 60, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (118, 20, 'special-attack', 50, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (119, 20, 'special-defense', 70, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (120, 20, 'speed', 97, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (121, 21, 'hp', 40, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (122, 21, 'attack', 60, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (123, 21, 'defense', 30, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (124, 21, 'special-attack', 31, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (125, 21, 'special-defense', 31, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (126, 21, 'speed', 70, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (127, 22, 'hp', 65, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (128, 22, 'attack', 90, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (129, 22, 'defense', 65, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (130, 22, 'special-attack', 61, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (131, 22, 'special-defense', 61, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (132, 22, 'speed', 100, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (133, 23, 'hp', 35, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (134, 23, 'attack', 60, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (135, 23, 'defense', 44, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (136, 23, 'special-attack', 40, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (137, 23, 'special-defense', 54, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (138, 23, 'speed', 55, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (139, 24, 'hp', 60, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (140, 24, 'attack', 85, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (141, 24, 'defense', 69, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (142, 24, 'special-attack', 65, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (143, 24, 'special-defense', 79, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (144, 24, 'speed', 80, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (145, 25, 'hp', 35, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (146, 25, 'attack', 55, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (147, 25, 'defense', 40, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (148, 25, 'special-attack', 50, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (149, 25, 'special-defense', 50, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (150, 25, 'speed', 90, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (151, 26, 'hp', 60, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (152, 26, 'attack', 90, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (153, 26, 'defense', 55, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (154, 26, 'special-attack', 90, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (155, 26, 'special-defense', 80, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (156, 26, 'speed', 110, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (157, 27, 'hp', 50, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (158, 27, 'attack', 75, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (159, 27, 'defense', 85, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (160, 27, 'special-attack', 20, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (161, 27, 'special-defense', 30, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (162, 27, 'speed', 40, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (163, 28, 'hp', 75, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (164, 28, 'attack', 100, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (165, 28, 'defense', 110, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (166, 28, 'special-attack', 45, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (167, 28, 'special-defense', 55, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (168, 28, 'speed', 65, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (169, 29, 'hp', 55, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (170, 29, 'attack', 47, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (171, 29, 'defense', 52, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (172, 29, 'special-attack', 40, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (173, 29, 'special-defense', 40, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (174, 29, 'speed', 41, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (175, 30, 'hp', 70, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (176, 30, 'attack', 62, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (177, 30, 'defense', 67, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (178, 30, 'special-attack', 55, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (179, 30, 'special-defense', 55, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (180, 30, 'speed', 56, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (181, 31, 'hp', 90, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (182, 31, 'attack', 92, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (183, 31, 'defense', 87, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (184, 31, 'special-attack', 75, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (185, 31, 'special-defense', 85, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (186, 31, 'speed', 76, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (187, 32, 'hp', 46, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (188, 32, 'attack', 57, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (189, 32, 'defense', 40, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (190, 32, 'special-attack', 40, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (191, 32, 'special-defense', 40, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (192, 32, 'speed', 50, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (193, 33, 'hp', 61, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (194, 33, 'attack', 72, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (195, 33, 'defense', 57, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (196, 33, 'special-attack', 55, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (197, 33, 'special-defense', 55, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (198, 33, 'speed', 65, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (199, 34, 'hp', 81, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (200, 34, 'attack', 102, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (201, 34, 'defense', 77, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (202, 34, 'special-attack', 85, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (203, 34, 'special-defense', 75, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (204, 34, 'speed', 85, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (205, 35, 'hp', 70, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (206, 35, 'attack', 45, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (207, 35, 'defense', 48, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (208, 35, 'special-attack', 60, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (209, 35, 'special-defense', 65, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (210, 35, 'speed', 35, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (211, 36, 'hp', 95, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (212, 36, 'attack', 70, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (213, 36, 'defense', 73, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (214, 36, 'special-attack', 95, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (215, 36, 'special-defense', 90, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (216, 36, 'speed', 60, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (217, 37, 'hp', 38, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (218, 37, 'attack', 41, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (219, 37, 'defense', 40, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (220, 37, 'special-attack', 50, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (221, 37, 'special-defense', 65, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (222, 37, 'speed', 65, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (223, 38, 'hp', 73, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (224, 38, 'attack', 76, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (225, 38, 'defense', 75, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (226, 38, 'special-attack', 81, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (227, 38, 'special-defense', 100, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (228, 38, 'speed', 100, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (229, 39, 'hp', 115, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (230, 39, 'attack', 45, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (231, 39, 'defense', 20, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (232, 39, 'special-attack', 45, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (233, 39, 'special-defense', 25, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (234, 39, 'speed', 20, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (235, 40, 'hp', 140, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (236, 40, 'attack', 70, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (237, 40, 'defense', 45, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (238, 40, 'special-attack', 85, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (239, 40, 'special-defense', 50, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (240, 40, 'speed', 45, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (241, 41, 'hp', 40, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (242, 41, 'attack', 45, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (243, 41, 'defense', 35, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (244, 41, 'special-attack', 30, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (245, 41, 'special-defense', 40, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (246, 41, 'speed', 55, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (247, 42, 'hp', 75, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (248, 42, 'attack', 80, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (249, 42, 'defense', 70, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (250, 42, 'special-attack', 65, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (251, 42, 'special-defense', 75, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (252, 42, 'speed', 90, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (253, 43, 'hp', 45, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (254, 43, 'attack', 50, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (255, 43, 'defense', 55, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (256, 43, 'special-attack', 75, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (257, 43, 'special-defense', 65, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (258, 43, 'speed', 30, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (259, 44, 'hp', 60, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (260, 44, 'attack', 65, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (261, 44, 'defense', 70, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (262, 44, 'special-attack', 85, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (263, 44, 'special-defense', 75, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (264, 44, 'speed', 40, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (265, 45, 'hp', 75, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (266, 45, 'attack', 80, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (267, 45, 'defense', 85, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (268, 45, 'special-attack', 110, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (269, 45, 'special-defense', 90, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (270, 45, 'speed', 50, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (271, 46, 'hp', 35, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (272, 46, 'attack', 70, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (273, 46, 'defense', 55, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (274, 46, 'special-attack', 45, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (275, 46, 'special-defense', 55, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (276, 46, 'speed', 25, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (277, 47, 'hp', 60, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (278, 47, 'attack', 95, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (279, 47, 'defense', 80, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (280, 47, 'special-attack', 60, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (281, 47, 'special-defense', 80, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (282, 47, 'speed', 30, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (283, 48, 'hp', 60, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (284, 48, 'attack', 55, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (285, 48, 'defense', 50, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (286, 48, 'special-attack', 40, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (287, 48, 'special-defense', 55, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (288, 48, 'speed', 45, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (289, 49, 'hp', 70, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (290, 49, 'attack', 65, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (291, 49, 'defense', 60, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (292, 49, 'special-attack', 90, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (293, 49, 'special-defense', 75, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (294, 49, 'speed', 90, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (295, 50, 'hp', 10, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (296, 50, 'attack', 55, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (297, 50, 'defense', 25, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (298, 50, 'special-attack', 35, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (299, 50, 'special-defense', 45, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (300, 50, 'speed', 95, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (301, 51, 'hp', 35, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (302, 51, 'attack', 80, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (303, 51, 'defense', 50, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (304, 51, 'special-attack', 50, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (305, 51, 'special-defense', 70, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (306, 51, 'speed', 120, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (307, 52, 'hp', 40, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (308, 52, 'attack', 45, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (309, 52, 'defense', 35, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (310, 52, 'special-attack', 40, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (311, 52, 'special-defense', 40, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (312, 52, 'speed', 90, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (313, 53, 'hp', 65, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (314, 53, 'attack', 70, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (315, 53, 'defense', 60, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (316, 53, 'special-attack', 65, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (317, 53, 'special-defense', 65, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (318, 53, 'speed', 115, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (319, 54, 'hp', 50, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (320, 54, 'attack', 52, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (321, 54, 'defense', 48, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (322, 54, 'special-attack', 65, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (323, 54, 'special-defense', 50, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (324, 54, 'speed', 55, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (325, 55, 'hp', 80, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (326, 55, 'attack', 82, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (327, 55, 'defense', 78, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (328, 55, 'special-attack', 95, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (329, 55, 'special-defense', 80, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (330, 55, 'speed', 85, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (331, 56, 'hp', 40, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (332, 56, 'attack', 80, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (333, 56, 'defense', 35, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (334, 56, 'special-attack', 35, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (335, 56, 'special-defense', 45, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (336, 56, 'speed', 70, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (337, 57, 'hp', 65, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (338, 57, 'attack', 105, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (339, 57, 'defense', 60, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (340, 57, 'special-attack', 60, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (341, 57, 'special-defense', 70, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (342, 57, 'speed', 95, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (343, 58, 'hp', 55, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (344, 58, 'attack', 70, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (345, 58, 'defense', 45, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (346, 58, 'special-attack', 70, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (347, 58, 'special-defense', 50, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (348, 58, 'speed', 60, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (349, 59, 'hp', 90, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (350, 59, 'attack', 110, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (351, 59, 'defense', 80, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (352, 59, 'special-attack', 100, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (353, 59, 'special-defense', 80, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (354, 59, 'speed', 95, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (355, 60, 'hp', 40, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (356, 60, 'attack', 50, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (357, 60, 'defense', 40, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (358, 60, 'special-attack', 40, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (359, 60, 'special-defense', 40, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (360, 60, 'speed', 90, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (361, 61, 'hp', 65, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (362, 61, 'attack', 65, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (363, 61, 'defense', 65, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (364, 61, 'special-attack', 50, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (365, 61, 'special-defense', 50, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (366, 61, 'speed', 90, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (367, 62, 'hp', 90, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (368, 62, 'attack', 95, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (369, 62, 'defense', 95, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (370, 62, 'special-attack', 70, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (371, 62, 'special-defense', 90, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (372, 62, 'speed', 70, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (373, 63, 'hp', 25, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (374, 63, 'attack', 20, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (375, 63, 'defense', 15, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (376, 63, 'special-attack', 105, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (377, 63, 'special-defense', 55, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (378, 63, 'speed', 90, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (379, 64, 'hp', 40, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (380, 64, 'attack', 35, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (381, 64, 'defense', 30, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (382, 64, 'special-attack', 120, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (383, 64, 'special-defense', 70, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (384, 64, 'speed', 105, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (385, 65, 'hp', 55, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (386, 65, 'attack', 50, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (387, 65, 'defense', 45, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (388, 65, 'special-attack', 135, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (389, 65, 'special-defense', 95, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (390, 65, 'speed', 120, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (391, 66, 'hp', 70, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (392, 66, 'attack', 80, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (393, 66, 'defense', 50, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (394, 66, 'special-attack', 35, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (395, 66, 'special-defense', 35, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (396, 66, 'speed', 35, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (397, 67, 'hp', 80, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (398, 67, 'attack', 100, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (399, 67, 'defense', 70, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (400, 67, 'special-attack', 50, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (401, 67, 'special-defense', 60, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (402, 67, 'speed', 45, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (403, 68, 'hp', 90, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (404, 68, 'attack', 130, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (405, 68, 'defense', 80, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (406, 68, 'special-attack', 65, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (407, 68, 'special-defense', 85, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (408, 68, 'speed', 55, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (409, 69, 'hp', 50, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (410, 69, 'attack', 75, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (411, 69, 'defense', 35, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (412, 69, 'special-attack', 70, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (413, 69, 'special-defense', 30, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (414, 69, 'speed', 40, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (415, 70, 'hp', 65, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (416, 70, 'attack', 90, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (417, 70, 'defense', 50, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (418, 70, 'special-attack', 85, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (419, 70, 'special-defense', 45, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (420, 70, 'speed', 55, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (421, 71, 'hp', 80, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (422, 71, 'attack', 105, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (423, 71, 'defense', 65, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (424, 71, 'special-attack', 100, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (425, 71, 'special-defense', 70, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (426, 71, 'speed', 70, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (427, 72, 'hp', 40, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (428, 72, 'attack', 40, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (429, 72, 'defense', 35, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (430, 72, 'special-attack', 50, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (431, 72, 'special-defense', 100, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (432, 72, 'speed', 70, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (433, 73, 'hp', 80, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (434, 73, 'attack', 70, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (435, 73, 'defense', 65, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (436, 73, 'special-attack', 80, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (437, 73, 'special-defense', 120, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (438, 73, 'speed', 100, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (439, 74, 'hp', 40, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (440, 74, 'attack', 80, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (441, 74, 'defense', 100, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (442, 74, 'special-attack', 30, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (443, 74, 'special-defense', 30, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (444, 74, 'speed', 20, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (445, 75, 'hp', 55, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (446, 75, 'attack', 95, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (447, 75, 'defense', 115, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (448, 75, 'special-attack', 45, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (449, 75, 'special-defense', 45, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (450, 75, 'speed', 35, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (451, 76, 'hp', 80, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (452, 76, 'attack', 120, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (453, 76, 'defense', 130, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (454, 76, 'special-attack', 55, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (455, 76, 'special-defense', 65, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (456, 76, 'speed', 45, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (457, 77, 'hp', 50, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (458, 77, 'attack', 85, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (459, 77, 'defense', 55, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (460, 77, 'special-attack', 65, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (461, 77, 'special-defense', 65, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (462, 77, 'speed', 90, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (463, 78, 'hp', 65, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (464, 78, 'attack', 100, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (465, 78, 'defense', 70, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (466, 78, 'special-attack', 80, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (467, 78, 'special-defense', 80, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (468, 78, 'speed', 105, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (469, 79, 'hp', 90, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (470, 79, 'attack', 65, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (471, 79, 'defense', 65, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (472, 79, 'special-attack', 40, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (473, 79, 'special-defense', 40, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (474, 79, 'speed', 15, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (475, 80, 'hp', 95, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (476, 80, 'attack', 75, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (477, 80, 'defense', 110, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (478, 80, 'special-attack', 100, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (479, 80, 'special-defense', 80, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (480, 80, 'speed', 30, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (481, 81, 'hp', 25, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (482, 81, 'attack', 35, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (483, 81, 'defense', 70, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (484, 81, 'special-attack', 95, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (485, 81, 'special-defense', 55, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (486, 81, 'speed', 45, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (487, 82, 'hp', 50, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (488, 82, 'attack', 60, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (489, 82, 'defense', 95, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (490, 82, 'special-attack', 120, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (491, 82, 'special-defense', 70, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (492, 82, 'speed', 70, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (493, 83, 'hp', 52, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (494, 83, 'attack', 65, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (495, 83, 'defense', 55, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (496, 83, 'special-attack', 58, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (497, 83, 'special-defense', 62, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (498, 83, 'speed', 60, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (499, 84, 'hp', 35, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (500, 84, 'attack', 85, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (501, 84, 'defense', 45, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (502, 84, 'special-attack', 35, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (503, 84, 'special-defense', 35, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (504, 84, 'speed', 75, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (505, 85, 'hp', 60, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (506, 85, 'attack', 110, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (507, 85, 'defense', 70, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (508, 85, 'special-attack', 60, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (509, 85, 'special-defense', 60, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (510, 85, 'speed', 100, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (511, 86, 'hp', 65, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (512, 86, 'attack', 45, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (513, 86, 'defense', 55, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (514, 86, 'special-attack', 45, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (515, 86, 'special-defense', 70, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (516, 86, 'speed', 45, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (517, 87, 'hp', 90, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (518, 87, 'attack', 70, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (519, 87, 'defense', 80, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (520, 87, 'special-attack', 70, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (521, 87, 'special-defense', 95, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (522, 87, 'speed', 70, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (523, 88, 'hp', 80, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (524, 88, 'attack', 80, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (525, 88, 'defense', 50, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (526, 88, 'special-attack', 40, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (527, 88, 'special-defense', 50, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (528, 88, 'speed', 25, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (529, 89, 'hp', 105, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (530, 89, 'attack', 105, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (531, 89, 'defense', 75, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (532, 89, 'special-attack', 65, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (533, 89, 'special-defense', 100, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (534, 89, 'speed', 50, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (535, 90, 'hp', 30, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (536, 90, 'attack', 65, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (537, 90, 'defense', 100, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (538, 90, 'special-attack', 45, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (539, 90, 'special-defense', 25, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (540, 90, 'speed', 40, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (541, 91, 'hp', 50, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (542, 91, 'attack', 95, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (543, 91, 'defense', 180, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (544, 91, 'special-attack', 85, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (545, 91, 'special-defense', 45, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (546, 91, 'speed', 70, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (547, 92, 'hp', 30, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (548, 92, 'attack', 35, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (549, 92, 'defense', 30, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (550, 92, 'special-attack', 100, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (551, 92, 'special-defense', 35, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (552, 92, 'speed', 80, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (553, 93, 'hp', 45, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (554, 93, 'attack', 50, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (555, 93, 'defense', 45, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (556, 93, 'special-attack', 115, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (557, 93, 'special-defense', 55, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (558, 93, 'speed', 95, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (559, 94, 'hp', 60, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (560, 94, 'attack', 65, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (561, 94, 'defense', 60, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (562, 94, 'special-attack', 130, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (563, 94, 'special-defense', 75, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (564, 94, 'speed', 110, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (565, 95, 'hp', 35, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (566, 95, 'attack', 45, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (567, 95, 'defense', 160, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (568, 95, 'special-attack', 30, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (569, 95, 'special-defense', 45, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (570, 95, 'speed', 70, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (571, 96, 'hp', 60, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (572, 96, 'attack', 48, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (573, 96, 'defense', 45, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (574, 96, 'special-attack', 43, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (575, 96, 'special-defense', 90, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (576, 96, 'speed', 42, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (577, 97, 'hp', 85, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (578, 97, 'attack', 73, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (579, 97, 'defense', 70, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (580, 97, 'special-attack', 73, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (581, 97, 'special-defense', 115, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (582, 97, 'speed', 67, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (583, 98, 'hp', 30, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (584, 98, 'attack', 105, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (585, 98, 'defense', 90, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (586, 98, 'special-attack', 25, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (587, 98, 'special-defense', 25, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (588, 98, 'speed', 50, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (589, 99, 'hp', 55, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (590, 99, 'attack', 130, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (591, 99, 'defense', 115, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (592, 99, 'special-attack', 50, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (593, 99, 'special-defense', 50, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (594, 99, 'speed', 75, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (595, 100, 'hp', 40, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (596, 100, 'attack', 30, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (597, 100, 'defense', 50, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (598, 100, 'special-attack', 55, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (599, 100, 'special-defense', 55, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (600, 100, 'speed', 100, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (601, 101, 'hp', 60, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (602, 101, 'attack', 50, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (603, 101, 'defense', 70, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (604, 101, 'special-attack', 80, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (605, 101, 'special-defense', 80, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (606, 101, 'speed', 140, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (607, 102, 'hp', 60, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (608, 102, 'attack', 40, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (609, 102, 'defense', 80, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (610, 102, 'special-attack', 60, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (611, 102, 'special-defense', 45, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (612, 102, 'speed', 40, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (613, 103, 'hp', 95, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (614, 103, 'attack', 95, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (615, 103, 'defense', 85, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (616, 103, 'special-attack', 125, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (617, 103, 'special-defense', 65, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (618, 103, 'speed', 55, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (619, 104, 'hp', 50, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (620, 104, 'attack', 50, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (621, 104, 'defense', 95, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (622, 104, 'special-attack', 40, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (623, 104, 'special-defense', 50, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (624, 104, 'speed', 35, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (625, 105, 'hp', 60, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (626, 105, 'attack', 80, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (627, 105, 'defense', 110, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (628, 105, 'special-attack', 50, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (629, 105, 'special-defense', 80, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (630, 105, 'speed', 45, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (631, 106, 'hp', 50, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (632, 106, 'attack', 120, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (633, 106, 'defense', 53, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (634, 106, 'special-attack', 35, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (635, 106, 'special-defense', 110, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (636, 106, 'speed', 87, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (637, 107, 'hp', 50, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (638, 107, 'attack', 105, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (639, 107, 'defense', 79, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (640, 107, 'special-attack', 35, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (641, 107, 'special-defense', 110, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (642, 107, 'speed', 76, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (643, 108, 'hp', 90, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (644, 108, 'attack', 55, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (645, 108, 'defense', 75, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (646, 108, 'special-attack', 60, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (647, 108, 'special-defense', 75, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (648, 108, 'speed', 30, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (649, 109, 'hp', 40, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (650, 109, 'attack', 65, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (651, 109, 'defense', 95, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (652, 109, 'special-attack', 60, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (653, 109, 'special-defense', 45, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (654, 109, 'speed', 35, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (655, 110, 'hp', 65, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (656, 110, 'attack', 90, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (657, 110, 'defense', 120, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (658, 110, 'special-attack', 85, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (659, 110, 'special-defense', 70, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (660, 110, 'speed', 60, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (661, 111, 'hp', 80, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (662, 111, 'attack', 85, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (663, 111, 'defense', 95, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (664, 111, 'special-attack', 30, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (665, 111, 'special-defense', 30, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (666, 111, 'speed', 25, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (667, 112, 'hp', 105, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (668, 112, 'attack', 130, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (669, 112, 'defense', 120, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (670, 112, 'special-attack', 45, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (671, 112, 'special-defense', 45, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (672, 112, 'speed', 40, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (673, 113, 'hp', 250, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (674, 113, 'attack', 5, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (675, 113, 'defense', 5, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (676, 113, 'special-attack', 35, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (677, 113, 'special-defense', 105, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (678, 113, 'speed', 50, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (679, 114, 'hp', 65, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (680, 114, 'attack', 55, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (681, 114, 'defense', 115, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (682, 114, 'special-attack', 100, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (683, 114, 'special-defense', 40, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (684, 114, 'speed', 60, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (685, 115, 'hp', 105, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (686, 115, 'attack', 95, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (687, 115, 'defense', 80, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (688, 115, 'special-attack', 40, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (689, 115, 'special-defense', 80, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (690, 115, 'speed', 90, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (691, 116, 'hp', 30, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (692, 116, 'attack', 40, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (693, 116, 'defense', 70, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (694, 116, 'special-attack', 70, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (695, 116, 'special-defense', 25, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (696, 116, 'speed', 60, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (697, 117, 'hp', 55, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (698, 117, 'attack', 65, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (699, 117, 'defense', 95, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (700, 117, 'special-attack', 95, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (701, 117, 'special-defense', 45, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (702, 117, 'speed', 85, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (703, 118, 'hp', 45, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (704, 118, 'attack', 67, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (705, 118, 'defense', 60, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (706, 118, 'special-attack', 35, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (707, 118, 'special-defense', 50, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (708, 118, 'speed', 63, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (709, 119, 'hp', 80, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (710, 119, 'attack', 92, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (711, 119, 'defense', 65, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (712, 119, 'special-attack', 65, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (713, 119, 'special-defense', 80, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (714, 119, 'speed', 68, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (715, 120, 'hp', 30, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (716, 120, 'attack', 45, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (717, 120, 'defense', 55, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (718, 120, 'special-attack', 70, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (719, 120, 'special-defense', 55, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (720, 120, 'speed', 85, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (721, 121, 'hp', 60, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (722, 121, 'attack', 75, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (723, 121, 'defense', 85, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (724, 121, 'special-attack', 100, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (725, 121, 'special-defense', 85, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (726, 121, 'speed', 115, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (727, 122, 'hp', 40, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (728, 122, 'attack', 45, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (729, 122, 'defense', 65, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (730, 122, 'special-attack', 100, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (731, 122, 'special-defense', 120, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (732, 122, 'speed', 90, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (733, 123, 'hp', 70, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (734, 123, 'attack', 110, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (735, 123, 'defense', 80, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (736, 123, 'special-attack', 55, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (737, 123, 'special-defense', 80, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (738, 123, 'speed', 105, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (739, 124, 'hp', 65, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (740, 124, 'attack', 50, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (741, 124, 'defense', 35, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (742, 124, 'special-attack', 115, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (743, 124, 'special-defense', 95, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (744, 124, 'speed', 95, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (745, 125, 'hp', 65, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (746, 125, 'attack', 83, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (747, 125, 'defense', 57, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (748, 125, 'special-attack', 95, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (749, 125, 'special-defense', 85, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (750, 125, 'speed', 105, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (751, 126, 'hp', 65, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (752, 126, 'attack', 95, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (753, 126, 'defense', 57, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (754, 126, 'special-attack', 100, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (755, 126, 'special-defense', 85, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (756, 126, 'speed', 93, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (757, 127, 'hp', 65, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (758, 127, 'attack', 125, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (759, 127, 'defense', 100, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (760, 127, 'special-attack', 55, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (761, 127, 'special-defense', 70, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (762, 127, 'speed', 85, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (763, 128, 'hp', 75, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (764, 128, 'attack', 100, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (765, 128, 'defense', 95, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (766, 128, 'special-attack', 40, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (767, 128, 'special-defense', 70, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (768, 128, 'speed', 110, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (769, 129, 'hp', 20, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (770, 129, 'attack', 10, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (771, 129, 'defense', 55, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (772, 129, 'special-attack', 15, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (773, 129, 'special-defense', 20, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (774, 129, 'speed', 80, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (775, 130, 'hp', 95, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (776, 130, 'attack', 125, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (777, 130, 'defense', 79, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (778, 130, 'special-attack', 60, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (779, 130, 'special-defense', 100, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (780, 130, 'speed', 81, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (781, 131, 'hp', 130, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (782, 131, 'attack', 85, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (783, 131, 'defense', 80, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (784, 131, 'special-attack', 85, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (785, 131, 'special-defense', 95, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (786, 131, 'speed', 60, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (787, 132, 'hp', 48, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (788, 132, 'attack', 48, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (789, 132, 'defense', 48, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (790, 132, 'special-attack', 48, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (791, 132, 'special-defense', 48, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (792, 132, 'speed', 48, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (793, 133, 'hp', 55, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (794, 133, 'attack', 55, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (795, 133, 'defense', 50, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (796, 133, 'special-attack', 45, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (797, 133, 'special-defense', 65, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (798, 133, 'speed', 55, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (799, 134, 'hp', 130, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (800, 134, 'attack', 65, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (801, 134, 'defense', 60, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (802, 134, 'special-attack', 110, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (803, 134, 'special-defense', 95, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (804, 134, 'speed', 65, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (805, 135, 'hp', 65, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (806, 135, 'attack', 65, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (807, 135, 'defense', 60, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (808, 135, 'special-attack', 110, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (809, 135, 'special-defense', 95, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (810, 135, 'speed', 130, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (811, 136, 'hp', 65, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (812, 136, 'attack', 130, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (813, 136, 'defense', 60, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (814, 136, 'special-attack', 95, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (815, 136, 'special-defense', 110, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (816, 136, 'speed', 65, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (817, 137, 'hp', 65, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (818, 137, 'attack', 60, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (819, 137, 'defense', 70, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (820, 137, 'special-attack', 85, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (821, 137, 'special-defense', 75, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (822, 137, 'speed', 40, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (823, 138, 'hp', 35, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (824, 138, 'attack', 40, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (825, 138, 'defense', 100, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (826, 138, 'special-attack', 90, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (827, 138, 'special-defense', 55, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (828, 138, 'speed', 35, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (829, 139, 'hp', 70, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (830, 139, 'attack', 60, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (831, 139, 'defense', 125, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (832, 139, 'special-attack', 115, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (833, 139, 'special-defense', 70, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (834, 139, 'speed', 55, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (835, 140, 'hp', 30, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (836, 140, 'attack', 80, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (837, 140, 'defense', 90, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (838, 140, 'special-attack', 55, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (839, 140, 'special-defense', 45, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (840, 140, 'speed', 55, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (841, 141, 'hp', 60, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (842, 141, 'attack', 115, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (843, 141, 'defense', 105, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (844, 141, 'special-attack', 65, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (845, 141, 'special-defense', 70, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (846, 141, 'speed', 80, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (847, 142, 'hp', 80, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (848, 142, 'attack', 105, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (849, 142, 'defense', 65, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (850, 142, 'special-attack', 60, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (851, 142, 'special-defense', 75, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (852, 142, 'speed', 130, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (853, 143, 'hp', 160, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (854, 143, 'attack', 110, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (855, 143, 'defense', 65, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (856, 143, 'special-attack', 65, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (857, 143, 'special-defense', 110, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (858, 143, 'speed', 30, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (859, 144, 'hp', 90, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (860, 144, 'attack', 85, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (861, 144, 'defense', 100, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (862, 144, 'special-attack', 95, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (863, 144, 'special-defense', 125, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (864, 144, 'speed', 85, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (865, 145, 'hp', 90, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (866, 145, 'attack', 90, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (867, 145, 'defense', 85, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (868, 145, 'special-attack', 125, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (869, 145, 'special-defense', 90, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (870, 145, 'speed', 100, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (871, 146, 'hp', 90, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (872, 146, 'attack', 100, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (873, 146, 'defense', 90, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (874, 146, 'special-attack', 125, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (875, 146, 'special-defense', 85, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (876, 146, 'speed', 90, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (877, 147, 'hp', 41, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (878, 147, 'attack', 64, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (879, 147, 'defense', 45, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (880, 147, 'special-attack', 50, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (881, 147, 'special-defense', 50, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (882, 147, 'speed', 50, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (883, 148, 'hp', 61, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (884, 148, 'attack', 84, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (885, 148, 'defense', 65, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (886, 148, 'special-attack', 70, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (887, 148, 'special-defense', 70, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (888, 148, 'speed', 70, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (889, 149, 'hp', 91, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (890, 149, 'attack', 134, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (891, 149, 'defense', 95, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (892, 149, 'special-attack', 100, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (893, 149, 'special-defense', 100, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (894, 149, 'speed', 80, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (895, 150, 'hp', 106, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (896, 150, 'attack', 110, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (897, 150, 'defense', 90, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (898, 150, 'special-attack', 154, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (899, 150, 'special-defense', 90, 0);
INSERT INTO stat (id, pokemon_id, name, value, version) VALUES (900, 150, 'speed', 130, 0);


--
-- Name: stat_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('stat_id_seq', 900, true);


--
-- Data for Name: type; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO type (id, name, version) VALUES (1, 'normal', 0);
INSERT INTO type (id, name, version) VALUES (2, 'fighting', 0);
INSERT INTO type (id, name, version) VALUES (3, 'flying', 0);
INSERT INTO type (id, name, version) VALUES (4, 'poison', 0);
INSERT INTO type (id, name, version) VALUES (5, 'ground', 0);
INSERT INTO type (id, name, version) VALUES (6, 'rock', 0);
INSERT INTO type (id, name, version) VALUES (7, 'bug', 0);
INSERT INTO type (id, name, version) VALUES (8, 'ghost', 0);
INSERT INTO type (id, name, version) VALUES (9, 'steel', 0);
INSERT INTO type (id, name, version) VALUES (10, 'fire', 0);
INSERT INTO type (id, name, version) VALUES (11, 'water', 0);
INSERT INTO type (id, name, version) VALUES (12, 'grass', 0);
INSERT INTO type (id, name, version) VALUES (13, 'electric', 0);
INSERT INTO type (id, name, version) VALUES (14, 'psychic', 0);
INSERT INTO type (id, name, version) VALUES (15, 'ice', 0);
INSERT INTO type (id, name, version) VALUES (16, 'dragon', 0);
INSERT INTO type (id, name, version) VALUES (17, 'fairy', 0);


--
-- Name: type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('type_id_seq', 17, true);

--
-- Name: evolution pk_evolution; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY evolution
    ADD CONSTRAINT pk_evolution PRIMARY KEY (id);


--
-- Name: pokemon pk_pokemon; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pokemon
    ADD CONSTRAINT pk_pokemon PRIMARY KEY (id);


--
-- Name: pokemon_type pk_pokemon_type; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pokemon_type
    ADD CONSTRAINT pk_pokemon_type PRIMARY KEY (id);


--
-- Name: sprite pk_sprite; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sprite
    ADD CONSTRAINT pk_sprite PRIMARY KEY (id);


--
-- Name: stat pk_stat; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY stat
    ADD CONSTRAINT pk_stat PRIMARY KEY (id);


--
-- Name: type pk_type; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY type
    ADD CONSTRAINT pk_type PRIMARY KEY (id);


--
-- Name: pokemon fk_pokemon_evolution_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pokemon
    ADD CONSTRAINT fk_pokemon_evolution_id FOREIGN KEY (evolution_id) REFERENCES evolution(id);


--
-- Name: pokemon_type fk_pokemon_type_pokemon_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pokemon_type
    ADD CONSTRAINT fk_pokemon_type_pokemon_id FOREIGN KEY (pokemon_id) REFERENCES pokemon(id);


--
-- Name: pokemon_type fk_pokemon_type_type_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pokemon_type
    ADD CONSTRAINT fk_pokemon_type_type_id FOREIGN KEY (type_id) REFERENCES type(id);


--
-- Name: sprite fk_sprite_type_pokemon_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sprite
    ADD CONSTRAINT fk_sprite_type_pokemon_id FOREIGN KEY (pokemon_id) REFERENCES pokemon(id);


--
-- Name: stat fk_stat_type_pokemon_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY stat
    ADD CONSTRAINT fk_stat_type_pokemon_id FOREIGN KEY (pokemon_id) REFERENCES pokemon(id);


--
-- PostgreSQL database dump complete
--

