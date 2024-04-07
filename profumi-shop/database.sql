--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.2

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
-- Name: adminpack; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION adminpack; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: dettagli_ordine; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dettagli_ordine (
    ordine_id integer,
    prodotto_id integer,
    quantita integer
);


ALTER TABLE public.dettagli_ordine OWNER TO postgres;

--
-- Name: ordini; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ordini (
    id integer NOT NULL,
    nome character varying(100),
    cognome character varying(100),
    indirizzo character varying(255),
    cap character varying(10),
    provincia character varying(50),
    comune character varying(100),
    telefono character varying(20),
    email character varying(100),
    data_ordine date,
    totale numeric(10,2)
);


ALTER TABLE public.ordini OWNER TO postgres;

--
-- Name: ordini_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ordini_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ordini_id_seq OWNER TO postgres;

--
-- Name: ordini_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ordini_id_seq OWNED BY public.ordini.id;


--
-- Name: prodotti; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.prodotti (
    id integer NOT NULL,
    nome character varying(255) NOT NULL,
    descrizione text,
    prezzo numeric(10,2) NOT NULL,
    quantita integer NOT NULL,
    categoria character varying(100),
    immagine character varying(255)
);


ALTER TABLE public.prodotti OWNER TO postgres;

--
-- Name: prodotti_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.prodotti_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.prodotti_id_seq OWNER TO postgres;

--
-- Name: prodotti_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.prodotti_id_seq OWNED BY public.prodotti.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(50) NOT NULL,
    password character varying(100) NOT NULL,
    enabled boolean DEFAULT true,
    roles character varying(255)
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: ordini id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ordini ALTER COLUMN id SET DEFAULT nextval('public.ordini_id_seq'::regclass);


