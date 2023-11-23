--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4 (Debian 15.4-2.pgdg120+1)
-- Dumped by pg_dump version 15.3

-- Started on 2023-11-22 20:13:42

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

--
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: pg_database_owner
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO pg_database_owner;

--
-- TOC entry 3395 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: pg_database_owner
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 217 (class 1259 OID 24597)
-- Name: aplauso; Type: TABLE; Schema: public; Owner: myuser
--

CREATE TABLE public.aplauso (
    aplausosid integer NOT NULL,
    duracao character varying NOT NULL
);


ALTER TABLE public.aplauso OWNER TO myuser;

--
-- TOC entry 216 (class 1259 OID 24590)
-- Name: figurino; Type: TABLE; Schema: public; Owner: myuser
--

CREATE TABLE public.figurino (
    figurinosid integer NOT NULL,
    era text,
    estilo text
);


ALTER TABLE public.figurino OWNER TO myuser;

--
-- TOC entry 218 (class 1259 OID 24604)
-- Name: instrumento; Type: TABLE; Schema: public; Owner: myuser
--

CREATE TABLE public.instrumento (
    instrumentosid integer NOT NULL,
    era text,
    cor text
);


ALTER TABLE public.instrumento OWNER TO myuser;

--
-- TOC entry 221 (class 1259 OID 24619)
-- Name: sessao; Type: TABLE; Schema: public; Owner: myuser
--

CREATE TABLE public.sessao (
    id integer NOT NULL,
    figurinoid integer,
    aplausoid integer,
    instrumentoid integer,
    surpresaid integer
);


ALTER TABLE public.sessao OWNER TO myuser;

--
-- TOC entry 220 (class 1259 OID 24618)
-- Name: sessao_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE public.sessao_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sessao_id_seq OWNER TO myuser;

--
-- TOC entry 3396 (class 0 OID 0)
-- Dependencies: 220
-- Name: sessao_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE public.sessao_id_seq OWNED BY public.sessao.id;


--
-- TOC entry 219 (class 1259 OID 24611)
-- Name: surpresa; Type: TABLE; Schema: public; Owner: myuser
--

CREATE TABLE public.surpresa (
    surpresasid integer NOT NULL,
    instrumento text,
    musica text
);


ALTER TABLE public.surpresa OWNER TO myuser;

--
-- TOC entry 215 (class 1259 OID 24580)
-- Name: usuario; Type: TABLE; Schema: public; Owner: myuser
--

CREATE TABLE public.usuario (
    id integer NOT NULL,
    nome character varying(255) NOT NULL,
    telefone character(11) NOT NULL,
    email character varying(255) NOT NULL,
    dados_bancarios character varying(50) NOT NULL
);


ALTER TABLE public.usuario OWNER TO myuser;

--
-- TOC entry 214 (class 1259 OID 24579)
-- Name: usuario_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE public.usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuario_id_seq OWNER TO myuser;

--
-- TOC entry 3397 (class 0 OID 0)
-- Dependencies: 214
-- Name: usuario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE public.usuario_id_seq OWNED BY public.usuario.id;


--
-- TOC entry 3221 (class 2604 OID 24622)
-- Name: sessao id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.sessao ALTER COLUMN id SET DEFAULT nextval('public.sessao_id_seq'::regclass);


--
-- TOC entry 3220 (class 2604 OID 24583)
-- Name: usuario id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.usuario ALTER COLUMN id SET DEFAULT nextval('public.usuario_id_seq'::regclass);


--
-- TOC entry 3385 (class 0 OID 24597)
-- Dependencies: 217
-- Data for Name: aplauso; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY public.aplauso (aplausosid, duracao) FROM stdin;
\.


--
-- TOC entry 3384 (class 0 OID 24590)
-- Dependencies: 216
-- Data for Name: figurino; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY public.figurino (figurinosid, era, estilo) FROM stdin;
\.


--
-- TOC entry 3386 (class 0 OID 24604)
-- Dependencies: 218
-- Data for Name: instrumento; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY public.instrumento (instrumentosid, era, cor) FROM stdin;
\.


--
-- TOC entry 3389 (class 0 OID 24619)
-- Dependencies: 221
-- Data for Name: sessao; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY public.sessao (id, figurinoid, aplausoid, instrumentoid, surpresaid) FROM stdin;
\.


--
-- TOC entry 3387 (class 0 OID 24611)
-- Dependencies: 219
-- Data for Name: surpresa; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY public.surpresa (surpresasid, instrumento, musica) FROM stdin;
\.


--
-- TOC entry 3383 (class 0 OID 24580)
-- Dependencies: 215
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY public.usuario (id, nome, telefone, email, dados_bancarios) FROM stdin;
\.


--
-- TOC entry 3398 (class 0 OID 0)
-- Dependencies: 220
-- Name: sessao_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('public.sessao_id_seq', 1, false);


--
-- TOC entry 3399 (class 0 OID 0)
-- Dependencies: 214
-- Name: usuario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('public.usuario_id_seq', 1, false);


--
-- TOC entry 3229 (class 2606 OID 24603)
-- Name: aplauso aplauso_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.aplauso
    ADD CONSTRAINT aplauso_pkey PRIMARY KEY (aplausosid);


--
-- TOC entry 3227 (class 2606 OID 24596)
-- Name: figurino figurino_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.figurino
    ADD CONSTRAINT figurino_pkey PRIMARY KEY (figurinosid);


--
-- TOC entry 3231 (class 2606 OID 24610)
-- Name: instrumento instrumento_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.instrumento
    ADD CONSTRAINT instrumento_pkey PRIMARY KEY (instrumentosid);


--
-- TOC entry 3235 (class 2606 OID 24624)
-- Name: sessao sessao_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.sessao
    ADD CONSTRAINT sessao_pkey PRIMARY KEY (id);


--
-- TOC entry 3233 (class 2606 OID 24617)
-- Name: surpresa surpresa_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.surpresa
    ADD CONSTRAINT surpresa_pkey PRIMARY KEY (surpresasid);


--
-- TOC entry 3223 (class 2606 OID 24589)
-- Name: usuario usuario_email_key; Type: CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_email_key UNIQUE (email);


--
-- TOC entry 3225 (class 2606 OID 24587)
-- Name: usuario usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);


--
-- TOC entry 3236 (class 2606 OID 24630)
-- Name: sessao sessao_aplausoid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.sessao
    ADD CONSTRAINT sessao_aplausoid_fkey FOREIGN KEY (aplausoid) REFERENCES public.aplauso(aplausosid);


--
-- TOC entry 3237 (class 2606 OID 24625)
-- Name: sessao sessao_figurinoid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.sessao
    ADD CONSTRAINT sessao_figurinoid_fkey FOREIGN KEY (figurinoid) REFERENCES public.figurino(figurinosid);


--
-- TOC entry 3238 (class 2606 OID 24635)
-- Name: sessao sessao_instrumentoid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.sessao
    ADD CONSTRAINT sessao_instrumentoid_fkey FOREIGN KEY (instrumentoid) REFERENCES public.instrumento(instrumentosid);


--
-- TOC entry 3239 (class 2606 OID 24640)
-- Name: sessao sessao_surpresaid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.sessao
    ADD CONSTRAINT sessao_surpresaid_fkey FOREIGN KEY (surpresaid) REFERENCES public.surpresa(surpresasid);


-- Completed on 2023-11-22 20:13:42

--
-- PostgreSQL database dump complete
--