--
-- Name: prodotti id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prodotti ALTER COLUMN id SET DEFAULT nextval('public.prodotti_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: dettagli_ordine; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dettagli_ordine (ordine_id, prodotto_id, quantita) FROM stdin;
\.


--
-- Data for Name: ordini; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ordini (id, nome, cognome, indirizzo, cap, provincia, comune, telefono, email, data_ordine, totale) FROM stdin;
\.


--
-- Data for Name: prodotti; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.prodotti (id, nome, descrizione, prezzo, quantita, categoria, immagine) FROM stdin;
5	Dolce&Gabbana The One	L’eau de parfum Dolce & Gabbana The One è semplicemente 💖🌟e unica nel suo genere! ✨💐 Combina note fruttate 🍊🍒 e contemporanee con una palette di fiori bianchi classici 🌼💐. Questo contrasto tra modernità e tradizione è proprio quello che rende questo profumo così straordinario! 🌈💪 Ogni donna è unica al mondo, proprio come questo profumo: The One... 💃🌟	59.99	100	Fragranze femminili	https://i.postimg.cc/Fz2qgVTX/D-GThe-One.jpg
9	Profumo I	Descrizione del profumo I	64.99	100	Fragranze femminili	https://i.postimg.cc/jjsmSGJd/bah-logo.png
10	Profumo J	Descrizione del profumo J	44.99	100	Fragranze maschili	https://i.postimg.cc/jjsmSGJd/bah-logo.png
11	Profumo K	Descrizione del profumo K	69.99	100	Fragranze femminili	https://i.postimg.cc/jjsmSGJd/bah-logo.png
12	Profumo L	Descrizione del profumo L	54.99	100	Fragranze maschili	https://i.postimg.cc/jjsmSGJd/bah-logo.png
13	Profumo M	Descrizione del profumo M	89.99	100	Fragranze femminili	https://i.postimg.cc/jjsmSGJd/bah-logo.png
6	Dolce&Gabbana Light Blue	Lascia che il tuo corpo e la tua mente siano inondati di ☀️ raggi caldi. Al primo fiuto dell’eau de toilette Dolce & Gabbana Light Blue 😍😍, ti ritroverai immediatamente sulle ☀️spiagge siciliane piene di 🌬️ brezza fresca e ☀️ sabbia calda. Puoi vedere chiaramente la promessa di una scintillante notte d’estate. Uno degli ingredienti principali dell’eau de toilette è il cedro siciliano, il cui aroma pervade l’intera composizione fragrante. All’inizio, è integrato dalle note scintillanti di 🍏 mela e campanula delicata. Nel cuore della fragranza c’è un bouquet di gelsomino decadente 🌺 e delicata rosa bianca, rivitalizzata dalla freschezza del 🎋 bambù. Nel 🌱 fondo, note di 🍋 legno di limone aromatico si intrecciano con il muschio animale 🐾e un sensuale accordo ambrato. ✨✨	49.99	100	Fragranze maschili	https://i.postimg.cc/fbt8590w/D-GLight-Blue.jpg
7	Creed Silver Mountain Water	 Creed Silver Mountain Water ✨✨✨ si distingue tra i profumi di nicchia Creed per la dualità di una piramide olfattiva che unisce odori fortemente legati alla terra 🌳🌱, come il sandalo 🌿 e il mandarino 🍊, ad accenni acquatici 💦💧 che sorprendono per eleganza 💃 e persistenza.	79.99	100	Fragranze maschili	https://i.postimg.cc/j2Z6RxJg/Creed-Silver-Mountain-Water.jpg
8	Creed Viking	Viking è una sferzata carica di limone e bergamotto, acuita dall’anima pungente del pepe rosa, che fa percepire fin dalle prime note una scossa di energia. 💪🍋🌿 Un territorio sconosciuto, in bilico tra un senso di freddo glaciale e di calore rovente, è evocato dal soffio della menta piperita e dalla profondità delle spezie. ❄️🔥🌶️ La presenza floreale della rosa bulgara conferisce al jus equilibrio e armonia portandoci alla scoperta delle note di fondo di sandalo, vetiver e patchouli che progressivamente e in modo inaspettato emergono grandiose e potenti. 🌹🌳💥 Altrettanto inattesa la lavanda, intensa e aromatica, a siglare la chiusura della composizione. 🌿💜 Non è un finale, ma una tensione all’apertura… una meta raggiunta rappresenta il punto di partenza per la prossima conquista. 🌅✨🏆	34.99	100	Fragranze maschili	https://i.postimg.cc/vHGMjQhR/Creed-Viking.jpg
1	Versace Eros Flame	🔥💚 Una fragranza che colpisce dritto al cuore 💘💥, che si fa portavoce di un importante messaggio alle nuove generazioni sulla dignità dell'amore e sul potere della diversità. 💪🌈💘 Versace Eros Flame è la fragranza per un uomo 💪❤️ forte, passionale e sicuro di sé, che vive le proprie emozioni sulla pelle. 🥰💪 Una fragranza persistente e avvolgente, che riesce ad essere allo stesso tempo virile, un'ode alla passione e un inno alla voluttà dei sensi. 😍🔥🔥🔥💚 Una fragranza che colpisce dritto al cuore 💘💥, che si fa portavoce di un importante messaggio alle nuove generazioni sulla dignità dell'amore e sul potere della diversità. 💪🌈💘 Versace Eros Flame è la fragranza per un uomo 💪❤️ forte, passionale e sicuro di sé, che vive le proprie emozioni sulla pelle. 🥰💪 Una fragranza persistente e avvolgente, che riesce ad essere allo stesso tempo virile, un'ode alla passione e un inno alla voluttà dei sensi. 😍🔥🔥	49.99	100	Fragranze maschili	https://i.postimg.cc/CLCCh4bB/Versace-Eros-Flame.jpg
2	Versace Eros Eau De Parfum	Eros è la fragranza che traduce il maschile in sublime attraverso un’aura luminosa dalla freschezza intensa, vibrante e straordinaria 😍😎💫, ottenuta grazie alla combinazione di foglie di menta 🌿🌿 con zest di limone italiano 🍋🇮🇹 e mela verde 🍏🍏.	59.99	100	Fragranze maschili	https://i.postimg.cc/2yL1qCq8/Versace-Eros-Eau-De-Profum.jpg
3	Dolce&Gabbana K 	K by Dolce & Gabbana di Dolce&Gabbana è una fragranza ✨ del gruppo Legnoso Aromatico da uomo 🧔. K by Dolce & Gabbana è stato lanciato sul mercato 😎 nel 2019 📅. K by Dolce & Gabbana è stato creato da Daphné Bugey e Nathalie Lorson 👩‍🔬👩‍🔬. Le note di testa sono Bacche di Ginepro, Agrumi 🍊🍋, Arancia Rossa e Limone di Sicilia 🍊🇮🇹; le note di cuore sono Pimento, Lavanda, Salvia Sclarea e Geranio 🌶️🌿; le note di base sono Vetiver, Legno di Cedro e Patchouli 🌿🌳. 😍👌	39.99	100	Fragranze maschili	https://i.postimg.cc/5N0VSspL/Dolce-Gabbana-K-Eau-De-Toilette.jpg
4	Dolce&Gabbana Q	Q by Dolce&Gabbana Eau de Parfum: una composizione per una donna magnetica e passionale. 😍	29.99	100	Fragranze femminili	https://i.postimg.cc/MX2ZLR91/Dolce-Gabbana-Q.jpg
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, username, password, enabled, roles) FROM stdin;
1	mario	fumo	t	
\.


--
-- Name: ordini_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ordini_id_seq', 1, false);


--
-- Name: prodotti_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.prodotti_id_seq', 1, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


--
-- Name: ordini ordini_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ordini
    ADD CONSTRAINT ordini_pkey PRIMARY KEY (id);


--
-- Name: prodotti prodotti_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prodotti
    ADD CONSTRAINT prodotti_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: dettagli_ordine dettagli_ordine_ordine_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dettagli_ordine
    ADD CONSTRAINT dettagli_ordine_ordine_id_fkey FOREIGN KEY (ordine_id) REFERENCES public.ordini(id);


--
-- Name: dettagli_ordine dettagli_ordine_prodotto_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dettagli_ordine
    ADD CONSTRAINT dettagli_ordine_prodotto_id_fkey FOREIGN KEY (prodotto_id) REFERENCES public.prodotti(id);


--
-- PostgreSQL database dump complete
--

