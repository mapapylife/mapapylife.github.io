--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2 (Debian 12.2-2.pgdg100+1)
-- Dumped by pg_dump version 12.2 (Debian 12.2-2.pgdg100+1)

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

ALTER TABLE ONLY public.zones DROP CONSTRAINT zones_pkey;
ALTER TABLE ONLY public.houses DROP CONSTRAINT houses_pkey;
ALTER TABLE ONLY public.events DROP CONSTRAINT events_pkey;
ALTER TABLE ONLY public.blips DROP CONSTRAINT blips_pkey;
ALTER TABLE public.zones ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.houses ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.events ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.blips ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE public.zones_id_seq;
DROP TABLE public.zones;
DROP SEQUENCE public.houses_id_seq;
DROP TABLE public.houses;
DROP SEQUENCE public.events_id_seq;
DROP TABLE public.events;
DROP SEQUENCE public.blips_id_seq;
DROP TABLE public.blips;
SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: blips; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blips (
    id integer NOT NULL,
    x integer NOT NULL,
    y integer NOT NULL,
    name text NOT NULL,
    icon text NOT NULL
);


ALTER TABLE public.blips OWNER TO postgres;

--
-- Name: blips_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.blips_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blips_id_seq OWNER TO postgres;

--
-- Name: blips_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.blips_id_seq OWNED BY public.blips.id;


--
-- Name: events; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.events (
    id integer NOT NULL,
    x integer NOT NULL,
    y integer NOT NULL,
    name text NOT NULL,
    location text NOT NULL,
    description text NOT NULL,
    start_date timestamp without time zone,
    end_date timestamp without time zone,
    post_url text NOT NULL
);


ALTER TABLE public.events OWNER TO postgres;

--
-- Name: events_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.events_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.events_id_seq OWNER TO postgres;

--
-- Name: events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.events_id_seq OWNED BY public.events.id;


--
-- Name: houses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.houses (
    id integer NOT NULL,
    x integer NOT NULL,
    y integer NOT NULL,
    name text NOT NULL,
    location text NOT NULL,
    owner character varying(22),
    price double precision,
    expiry timestamp without time zone,
    last_update timestamp(0) without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.houses OWNER TO postgres;

--
-- Name: houses_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.houses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.houses_id_seq OWNER TO postgres;

--
-- Name: houses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.houses_id_seq OWNED BY public.houses.id;


--
-- Name: zones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.zones (
    id integer NOT NULL,
    name text NOT NULL,
    description text NOT NULL,
    points text NOT NULL
);


ALTER TABLE public.zones OWNER TO postgres;

--
-- Name: zones_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.zones_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.zones_id_seq OWNER TO postgres;

--
-- Name: zones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.zones_id_seq OWNED BY public.zones.id;


--
-- Name: blips id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blips ALTER COLUMN id SET DEFAULT nextval('public.blips_id_seq'::regclass);


--
-- Name: events id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.events ALTER COLUMN id SET DEFAULT nextval('public.events_id_seq'::regclass);


--
-- Name: houses id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.houses ALTER COLUMN id SET DEFAULT nextval('public.houses_id_seq'::regclass);


--
-- Name: zones id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.zones ALTER COLUMN id SET DEFAULT nextval('public.zones_id_seq'::regclass);


--
-- Data for Name: blips; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.blips (id, x, y, name, icon) FROM stdin;
1	-1938	889	Punkt spawnu	icons/Icon_38.png
2	1477	-1710	Punkt spawnu	icons/Icon_38.png
3	2317	83	Punkt spawnu	icons/Icon_38.png
4	44	1213	Punkt spawnu	icons/Icon_38.png
5	-247	2609	Punkt spawnu	icons/Icon_38.png
6	-1478	2654	Punkt spawnu	icons/Icon_38.png
7	-2514	2399	Punkt spawnu	icons/Icon_38.png
8	2419	2379	Punkt spawnu	icons/Icon_38.png
9	1975	2441	Punkt spawnu	icons/Icon_38.png
10	-1080	-1323	Punkt spawnu	icons/Icon_38.png
11	1961	-2182	Port lotniczy	icons/Icon_5.png
12	-1549	-434	Port lotniczy	icons/Icon_5.png
13	1718	1612	Port lotniczy	icons/Icon_5.png
14	362	2555	Port lotniczy	icons/Icon_5.png
15	2138	-2154	Warsztat samochodowy	icons/Icon_27.png
16	-2030	174	Warsztat samochodowy	icons/Icon_27.png
17	-2331	-154	Warsztat samochodowy	icons/Icon_27.png
18	-2349	1010	Warsztat samochodowy	icons/Icon_27.png
19	-2462	2501	Warsztat samochodowy	icons/Icon_27.png
20	-77	1043	Warsztat samochodowy	icons/Icon_27.png
21	110	-165	Warsztat samochodowy	icons/Icon_27.png
22	2581	14	Warsztat samochodowy	icons/Icon_27.png
23	1362	712	Warsztat samochodowy	icons/Icon_27.png
24	1097	1761	Warsztat samochodowy	icons/Icon_27.png
25	1114	1249	Szkoła jazdy	icons/Icon_36.png
26	-233	2709	Szkoła jazdy	icons/Icon_36.png
27	-1730	-109	Szkoła jazdy	icons/Icon_36.png
28	415	2535	Szkoła jazdy	icons/Icon_36.png
29	-1239	54	Szkoła jazdy	icons/Icon_36.png
30	1480	-1769	Urząd miasta	icons/Icon_39.png
31	-2761	376	Urząd miasta	icons/Icon_39.png
32	-204	1119	Urząd miasta	icons/Icon_39.png
33	2445	2375	Urząd miasta	icons/Icon_39.png
34	1985	2487	Przechowalnia pojazdów	icons/Icon_35.png
35	1581	-1408	Przechowalnia pojazdów	icons/Icon_35.png
36	793	-613	Przechowalnia pojazdów	icons/Icon_35.png
37	-1414	-298	Przechowalnia pojazdów	icons/Icon_35.png
38	-1971	881	Przechowalnia pojazdów	icons/Icon_35.png
39	-1961	434	Przechowalnia pojazdów	icons/Icon_35.png
40	-2280	2313	Przechowalnia pojazdów	icons/Icon_35.png
41	140	571	Przechowalnia pojazdów	icons/Icon_35.png
42	2114	-2090	Giełda samochodowa	icons/Icon_55.png
43	-2141	-754	Giełda samochodowa	icons/Icon_55.png
44	1729	1856	Giełda samochodowa	icons/Icon_55.png
45	-1897	-860	Giełda samochodowa	icons/Icon_55.png
46	-2075	1369	Giełda samochodowa	icons/Icon_55.png
47	2783	-2434	Giełda samochodowa	icons/Icon_55.png
48	1144	-1336	Państwowa Straż Pożarna	icons/Icon_20.png
49	1546	-1675	Straż Miejska San Andreas	icons/Icon_30.png
50	2287	2429	San Andreas Police Department	icons/Icon_30.png
51	-2668	625	San Andreas Medical Center	icons/Icon_22.png
52	-215	980	Biuro szeryfa	icons/Icon_30.png
\.


--
-- Data for Name: events; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.events (id, x, y, name, location, description, start_date, end_date, post_url) FROM stdin;
5	-1497	920	Dzień otwarty Sądu Federalnego San Andreas	Garver Bridge	Serdecznie zapraszamy wszystkich na Dzień Otwarty w Sądzie Federalnym, który odbędzie się 23 maja 2020 roku! Cały event rozpocznie się o godzinie 17:00 w gmachu Sądu Federalnego. 	2020-05-23 15:00:00	2020-05-23 18:00:00	https://pylife.pl/news/dzie%C5%84-otwarty-s%C4%85du-federalnego-san-andreas-r748/
3	2386	260	Drift King II	Red County	Grupa Racing Club serdecznie zaprasza do wzięcia udziału w II edycji zawodów Drift King. Jak sama nazwa mówi, będą to zawody prowadzenia pojazdu w kontrolowanym poślizgu. Zapisy odbędą się na forum 04.05.2020 w porze popołudniowej.	2020-05-09 15:00:00	2020-05-09 18:00:00	https://pylife.pl/forums/topic/362018-drift-king-ii-informacje-o-evencie/
2	495	-1850	Dzień motocyklisty Play Your Life 2020r.	Santa Maria Beach	Zarząd MotoClubu oraz Żużla zapraszają na Dzień motocyklisty 2020! Zlot przeznaczony jest dla osób zamiłowanych w temacie jednośladów, mile widziane jest przybycie na własnym.	2020-05-02 16:00:00	2020-05-02 18:00:00	https://pylife.pl/forums/topic/361340-dzie%C5%84-motocyklisty-play-your-life-2020r/
1	-2657	554	Otwarcie toru gokartowego	Santa Flora	Zapraszamy do zapoznania się z trasą i przetrenowania okrążeń - wkrótce uruchomimy na nim wyścig :-).	2020-04-12 10:29:00	\N	https://pylife.pl/news/otwarcie-toru-gokartowego-r731/
4	836	-2047	Dzień Strażaka 2020	Verona Beach	Dzień strażaka już za nami? Trochę prawdy w tym jest, jednak z ogromną przyjemnością Państwowa Straż Pożarna ma zaszczyt zaprosić wszystkich graczy serwera na świętowanie jakże tego wspaniałego dnia.	2020-05-08 13:00:00	2020-05-08 18:00:00	https://pylife.pl/news/dzie%C5%84-stra%C5%BCaka-2020-r745/
\.


--
-- Data for Name: houses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.houses (id, x, y, name, location, owner, price, expiry, last_update) FROM stdin;
263	-36	1115	Dom jednorodzinny	Fort Carson	\N	100	\N	2020-10-21 16:00:02
306	1844	718	Melina Dzakasa	Last Dime Motel	Maniekxx	80	2020-10-21 22:00:00	2020-10-12 21:35:03
1	1928	-1776	Stacja paliw	Idlewood	Interferon	6	2021-05-22 22:00:00	2020-07-18 15:05:02
264	-360	1141	Dom jednorodzinny	Fort Carson	\N	180	\N	2020-10-21 16:00:02
348	142	-1470	Dom	Rodeo	alissonhuan	100	2020-10-23 22:00:00	2020-10-17 18:55:03
639	-553	2593	Siedziba gangu	Tierra Robada	Terroryzm	500	2020-10-21 22:00:00	2020-10-13 12:35:02
265	-362	1110	Dom jednorodzinny	Fort Carson	\N	100	\N	2020-10-21 16:00:02
267	-298	1115	Dom jednorodzinny	Fort Carson	\N	70	\N	2020-10-21 16:00:02
268	-328	1118	Dom jednorodzinny	Fort Carson	\N	70	\N	2020-10-21 16:00:02
291	2018	2664	Dom jednorodzinny	Prickle Pine	\N	550	\N	2020-10-21 16:00:02
424	2476	1330	Biuro	The Camel's Toe	M@teck!*	650	2020-10-21 22:00:00	2020-10-11 22:15:02
272	-258	1151	Dom jednorodzinny	Fort Carson	\N	120	\N	2020-10-21 16:00:02
295	13	1220	Kawalerka w szeregowcu	Fort Carson	\N	55	\N	2020-10-21 16:00:02
297	13	1210	Kawalerka w szeregowcu	Fort Carson	\N	55	\N	2020-10-21 16:00:02
299	-26	1215	Kawalerka w szeregowcu	Fort Carson	\N	55	\N	2020-10-21 16:00:02
309	2056	2665	Dom Jednorodzinny	Prickle Pine	\N	150	\N	2020-10-21 16:00:02
303	1845	741	Kanciapa Zgreda	Last Dime Motel	\N	80	\N	2020-10-21 16:00:02
305	1844	690	Domek jednorodzinny	Last Dime Motel	\N	80	\N	2020-10-21 16:00:02
1231	1992	2764	Dom	Prickle Pine	\N	700	\N	2020-10-21 16:00:02
351	2441	1224	Kawalerka	The Camel's Toe	\N	50	\N	2020-10-21 16:00:02
380	736	-556	Dom Jednorodzinny	Dillimore	\N	250	\N	2020-10-21 16:00:02
361	-2421	2406	Dom	Bayside	\N	100	\N	2020-10-21 16:00:02
379	745	-591	Dom Jednorodzinny	Dillimore	\N	250	\N	2020-10-21 16:00:02
402	-2699	1422	Garaż 7	Battery Point	\N	30	\N	2020-10-21 16:00:02
403	-2699	1430	Garaż 8	Battery Point	\N	30	\N	2020-10-21 16:00:02
404	-2692	1451	Garaż 9	Battery Point	\N	150	\N	2020-10-21 16:00:02
405	-2684	1451	Garaż 10	Battery Point	\N	150	\N	2020-10-21 16:00:02
711	-2524	1216	Baza	Juniper Hollow	Matu	200	2020-10-24 22:00:00	2020-10-15 16:00:02
407	-2669	1451	Garaż 12	Battery Point	\N	30	\N	2020-10-21 16:00:02
762	1357	1	Dom	Red County	\N	200	\N	2020-10-21 16:00:02
444	2285	161	Dom parterowy	Palomino Creek	\N	200	\N	2020-10-21 16:00:02
468	2373	42	Dom	Palomino Creek	\N	200	\N	2020-10-21 16:00:02
649	189	-1308	Forteca	Richman	\N	900	\N	2020-10-21 16:00:02
481	2245	-122	Domek parterowy	Palomino Creek	\N	200	\N	2020-10-21 16:00:02
519	-2161	-2535	Dom jednorodzinny	Angel Pine	\N	100	\N	2020-10-21 16:00:02
518	-2180	-2520	Dom jednorodzinny	Angel Pine	\N	100	\N	2020-10-21 16:00:02
534	1575	2844	Dom	Prickle Pine	\N	220	\N	2020-10-21 16:00:02
538	2393	-68	Kawalerka	Palomino Creek	\N	45	\N	2020-10-21 16:00:02
541	1332	-633	Willa	Mulholland	\N	620	\N	2020-10-21 16:00:02
548	2141	70	Kawalerka	Red County	\N	75	\N	2020-10-21 16:00:02
577	1877	-1846	Komis Samochodowy LS 4	Idlewood	\N	655.35	\N	2020-10-21 16:00:02
950	1744	770	Mieszkanie	Randolph Industrial Estate	\N	150	\N	2020-10-21 16:00:02
1150	1962	2347	Kawalerka	Redsands East	\N	99	\N	2020-10-21 16:00:02
1233	1989	2068	Garaż	Redsands East	\N	250	\N	2020-10-21 16:00:02
1114	992	-1460	Dom	Market	iSnapeq03*rct	400	2020-10-26 23:00:00	2020-10-18 15:00:02
542	-828	1440	Biuro komisu	Las Barrancas	Miaukai	655	2020-10-22 22:00:00	2020-10-15 09:00:02
904	1480	2213	Siedziba organizacji	Redsands West	Saracen	1500	2020-10-27 23:00:00	2020-10-18 08:00:02
736	374	-76	Dom	Red County	Andrzej_Taxowkarz	200	2020-10-22 22:00:00	2020-10-13 11:00:02
578	-2395	-137	Komis Samochodowy San Fierro 2	Garcia	NikeVision_	655.35	2020-10-23 22:00:00	2020-10-14 09:15:03
346	827	-858	Dom	Mulholland	Below	100	2020-10-22 22:00:00	2020-10-13 07:55:02
612	-2456	503	Dom	Queens	SticK*	800	2020-10-21 22:00:00	2020-10-15 09:30:02
270	-258	1043	Dom jednorodzinny	Fort Carson	\N	70	\N	2020-10-21 16:00:02
581	-2089	-2437	Komis Samochodowy Angel Pine	Angel Pine	Fraczek.	655.35	2020-10-28 23:00:00	2020-10-19 03:55:03
413	-92	1365	Biuro komisu	Bone County	Kubsonsi	650	2020-10-26 23:00:00	2020-10-20 01:25:02
560	-792	1627	Biuro komisu	Las Barrancas	NeQu*	650	2020-10-21 22:00:00	2020-10-21 08:40:03
273	-260	1120	Dom jednorodzinny	Fort Carson	\N	110	\N	2020-10-21 16:00:02
580	1215	-975	Komis Samochodowy LS 5	Temple	MajCool	655.35	2020-10-22 22:00:00	2020-10-16 20:55:02
276	-45	1081	Dom jednorodzinny	Fort Carson	|LCW|Firemo|Boss|	120	2020-10-28 23:00:00	2020-10-18 22:20:02
582	2208	128	Komis Samochodowy PC 3	Palomino Creek	Marrcio23*	655.35	2020-10-24 22:00:00	2020-10-15 00:55:02
275	-258	1083	Dom jednorodzinny	Fort Carson	\N	120	\N	2020-10-21 16:00:02
278	-32	1038	Dom jednorodzinny	Fort Carson	\N	120	\N	2020-10-21 16:00:02
279	-247	1001	Dom jednorodzinny	Fort Carson	\N	110	\N	2020-10-21 16:00:02
281	0	1178	Kawalerka w szeregowcu	Fort Carson	\N	40	\N	2020-10-21 16:00:02
282	0	1185	Kawalerka w szeregowcu	Fort Carson	\N	40	\N	2020-10-21 16:00:02
425	-1973	573	Biuro autokomisu	Downtown	|KOMIS|Schlodzony_BOLS	650	2020-10-25 23:00:00	2020-10-16 09:00:02
290	-258	1168	Dom jednorodzinny	Fort Carson	\N	110	\N	2020-10-21 16:00:02
286	983	1878	Dom jednorodzinny	Whitewood Estates	\N	190	\N	2020-10-21 16:00:02
288	885	2047	Dom jednorodzinny	Whitewood Estates	\N	220	\N	2020-10-21 16:00:02
289	885	1980	Dom jednorodzinny	Whitewood Estates	\N	160.5	\N	2020-10-21 16:00:02
292	78	1161	Kawalerka	Fort Carson	\N	50	\N	2020-10-21 16:00:02
307	-2088	2477	Domek na wzgorzu	Tierra Robada	\N	655.35	\N	2020-10-21 16:00:02
311	1029	1905	Dom jednorodzinny	Whitewood Estates	\N	250	\N	2020-10-21 16:00:02
313	1030	1847	Dom jednorodzinny	Whitewood Estates	\N	250	\N	2020-10-21 16:00:02
334	2498	-1642	Dom	Ganton	\N	100	\N	2020-10-21 16:00:02
312	1030	1876	Dom jednorodzinny	Whitewood Estates	CiasteK.vin	850	2020-10-22 22:00:00	2020-10-20 22:00:02
434	687	-445	Kawalerka	Dillimore	luziferbalboa	50	2020-10-21 22:00:00	2020-10-12 21:00:02
438	-2641	935	Mieszkanie	Paradiso	\N	100	\N	2020-10-21 16:00:02
370	1929	2774	Dom	Prickle Pine	\N	800	\N	2020-10-21 16:00:02
343	1527	-772	Dom	Mulholland Intersection	\N	100	\N	2020-10-21 16:00:02
433	2451	1299	Kawalerka	The Camel's Toe	\N	50	\N	2020-10-21 16:00:02
423	252	-92	Dom	Blueberry	\N	100	\N	2020-10-21 16:00:02
435	-2099	897	Mieszkanie	Calton Heights	\N	800	\N	2020-10-21 16:00:02
432	-369	1169	Siedziba gangu	Fort Carson	\N	350	\N	2020-10-21 16:00:02
441	2249	111	Dom parterowy	Palomino Creek	\N	200	\N	2020-10-21 16:00:02
820	2368	655	Dom	Rockshore West	\N	80	\N	2020-10-21 16:00:02
467	2203	62	Dom	Palomino Creek	\N	200	\N	2020-10-21 16:00:02
614	1658	2250	Kasyno	Redsands West	veizzo	200	2020-10-30 23:00:00	2020-10-21 11:00:02
443	2323	116	Dom parterowy	Palomino Creek	\N	200	\N	2020-10-21 16:00:02
520	2427	174	Domek parterowy z garazem	Palomino Creek	\N	250	\N	2020-10-21 16:00:02
488	2480	126	Kawalerka	Palomino Creek	\N	50	\N	2020-10-21 16:00:02
1093	2118	2416	Dom	The Emerald Isle	RamboPL.	150	2020-10-27 23:00:00	2020-10-18 21:00:03
1009	-2029	-123	Dom	Doherty	\N	200	\N	2020-10-21 16:00:02
923	842	399	Przyczepa	Red County	Maga	100	2021-02-01 23:00:00	2020-08-01 22:00:03
42549	-2281	-170	Stacja paliw	Garcia	Maga	50	2021-06-10 22:00:00	2020-05-24 21:00:03
826	923	-783	Dom	Los Santos	Samotny.|K|	450	2020-10-27 23:00:00	2020-10-18 07:00:02
886	1086	2121	magazyn	Whitewood Estates	|WAR-PJ|Nazarbajew	120	2020-10-29 23:00:00	2020-10-20 22:00:02
600	-314	1774	Baza gangu	Regular Tom	$$cj$$	200	2020-10-26 23:00:00	2020-10-18 14:00:03
654	-299	1573	Baza gangu	'The Big Ear'	MrDiablo7	250	2020-10-25 23:00:00	2020-10-16 07:00:02
42528	1461	2027	Apartament	Redsands West	\N	500	\N	2020-10-21 16:00:02
644	725	-1440	Kawalerka	Marina	veizzo	50	2020-10-26 23:00:00	2020-10-17 20:00:03
358	-1989	807	Dom	Calton Heights	ROKNES	200	2020-10-22 22:00:00	2020-10-16 16:20:03
562	2580	66	Komis Samochodowy Palomino 2	Hankypanky Point	|Gwiazdeczka|SouthStar	655.35	2020-10-27 23:00:00	2020-10-21 13:55:02
647	298	-1338	Baza gangu	Richman	Kubsonsi	500	2020-10-21 22:00:00	2020-10-20 01:25:02
316	-2437	2354	Domek parterowy	Bayside	Mejzon	100	2020-10-26 23:00:00	2020-10-17 10:00:02
260	12	1113	Dom wielorodzinny	Fort Carson	\N	300.5	\N	2020-10-21 16:00:02
262	-168	2707	Dom jednorodzinny	Las Payasadas	\N	180	\N	2020-10-21 16:00:02
352	2437	1235	Kawalerka	The Camel's Toe	\N	50	\N	2020-10-21 16:00:02
354	-2018	832	Dom	Calton Heights	\N	200	\N	2020-10-21 16:00:02
365	-2348	2423	Dom	Bayside Marina	jiminpark1	200	2020-10-26 23:00:00	2020-10-20 09:00:03
514	-1666	1202	Biuro komisu	Downtown	AFX	655	2022-10-19 22:00:00	2020-04-20 02:00:03
587	1520	-1453	Dom	Commerce	Kasy	800	2020-12-07 23:00:00	2020-05-02 18:25:02
440	1653	-1654	Komis samochodowy	Commerce	\N	655.35	\N	2020-10-21 16:00:02
442	2269	111	Dom parterowy	Palomino Creek	\N	200	\N	2020-10-21 16:00:02
449	2480	-1536	Komis samochodowy	East Los Santos	\N	655.35	\N	2020-10-21 16:00:02
491	2512	135	Kawalerka z garazem	Palomino Creek	\N	100	\N	2020-10-21 16:00:02
697	984	2343	Domek parterowy	Whitewood Estates	\N	150	\N	2020-10-21 16:00:02
478	2323	191	Domek parterowy	Palomino Creek	\N	200	\N	2020-10-21 16:00:02
499	2414	-65	Kawalerka	Palomino Creek	\N	50	\N	2020-10-21 16:00:02
463	2476	-1383	Melina	East Los Santos	\N	150	\N	2020-10-21 16:00:02
479	2364	187	Domek parterowy	Palomino Creek	\N	800	\N	2020-10-21 16:00:02
482	2383	-54	Kawalerka	Palomino Creek	\N	50	\N	2020-10-21 16:00:02
484	2373	-8	Domek parterowy z garazem	Palomino Creek	\N	240	\N	2020-10-21 16:00:02
500	2415	-52	Kawalerka	Palomino Creek	\N	50	\N	2020-10-21 16:00:02
489	2518	58	Kawalerka	Palomino Creek	\N	50	\N	2020-10-21 16:00:02
495	2556	26	Kawalerka	Palomino Creek	\N	75	\N	2020-10-21 16:00:02
497	2558	62	Kawalerka z garazem	Palomino Creek	\N	125	\N	2020-10-21 16:00:02
504	2197	-60	Domek parterowy	Palomino Creek	\N	200	\N	2020-10-21 16:00:02
501	2536	128	Kawalerka	Palomino Creek	\N	50	\N	2020-10-21 16:00:02
42545	1089	1758	Stacja paliw	Whitewood Estates	Maga	50	2021-05-06 22:00:00	2020-05-24 12:00:02
502	2488	11	Kawalerka	Palomino Creek	\N	50	\N	2020-10-21 16:00:02
503	2199	-37	Domek parterowy	Palomino Creek	\N	200	\N	2020-10-21 16:00:02
505	2557	87	Kawalerka	Palomino Creek	\N	50	\N	2020-10-21 16:00:02
506	2551	-5	Kawalerka	Palomino Creek	\N	50	\N	2020-10-21 16:00:02
508	2373	71	Domek parterowy LUX	Palomino Creek	\N	300	\N	2020-10-21 16:00:02
42546	677	1257	Stacja paliw	Bone County	Maga	50	2021-08-11 22:00:00	2020-05-24 12:00:02
515	541	2362	Biuro komisu	Bone County	_czarny	655	2020-10-29 23:00:00	2020-10-21 12:00:03
556	2166	69	Kawalerka	Palomino Creek	\N	75	\N	2020-10-21 16:00:02
540	2484	87	Kawalerka z garazem	Palomino Creek	\N	80	\N	2020-10-21 16:00:02
544	2141	63	Kawalerka	Red County	\N	75	\N	2020-10-21 16:00:02
42538	663	-552	Stacja paliw	Dillimore	Maga	50	2021-08-27 22:00:00	2020-05-24 10:00:03
545	2141	70	Kawalerka	Red County	\N	75	\N	2020-10-21 16:00:02
613	2880	1002	Dom	Linden Side	\N	150	\N	2020-10-21 16:00:02
642	2481	1525	Baza gangu	Pilgrim	\N	500	\N	2020-10-21 16:00:02
651	747	278	Domek jednorodzinny	Hampton Barns	\N	100	\N	2020-10-21 16:00:02
793	1363	1931	Kawalerka	Redsands West	\N	95	\N	2020-10-21 16:00:02
888	2303	1958	Dom żula	Starfish Casino	\N	400	\N	2020-10-21 16:00:02
579	-1493	680	Komis Samochodowy SF 3	Esplanade East	T.H.P.B.N.P|BIGGI|	655.35	2020-10-24 22:00:00	2020-10-17 23:20:03
426	-2066	786	Dom	Calton Heights	\N	100	\N	2020-10-21 16:00:02
284	26	1167	Kawalerka w szeregowcu	Fort Carson	\N	40	\N	2020-10-21 16:00:02
42526	-1271	2713	Komis w Tierra Robada	Tierra Robada	Pawekss26	650	2020-10-22 22:00:00	2020-10-21 06:45:02
364	-2523	2238	Dom	Bayside	Krzysiowski	100	2020-10-21 22:00:00	2020-10-12 20:00:03
1107	2227	1837	Dom	The Clown's Pocket	spejsonNH|krzyzyk|6828	500	2020-10-22 22:00:00	2020-10-16 22:15:03
369	1456	2773	Willa	Yellow Bell Golf Course	Kris13*	1100	2020-10-21 22:00:00	2020-10-15 23:00:03
328	-2790	-82	Dom obok plaży	Ocean Flats	\N	200	\N	2020-10-21 16:00:02
363	-2552	2266	Dom	Bayside	\N	100	\N	2020-10-21 16:00:02
367	300	-1154	Willa	Richman	\N	900	\N	2020-10-21 16:00:02
368	646	-1117	Dom	Richman	\N	100	\N	2020-10-21 16:00:02
394	691	-625	Kawalerka	Dillimore	\N	50	\N	2020-10-21 16:00:02
445	2203	106	Dom parterowy	Palomino Creek	\N	200	\N	2020-10-21 16:00:02
509	2258	168	Domek parterowy LUX	Palomino Creek	\N	300	\N	2020-10-21 16:00:02
610	2016	1916	Siedziba gangu	The Visage	Villa*frc	500	2020-10-28 23:00:00	2020-10-20 02:00:03
510	2510	88	Domek jednorodzinny	Palomino Creek	\N	60	\N	2020-10-21 16:00:02
512	2622	226	Chata	Hankypanky Point	\N	180	\N	2020-10-21 16:00:02
535	-683	939	Zejscie do podziemi	Tierra Robada	.:|SMSA|OLCIU|:.*cvt	550	2020-10-21 22:00:00	2020-10-12 16:00:02
599	-2710	967	Mieszkanie	Paradiso	NikeVision_	100	2020-10-22 22:00:00	2020-10-13 20:00:02
527	-2214	-2451	Dom Jednorodzinny	Angel Pine	\N	100	\N	2020-10-21 16:00:02
511	2617	237	Chata	Hankypanky Point	\N	180	\N	2020-10-21 16:00:02
513	2551	-30	Willa	Palomino Creek	\N	500	\N	2020-10-21 16:00:02
319	1122	-2036	Willa Rządu	Verdant Bluffs	Maga	100	2024-08-18 22:00:00	2020-04-20 02:00:03
517	-2199	-2512	Dom jednorodzinny	Angel Pine	\N	100	\N	2020-10-21 16:00:02
564	2262	2035	Biuro komisu	Old Venturas Strip	Andrzej_Taxowkarz	655	2020-10-22 22:00:00	2020-10-13 11:00:02
688	1359	-1853	Hotel	Verdant Bluffs	AFX	1500	2025-05-09 22:00:00	2020-04-20 02:00:03
528	-2220	-2399	Dom Jednorodzinny	Angel Pine	\N	100	\N	2020-10-21 16:00:02
529	-2239	-2423	Dom Jednorodzinny	Angel Pine	\N	250	\N	2020-10-21 16:00:02
530	-2173	-2481	Dom Jednorodzinny	Angel Pine	\N	100	\N	2020-10-21 16:00:02
531	-2134	-2504	Dom Jednorodzinny	Angel Pine	\N	100	\N	2020-10-21 16:00:02
532	2588	182	Domek na zboczu	Hankypanky Point	\N	290	\N	2020-10-21 16:00:02
566	2479	133	Kawalerka	Palomino Creek	\N	55	\N	2020-10-21 16:00:02
554	2173	62	Kawalerka	Palomino Creek	\N	75	\N	2020-10-21 16:00:02
543	2141	63	Kawalerka	Red County	\N	75	\N	2020-10-21 16:00:02
589	1870	-2021	Kawalerka	El Corona	\N	50	\N	2020-10-21 16:00:02
594	-89	-1564	Kawalerka	Flint Intersection	\N	50	\N	2020-10-21 16:00:02
595	-91	-1592	Kawalerka	Flint Intersection	\N	50	\N	2020-10-21 16:00:02
648	-2162	-225	Dom	Doherty	\N	500	\N	2020-10-21 16:00:02
627	239	-301	Kawalerka	Blueberry	\N	50	\N	2020-10-21 16:00:02
637	-311	1303	Siedziba gangu	Bone County	\N	500	\N	2020-10-21 16:00:02
659	1107	-316	Mały domek	Hilltop Farm	\N	80	\N	2020-10-21 16:00:02
830	-2690	-2126	Dom	Mount Chiliad	\N	645	\N	2020-10-21 16:00:02
716	2351	-646	Domek na zadupiu	North Rock	\N	70	\N	2020-10-21 16:00:02
680	2011	694	Dom	Rockshore West	\N	100	\N	2020-10-21 16:00:02
42551	-2449	2228	Stacja paliw	Bayside	Maga	50	2021-09-29 22:00:00	2020-06-13 22:00:03
1021	2315	1801	Kanciapa	The Clown's Pocket	Pawex	100	2020-10-25 23:00:00	2020-10-16 19:00:02
42525	2877	2174	Komis w Creek	Creek	kNiemiec*	650	2020-10-25 23:00:00	2020-10-18 11:00:03
42533	-2231	-2558	Stacja paliw	Angel Pine	Maga	50	2021-09-29 22:00:00	2020-05-24 09:00:03
42535	-241	-249	Stacja paliw	Red County	Maga	50	2021-08-13 22:00:00	2020-05-24 09:00:03
42534	-1623	-2693	Stacja paliw	Whetstone	Maga	50	2021-10-22 22:00:00	2020-05-24 09:00:03
465	691	-1275	Willa	Vinewood	zeluch_	600	2020-10-22 22:00:00	2020-10-13 20:10:02
677	200	106	Dom	Blueberry	Johny1605	800	2020-10-22 22:00:00	2020-10-16 11:30:03
882	-2225	286	Komis samochodowy	King's	Aoda	655	2020-10-29 23:00:00	2020-10-20 11:20:02
880	-1862	-145	Komis Doherty SF	Doherty	Karmol	655	2020-10-21 22:00:00	2020-10-21 07:50:02
317	2524	-1658	Dom	Ganton	\N	100	\N	2020-10-21 16:00:02
585	254	-1367	Willa w Richman	Richman	.:|SMSA|OLCIU|:.*cvt	650	2020-10-21 22:00:00	2020-10-12 16:00:02
1223	-2722	-166	dom	Ocean Flats	\N	800	\N	2020-10-21 16:00:02
645	725	-1451	Kawalerka	Marina	veizzo	50	2020-10-26 23:00:00	2020-10-17 20:00:03
372	-2409	2454	Dom	Bayside	\N	150	\N	2020-10-21 16:00:02
464	2468	-1398	Melina	East Los Santos	\N	100	\N	2020-10-21 16:00:02
492	2236	168	Domek parterowy	Palomino Creek	\N	200	\N	2020-10-21 16:00:02
536	2458	128	Kawalerka	Palomino Creek	\N	70	\N	2020-10-21 16:00:02
569	2511	57	Kawalerka	Palomino Creek	\N	55	\N	2020-10-21 16:00:02
559	2481	64	Kawalerka	Palomino Creek	\N	75	\N	2020-10-21 16:00:02
568	2541	136	Kawalerka	Palomino Creek	\N	55	\N	2020-10-21 16:00:02
565	2551	91	Kawalerka	Palomino Creek	\N	50	\N	2020-10-21 16:00:02
571	2514	94	Kawalerka	Palomino Creek	\N	55	\N	2020-10-21 16:00:02
575	2316	-61	Kawalerka	Palomino Creek	\N	50	\N	2020-10-21 16:00:02
586	2484	-28	Kawalerka	Palomino Creek	\N	50	\N	2020-10-21 16:00:02
588	1907	-2040	Kawalerka	El Corona	\N	50	\N	2020-10-21 16:00:02
624	252	-274	Kawalerka	Blueberry	\N	250	\N	2020-10-21 16:00:02
640	-2379	2444	Dom	Bayside	\N	200	\N	2020-10-21 16:00:02
602	-2720	923	Dom	Paradiso	\N	100	\N	2020-10-21 16:00:02
603	-2655	985	Domek LUX	Paradiso	\N	200	\N	2020-10-21 16:00:02
604	-2662	876	Domek LUX	Paradiso	\N	200	\N	2020-10-21 16:00:02
605	-2591	927	Kawalerka	Paradiso	\N	50	\N	2020-10-21 16:00:02
606	-2591	960	Mieszkanie	Paradiso	\N	100	\N	2020-10-21 16:00:02
607	-2542	942	Kawalerka	Paradiso	\N	50	\N	2020-10-21 16:00:02
608	-2510	942	Kawalerka	Juniper Hill	\N	50	\N	2020-10-21 16:00:02
609	-2640	730	Mieszkanie	Santa Flora	\N	100	\N	2020-10-21 16:00:02
611	2438	-54	Kawalerka	Palomino Creek	\N	50	\N	2020-10-21 16:00:02
616	-31	-2487	Kawalerka	Flint County	\N	50	\N	2020-10-21 16:00:02
618	-9	-2505	Kawalerka	Flint County	\N	50	\N	2020-10-21 16:00:02
623	2411	-5	Kawalerka	Palomino Creek	\N	50	\N	2020-10-21 16:00:02
629	1283	158	Kawalerka	Montgomery	\N	50	\N	2020-10-21 16:00:02
630	1294	157	Kawalerka	Montgomery	\N	50	\N	2020-10-21 16:00:02
652	748	257	Dom Jednorodzinny	Red County	\N	100	\N	2020-10-21 16:00:02
755	723	269	Dom	Hampton Barns	\N	80	\N	2020-10-21 16:00:02
657	1288	417	Warsztat modyfikacji pojazdów	Montgomery	N.	300	2020-10-21 22:00:00	2020-10-20 22:00:02
674	2509	11	Dom jednorodzinny	Palomino Creek	\N	150	\N	2020-10-21 16:00:02
679	2006	696	Domek	Rockshore West	\N	100	\N	2020-10-21 16:00:02
713	-2027	-40	Kawalerka	Doherty	\N	150	\N	2020-10-21 16:00:02
730	1811	2587	Dom	Prickle Pine	\N	150	\N	2020-10-21 16:00:02
754	758	374	Dom	Red County	xManius69	80	2020-10-23 22:00:00	2020-10-14 21:00:02
42536	-78	-1170	Stacja paliw	Flint County	Maga	50	2021-09-16 22:00:00	2020-05-24 09:00:03
910	1653	-1842	Garaż	Verdant Bluffs	|WAR-PJ|Nazarbajew	30	2020-10-29 23:00:00	2020-10-20 22:00:02
738	1645	2127	Dom	Redsands West	\N	150	\N	2020-10-21 16:00:02
1008	-2074	-141	Dom	Doherty	\N	200	\N	2020-10-21 16:00:02
42537	1000	-919	Stacja paliw	Mulholland	Maga	50	2021-07-15 22:00:00	2020-05-24 09:00:03
42540	2222	-116	Stacja paliw	Palomino Creek	Maga	50	2021-06-18 22:00:00	2020-05-24 10:00:03
658	-2717	199	Warsztat modyfikacji pojazdów	Ocean Flats	|SAPD|Edyta	500	2020-10-21 22:00:00	2020-10-21 07:25:02
344	1535	-800	Dom	Mulholland Intersection	\N	500	\N	2020-10-21 16:00:02
345	1540	-851	Dom	Mulholland Intersection	\N	150	\N	2020-10-21 16:00:02
382	818	-509	Dom Jednorodzinny	Dillimore	\N	250	\N	2020-10-21 16:00:02
383	795	-506	Dom Jednorodzinny	Dillimore	\N	250	\N	2020-10-21 16:00:02
384	768	-503	Dom Jednorodzinny	Dillimore	\N	250	\N	2020-10-21 16:00:02
469	2264	59	Kawalerka	Palomino Creek	\N	50	\N	2020-10-21 16:00:02
636	327	-1512	Willa Organizacji	Rodeo	|TUNE-LS||TAXI|Mietek	550	2020-10-25 23:00:00	2020-10-18 14:05:02
318	2495	-1691	Dom	Ganton	Red_Devil*Man_UTD*	200	2020-10-24 22:00:00	2020-10-18 18:50:03
537	2558	-11	Kawalerka	Palomino Creek	\N	70	\N	2020-10-21 16:00:02
553	2166	69	Kawalerka	Palomino Creek	\N	75	\N	2020-10-21 16:00:02
557	2173	62	Kawalerka	Palomino Creek	\N	75	\N	2020-10-21 16:00:02
596	2151	-1717	Mieszkanie	Idlewood	\N	210	\N	2020-10-21 16:00:02
615	-40	-2493	Kawalerka	Flint County	\N	50	\N	2020-10-21 16:00:02
660	2650	-2021	Dom z warsztatem	Willowfield	|WAR^PJ|.RisK	1000	2020-10-21 22:00:00	2020-10-12 20:00:03
619	-8	-2522	Kawalerka	Flint County	\N	50	\N	2020-10-21 16:00:02
622	2418	-11	Kawalerka	Palomino Creek	\N	50	\N	2020-10-21 16:00:02
631	1299	140	Kawalerka	Montgomery	\N	50	\N	2020-10-21 16:00:02
632	1311	169	Kawalerka	Montgomery	\N	50	\N	2020-10-21 16:00:02
633	1315	180	Kawalerka	Montgomery	\N	50	\N	2020-10-21 16:00:02
634	1303	186	Kawalerka	Montgomery	\N	50	\N	2020-10-21 16:00:02
641	1094	-647	Domek	Red County	\N	500	\N	2020-10-21 16:00:02
646	739	-1428	Baza gangu	Marina	\N	500	\N	2020-10-21 16:00:02
655	1106	-299	Chata na wsi	Hilltop Farm	\N	300	\N	2020-10-21 16:00:02
669	-1499	1960	Kawalerka	Tierra Robada	\N	80	\N	2020-10-21 16:00:02
668	-36	2350	Baza gangu	El Castillo del Diablo	\N	300	\N	2020-10-21 16:00:02
670	2245	-1	Domek jednorodzinny	Palomino Creek	\N	100	\N	2020-10-21 16:00:02
664	-2193	-2254	Pokój w Motelu	Angel Pine	\N	75.99	\N	2020-10-21 16:00:02
761	1406	-14	Dom	Red County	\N	150	\N	2020-10-21 16:00:02
696	315	-1769	Dom	Santa Maria Beach	|MALINA|Arizona	250	2020-10-21 22:00:00	2020-10-12 14:00:03
682	2065	649	Domek parterowy	Rockshore West	\N	200	\N	2020-10-21 16:00:02
877	1974	-1671	Kawalerka	Idlewood	\N	90	\N	2020-10-21 16:00:02
42542	2637	1129	Stacja paliw	Las Venturas	Maga	50	2021-08-26 22:00:00	2020-05-24 11:00:03
876	1970	-1671	Kawalerka	Idlewood	\N	90	\N	2020-10-21 16:00:02
722	-382	-1438	Domek	Flint Range	\N	150	\N	2020-10-21 16:00:02
878	1974	-1671	Kawalerka	Idlewood	\N	90	\N	2020-10-21 16:00:02
875	963	349	Baza gangu	Red County	iSnapeq03*rct	400	2020-10-25 23:00:00	2020-10-18 15:00:02
671	2443	61	Domek parterowy	Palomino Creek	\N	240	\N	2020-10-21 16:00:02
698	275	2648	Domek	Verdant Meadows	\N	90	\N	2020-10-21 16:00:02
934	1716	687	Dom	Randolph Industrial Estate	\N	800	\N	2020-10-21 16:00:02
885	2196	1677	Kasyno Caligula	Caligula's Palace	\N	650	\N	2020-10-21 16:00:02
692	-18	1115	Domek parterowy	Fort Carson	LeoPijak	150	2020-10-21 22:00:00	2020-10-14 17:00:03
1029	-1715	1017	Garaż Kolekcjonera	Financial	|WAR-PJ|Nazarbajew	75	2020-10-29 23:00:00	2020-10-20 22:00:02
912	1782	-2126	Dom	El Corona	Maga	110	2021-03-23 23:00:00	2020-09-23 23:00:02
1282	2919	-644	Komis w Red County	Red County	Bartoszka	650	2020-10-22 22:00:00	2020-10-13 08:00:02
917	977	-771	Dom	Los Santos	Maga	200	2021-03-23 23:00:00	2020-09-23 23:00:02
921	856	420	Domek	Red County	Maga	150	2020-11-22 23:00:00	2020-05-22 23:00:03
42539	1383	465	Stacja paliw	Montgomery	Maga	50	2021-08-20 22:00:00	2020-05-24 10:00:03
42541	2117	896	Stacja paliw	Las Venturas	Maga	50	2021-11-18 23:00:00	2020-05-24 10:00:03
266	2206	656	Dom Jednorodzinny	Rockshore West	KEHUR	200	2020-10-25 23:00:00	2020-10-20 09:10:02
42548	-2032	161	Stacja paliw	Doherty	Interferon	50	2021-10-08 22:00:00	2020-07-18 15:05:02
250	13	1219	Kawalerka	Fort Carson	\N	50	\N	2020-10-21 16:00:02
583	1720	878	Komis Samochodowy przy LV	LVA Freight Depot	_-_zochan_-_	655.35	2020-10-29 23:00:00	2020-10-20 11:10:02
332	342	62	Domek jednorodzinny	Blueberry	SiZzz	80	2020-10-28 23:00:00	2020-10-19 15:10:03
253	-17	1215	Kawalerka	Fort Carson	\N	50.99	\N	2020-10-21 16:00:02
728	271	-48	Domek parterowy	Blueberry	|TUNE-LS|Japonczyk	100	2020-10-21 22:00:00	2020-10-12 16:30:02
277	1	1076	Dom jednorodzinny	Fort Carson	\N	110	\N	2020-10-21 16:00:02
293	99	1170	Kawalerka	Fort Carson	\N	40.5	\N	2020-10-21 16:00:02
333	2459	-1691	Dom	Ganton	\N	200	\N	2020-10-21 16:00:02
320	-2791	212	Dom obok plaży	Ocean Flats	\N	200	\N	2020-10-21 16:00:02
322	-2791	194	Dom obok plaży	Ocean Flats	\N	180	\N	2020-10-21 16:00:02
329	-2791	103	Dom obok plaży	Ocean Flats	\N	200	\N	2020-10-21 16:00:02
330	-2791	-35	Dom obok plaży	Ocean Flats	\N	200	\N	2020-10-21 16:00:02
331	-2790	69	Domek na plaży	Ocean Flats	\N	200	\N	2020-10-21 16:00:02
335	2451	-1641	Dom	Ganton	\N	100	\N	2020-10-21 16:00:02
336	2413	-1646	Dom	Ganton	\N	100	\N	2020-10-21 16:00:02
338	2486	-1644	Dom	Ganton	\N	200	\N	2020-10-21 16:00:02
339	2523	-1679	Dom	Ganton	\N	100	\N	2020-10-21 16:00:02
437	-2657	848	Mieszkanie	Paradiso	\N	100	\N	2020-10-21 16:00:02
340	2513	-1650	Dom	Ganton	\N	100	\N	2020-10-21 16:00:02
341	2514	-1691	Dom	Ganton	\N	100	\N	2020-10-21 16:00:02
347	700	-1060	Dom	Richman	\N	100	\N	2020-10-21 16:00:02
385	743	-509	Dom Jednorodzinny	Dillimore	\N	250	\N	2020-10-21 16:00:02
401	-2699	1414	Garaż 6	Battery Point	\N	30	\N	2020-10-21 16:00:02
406	-2676	1451	Garaż 11	Battery Point	\N	30	\N	2020-10-21 16:00:02
472	2364	116	Mieszkanie	Palomino Creek	\N	200	\N	2020-10-21 16:00:02
473	2323	136	Domek parterowy z garazem	Palomino Creek	\N	250	\N	2020-10-21 16:00:02
475	2364	166	Dom parterowy	Palomino Creek	\N	200	\N	2020-10-21 16:00:02
476	2323	162	Dom parterowy	Palomino Creek	\N	200	\N	2020-10-21 16:00:02
490	2479	94	Kawalerka	Palomino Creek	\N	50	\N	2020-10-21 16:00:02
480	2269	6	Kawalerka	Palomino Creek	\N	50	\N	2020-10-21 16:00:02
539	2392	-54	Kawalerka	Palomino Creek	\N	50	\N	2020-10-21 16:00:02
684	2123	651	Dom	Rockshore West	\N	100	\N	2020-10-21 16:00:02
721	-401	-1419	Domek	Flint Range	\N	150	\N	2020-10-21 16:00:02
42543	2187	2469	Stacja paliw	The Emerald Isle	Maga	50	2021-07-30 22:00:00	2020-05-24 11:00:03
795	1443	-94	Kawalerka	Red County	\N	100	\N	2020-10-21 16:00:02
701	150	2611	Domek	Verdant Meadows	\N	95	\N	2020-10-21 16:00:02
702	143	2622	Domek	Verdant Meadows	\N	90	\N	2020-10-21 16:00:02
42544	964	2367	Stacja paliw	Whitewood Estates	Maga	50	2021-08-18 22:00:00	2020-05-24 11:00:03
732	2818	2140	Domek	Creek	\N	100	\N	2020-10-21 16:00:02
714	-1314	2503	Dom	Aldea Malvada	\N	150	\N	2020-10-21 16:00:02
715	228	-1405	Dom	Rodeo	\N	250	\N	2020-10-21 16:00:02
727	251	-1220	Dom	Richman	\N	100	\N	2020-10-21 16:00:02
822	2019	1007	Dom	The Four Dragons Casino	\N	1500	\N	2020-10-21 16:00:02
748	-329	1172	Dom	Fort Carson	\N	75	\N	2020-10-21 16:00:02
751	2318	656	Dom	Rockshore West	\N	50	\N	2020-10-21 16:00:02
638	2628	2349	Baza gangu	Julius Thruway East	Sewcio*fd	900	2020-10-26 23:00:00	2020-10-20 09:20:02
280	-278	1003	Dom jednorodzinny	Fort Carson	\N	110	\N	2020-10-21 16:00:02
720	2517	1653	Mieszkanie	Pilgrim	DamjUnGP	50	2020-10-21 22:00:00	2020-10-21 10:25:02
349	2437	1241	Kawalerka	The Camel's Toe	\N	80	\N	2020-10-21 16:00:02
355	-2018	865	Dom	Calton Heights	\N	200	\N	2020-10-21 16:00:02
387	1496	-687	Willa	Mulholland	\N	500	\N	2020-10-21 16:00:02
430	980	-677	Willa	Red County	\N	600	\N	2020-10-21 16:00:02
466	2293	-124	Dom	Palomino Creek	\N	800	\N	2020-10-21 16:00:02
470	2259	63	Kawalerka	Palomino Creek	\N	50	\N	2020-10-21 16:00:02
471	2284	71	Kawalerka	Palomino Creek	\N	50	\N	2020-10-21 16:00:02
474	2258	79	Kawalerka	Palomino Creek	\N	50	\N	2020-10-21 16:00:02
477	2313	-37	Kawalerka	Palomino Creek	\N	50	\N	2020-10-21 16:00:02
496	2551	57	Kawalerka	Palomino Creek	\N	75	\N	2020-10-21 16:00:02
522	2559	217	Chata	Palomino Creek	\N	180	\N	2020-10-21 16:00:02
523	2537	216	Chata	Palomino Creek	\N	180	\N	2020-10-21 16:00:02
524	2515	213	Chata	Palomino Creek	\N	180	\N	2020-10-21 16:00:02
525	2484	202	Chata	Palomino Creek	\N	180	\N	2020-10-21 16:00:02
546	2147	63	Kawalerka	Red County	\N	75	\N	2020-10-21 16:00:02
547	2147	70	Kawalerka	Red County	\N	75	\N	2020-10-21 16:00:02
549	2147	63	Kawalerka	Red County	\N	75	\N	2020-10-21 16:00:02
550	2147	70	Kawalerka	Red County	\N	75	\N	2020-10-21 16:00:02
551	2172	69	Kawalerka	Palomino Creek	\N	75	\N	2020-10-21 16:00:02
552	2166	62	Kawalerka	Palomino Creek	\N	75	\N	2020-10-21 16:00:02
558	2173	69	Kawalerka	Palomino Creek	\N	75	\N	2020-10-21 16:00:02
567	2518	128	Kawalerka	Palomino Creek	\N	55	\N	2020-10-21 16:00:02
563	2094	2188	Biuro komisu	Redsands East	\N	655.35	\N	2020-10-21 16:00:02
570	2488	58	Kawalerka	Palomino Creek	\N	55	\N	2020-10-21 16:00:02
590	-2101	-2535	Domek	Angel Pine	\N	375	\N	2020-10-21 16:00:02
591	-2072	-2501	Domek	Angel Pine	\N	375	\N	2020-10-21 16:00:02
919	-2672	257	KFC	Ocean Flats	|MECH-SF|Michu	250	2020-10-27 23:00:00	2020-10-21 13:00:02
593	-68	-1545	Kawalerka	Flint Intersection	\N	50	\N	2020-10-21 16:00:02
601	-2706	864	Dom	Paradiso	\N	150	\N	2020-10-21 16:00:02
741	-1051	1550	Dom	Tierra Robada	\N	50	\N	2020-10-21 16:00:02
922	835	414	Przyczepa	Red County	Maga	100	2021-02-28 23:00:00	2020-08-31 23:00:02
1117	2453	1810	Dom	Starfish Casino	\N	500	\N	2020-10-21 16:00:02
673	2446	18	Kawalerka	Palomino Creek	\N	55	\N	2020-10-21 16:00:02
703	286	2588	Domek	Verdant Meadows	\N	90	\N	2020-10-21 16:00:02
706	-576	-1031	Domek letniskowy	Flint County	\N	50	\N	2020-06-13 13:00:02
749	-324	1165	Dom	Fort Carson	\N	75	\N	2020-10-21 16:00:02
796	1461	-85	Kawalerka	Red County	\N	50	\N	2020-10-21 16:00:02
887	253	-1270	WIlla	Richman	\N	250	\N	2020-10-21 16:00:02
832	2634	2195	Dom	Old Venturas Strip	\N	600	\N	2020-10-21 16:00:02
747	-743	1432	Kawalerka	Las Barrancas	\N	50	\N	2020-10-21 16:00:02
765	1416	46	Dom	Red County	\N	200	\N	2020-10-21 16:00:02
1280	-2573	896	Dom	Paradiso	\N	700	\N	2020-10-21 16:00:02
788	1312	-93	Dom	Red County	Maga	150	2021-03-23 23:00:00	2020-09-23 23:00:02
439	2131	-1151	Komis samochodowy	Jefferson	maniek02.94	655.35	2020-10-27 23:00:00	2020-10-18 16:00:03
561	1004	-1104	Komis Samochodowy LS 3	Temple	AmericanAirlines	655.35	2020-10-21 22:00:00	2020-10-20 20:40:02
261	-279	2721	Dom jedorodzinny	Las Payasadas	\N	180	\N	2020-10-21 16:00:02
881	2871	2234	Wilczy Szaniec	Creek	Pitbull*	800	2020-10-25 23:00:00	2020-10-19 15:55:02
764	1424	2	Dom	Red County	|TESS|pepsi	200	2020-10-23 22:00:00	2020-10-14 07:40:02
350	2437	1242	Kawalerka	The Camel's Toe	\N	50	\N	2020-10-21 16:00:02
1024	1107	-2048	Remonty silników	Verdant Bluffs	Interferon	550	2028-10-06 22:00:00	2020-07-18 15:05:02
356	-2016	897	Dom	Calton Heights	\N	200	\N	2020-10-21 16:00:02
428	-2048	786	Dom	Calton Heights	Ells	100	2020-10-24 22:00:00	2020-10-14 22:35:02
359	-2029	796	Dom	Calton Heights	\N	200	\N	2020-10-21 16:00:02
831	2595	2790	Dom	K.A.C.C. Military Fuels	Osama_Bin_Laden	350	2020-10-21 22:00:00	2020-10-17 16:10:03
360	-2048	820	Dom	Calton Heights	\N	200	\N	2020-10-21 16:00:02
362	-2632	2374	Dom	Bayside	\N	200	\N	2020-10-21 16:00:02
366	470	-1163	Dom	Richman	\N	150	\N	2020-10-21 16:00:02
395	1675	-1636	Kanciapa	Commerce	\N	25000	\N	2020-10-21 16:00:02
374	-1552	1277	Magazyn	Esplanade North	\N	650	\N	2020-10-21 16:00:02
376	-1828	1508	Magazyn	Esplanade North	\N	650	\N	2020-10-21 16:00:02
396	-2699	1375	Garaż 1	Battery Point	\N	30	\N	2020-10-21 16:00:02
398	-2699	1391	Garaż 3	Battery Point	\N	30	\N	2020-10-21 16:00:02
397	-2699	1383	Garaż 2	Battery Point	\N	30	\N	2020-10-21 16:00:02
399	-2699	1398	Garaż 4	Battery Point	\N	30	\N	2020-10-21 16:00:02
462	2476	-1391	Melina	East Los Santos	\N	150	\N	2020-10-21 16:00:02
483	2448	-11	Kawalerka z garazem	Palomino Creek	\N	180	\N	2020-10-21 16:00:02
555	2166	62	Kawalerka	Palomino Creek	\N	75	\N	2020-10-21 16:00:02
573	2411	21	Kawalerka	Palomino Creek	\N	55	\N	2020-10-21 16:00:02
574	2270	-7	Kawalerka	Palomino Creek	\N	55	\N	2020-10-21 16:00:02
592	-2080	-2548	Domek	Angel Pine	\N	375	\N	2020-10-21 16:00:02
597	2139	-1697	Mieszkanie	Idlewood	\N	210	\N	2020-10-21 16:00:02
598	2157	-1709	Mieszkanie	Idlewood	\N	210	\N	2020-10-21 16:00:02
617	-15	-2497	Kawalerka	Flint County	\N	50	\N	2020-10-21 16:00:02
643	-890	2753	Baza gangu	Valle Ocultado	\N	250	\N	2020-10-21 16:00:02
653	2695	-2020	Dom jednorodzinny	Willowfield	\N	60	\N	2020-10-21 16:00:02
737	1550	2096	Domek parterowy	Redsands West	\N	150	\N	2020-10-21 16:00:02
718	811	-564	Kanciapa	Dillimore	\N	100	\N	2020-10-21 16:00:02
744	1030	2028	Dom	Whitewood Estates	\N	150	\N	2020-10-21 16:00:02
879	2169	2795	Baza gangu	Spinybed	\N	200	\N	2020-10-21 16:00:02
745	-715	1438	Kawalerka	Tierra Robada	\N	50	\N	2020-10-21 16:00:02
740	1549	2125	Dom	Redsands West	\N	150	\N	2020-10-21 16:00:02
735	-1942	2379	Lobby szuji	Tierra Robada	\N	500	\N	2020-10-21 16:00:02
756	-2810	-1524	Dom na Wzgorzu	Mount Chiliad	\N	150	\N	2020-10-21 16:00:02
746	-690	1443	Kawalerka	Tierra Robada	\N	50	\N	2020-10-21 16:00:02
767	1340	-16	Kawalerka	Red County	\N	50	\N	2020-10-21 16:00:02
981	2313	-1283	Dom z garazami	East Los Santos	Maga	200	2021-03-20 23:00:00	2020-09-20 23:00:03
839	-2220	99	Mieszkanie	Garcia	\N	100	\N	2020-10-21 16:00:02
821	320	-44	Biuro	Blueberry	Andrzej_Taxowkarz	150	2020-10-21 22:00:00	2020-10-13 11:00:02
976	1734	-2130	Dom	El Corona	Maga	100	2021-03-23 23:00:00	2020-09-23 23:00:02
997	1967	2175	Warsztat modyfikacji paintjobów	Redsands East	|WAR-PJ|Nazarbajew	300	2020-10-29 23:00:00	2020-10-20 22:00:02
870	1905	2156	Komis	Redsands East	|ZUZLOWIEC|^KavKa	655	2020-10-30 23:00:00	2020-10-20 23:00:03
42547	639	1683	Stacja paliw	Bone County	Maga	50	2021-04-15 22:00:00	2020-05-24 13:00:03
285	985	1901	Dom jednorodzinny	Whitewood Estates	\N	250	\N	2020-10-21 16:00:02
427	-2066	755	Dom	Calton Heights	\N	100	\N	2020-10-21 16:00:02
300	-36	1215	Kawalerka w szeregowcu	Fort Carson	\N	55	\N	2020-10-21 16:00:02
308	2037	2664	Dom Jednorodzinny	Prickle Pine	\N	150	\N	2020-10-21 16:00:02
310	1989	2665	Dom Jednorodzinny	Prickle Pine	\N	150	\N	2020-10-21 16:00:02
315	-2479	2449	Dom pietrowy	Bayside	\N	270	\N	2020-10-21 16:00:02
323	-2791	130	Dom obok plaży	Ocean Flats	\N	200	\N	2020-10-21 16:00:02
324	-2790	126	Dom obok plaży	Ocean Flats	\N	200	\N	2020-10-21 16:00:02
325	-2790	7	Dom obok plaży	Ocean Flats	\N	200	\N	2020-10-21 16:00:02
326	-2791	-24	Dom obok plaży	Ocean Flats	\N	200	\N	2020-10-21 16:00:02
327	-2789	-52	Dom obok plaży	Ocean Flats	\N	200	\N	2020-10-21 16:00:02
353	2437	1211	Kawalerka	The Camel's Toe	\N	50	\N	2020-10-21 16:00:02
400	-2699	1407	Garaż 5	Battery Point	\N	30	\N	2020-10-21 16:00:02
533	2627	173	Domek na zboczu	Hankypanky Point	\N	290	\N	2020-10-21 16:00:02
628	220	-300	Kawalerka	Blueberry	\N	250	\N	2020-10-21 16:00:02
635	1295	174	Baza gangu	Montgomery	\N	500	\N	2020-10-21 16:00:02
719	-392	-1439	Domek na farmie	Flint Range	\N	150	\N	2020-10-21 16:00:02
661	-2193	-2254	Pokój w Motelu	Angel Pine	\N	75.99	\N	2020-10-21 16:00:02
662	-2191	-2255	Pokój w Motelu	Angel Pine	\N	75.99	\N	2020-10-21 16:00:02
663	-2191	-2255	Pokój w Motelu	Angel Pine	\N	75.99	\N	2020-10-21 16:00:02
891	934	2086	Dom	Whitewood Estates	pumse	100	2020-10-22 22:00:00	2020-10-13 14:00:02
665	-2180	-2258	Pokój w Motelu	Angel Pine	\N	75.99	\N	2020-10-21 16:00:02
690	2272	-119	Domek parterowy	Palomino Creek	\N	150	\N	2020-10-21 16:00:02
699	249	2607	Domek	Verdant Meadows	\N	90	\N	2020-10-21 16:00:02
752	1112	-742	Dom	Mulholland	\N	200	\N	2020-10-21 16:00:02
731	1269	2554	Dom	Prickle Pine	\N	290	\N	2020-10-21 16:00:02
739	2548	2203	Dom	Roca Escalante	\N	600	\N	2020-10-21 16:00:02
743	1554	2074	Dom	Redsands West	\N	150	\N	2020-10-21 16:00:02
766	1341	-23	Dom	Red County	\N	200	\N	2020-10-21 16:00:02
828	416	-1154	Dom	Richman	\N	800	\N	2020-10-21 16:00:02
768	1387	-31	Kawalerka	Red County	\N	80	\N	2020-10-21 16:00:02
769	1378	-30	Kawalerka	Red County	\N	80	\N	2020-10-21 16:00:02
770	1376	21	Dom	Red County	\N	200	\N	2020-10-21 16:00:02
776	-68	1223	Kawalerka	Bone County	\N	110	\N	2020-10-21 16:00:02
811	1533	636	Mieszkanie	Blackfield Chapel	\N	100	\N	2020-10-21 16:00:02
801	1417	636	Dom	Blackfield Chapel	\N	100	\N	2020-10-21 16:00:02
1278	1155	-1181	Dom	Market	\N	900	\N	2020-10-21 16:00:02
866	822	-1505	Domek	Marina	\N	120	\N	2020-10-21 16:00:02
775	1442	-628	Dom	Mulholland	\N	150	\N	2020-10-21 16:00:02
810	1540	636	Mieszkanie	Blackfield Chapel	\N	100	\N	2020-10-21 16:00:02
777	1446	17	Dom	Red County	\N	200	\N	2020-10-21 16:00:02
782	1449	74	Kawalerka	Red County	\N	95	\N	2020-10-21 16:00:02
916	946	-710	Dom	Red County	\N	150	\N	2020-10-21 16:00:02
1003	-2051	-259	Dom	Doherty	$MaTeoo$	150	2020-10-25 23:00:00	2020-10-19 09:00:02
1106	2351	-1263	Mieszkanie	East Los Santos	Maga	200	2021-03-20 23:00:00	2020-09-20 23:00:03
734	-2579	310	Dom	Queens	MELINKO*	200	2020-10-21 22:00:00	2020-10-12 13:20:02
825	678	1839	Komis	Bone County	Osama_Bin_Laden	650	2020-10-21 22:00:00	2020-10-20 20:35:02
247	26	1161	Kawalerka w szeregowcu	Fort Carson	\N	40	\N	2020-10-21 16:00:02
693	2491	918	Kaplica Stajl	Las Venturas	Fudal*	250	2020-10-21 22:00:00	2020-10-12 20:00:03
249	13	1229	Kawalerka	Bone County	\N	50	\N	2020-10-21 16:00:02
429	-2048	755	Dom	Calton Heights	\N	100	\N	2020-10-21 16:00:02
254	-63	1234	Kawalerka	Bone County	\N	50	\N	2020-10-21 16:00:02
274	-290	1176	Dom jednorodzinny	Fort Carson	\N	120	\N	2020-10-21 16:00:02
742	1289	451	Warsztat modyfikacji paintjobów	Montgomery	|PJ|KaruiS*fd	300	2020-10-26 23:00:00	2020-10-20 02:00:03
314	1030	1928	Dom jednorodzinny	Whitewood Estates	\N	250	\N	2020-10-21 16:00:02
337	2408	-1674	Dom	Ganton	\N	100	\N	2020-10-21 16:00:02
493	2203	-89	Domek parterowy	Palomino Creek	\N	500	\N	2020-10-21 16:00:02
507	2398	111	Domek parterowy LUX	Palomino Creek	\N	300	\N	2020-10-21 16:00:02
516	-2224	-2482	Dom jednorodzinny	Angel Pine	\N	250	\N	2020-10-21 16:00:02
526	2596	-225	Willa	Red County	\N	1000	\N	2020-10-21 16:00:02
572	2442	-4	Kawalerka z garazem	Palomino Creek	\N	80	\N	2020-10-21 16:00:02
576	2316	-70	Kawalerka	Palomino Creek	\N	55	\N	2020-10-21 16:00:02
620	-21	-2529	Kawalerka	Flint County	\N	50	\N	2020-10-21 16:00:02
626	254	-308	Kawalerka	Blueberry	\N	250	\N	2020-10-21 16:00:02
666	-2198	-2243	Pokój w Motelu	Angel Pine	\N	75.99	\N	2020-10-21 16:00:02
957	2133	-1233	Kawalerka	Jefferson	\N	50	\N	2020-10-21 16:00:02
672	2439	24	Kawalerka	Palomino Creek	\N	50	\N	2020-10-21 16:00:02
687	2253	-1	Dom	Palomino Creek	\N	200	\N	2020-10-21 16:00:02
675	2450	662	Domek jednorodzinny	Rockshore West	\N	290	\N	2020-10-21 16:00:02
676	2449	689	Domek jednorodzinny	Rockshore West	\N	290	\N	2020-10-21 16:00:02
678	2013	650	Domek parterowy	Rockshore West	\N	200	\N	2020-10-21 16:00:02
681	2069	696	Dom jednorodzinny	Rockshore West	\N	200	\N	2020-10-21 16:00:02
683	2128	650	Domek	Rockshore West	\N	100	\N	2020-10-21 16:00:02
685	2120	696	Domek parterowy	Rockshore West	\N	200	\N	2020-10-21 16:00:02
686	2257	655	Dom	Rockshore West	\N	200	\N	2020-10-21 16:00:02
691	2322	-124	Dom jednorodzinny	Palomino Creek	\N	250	\N	2020-10-21 16:00:02
1123	-2282	1023	Kawalerka	Juniper Hollow	\N	80	\N	2020-10-21 16:00:02
705	-582	-1040	Domek letniskowy	Flint County	\N	50	\N	2020-06-13 13:00:02
707	-588	-1048	Domek letniskowy	Flint County	\N	50	\N	2020-06-13 13:00:02
708	-594	-1056	Domek letniskowy	Flint County	\N	50	\N	2020-06-13 13:00:02
733	2032	2162	Domek	Redsands East	\N	1500	\N	2020-10-21 16:00:02
709	-601	-1065	Domek letniskowy	Flint County	\N	50	\N	2020-06-13 13:00:02
710	-607	-1073	Domek letniskowy	Flint County	\N	50	\N	2020-06-13 13:00:02
773	865	-1633	Dom	Verona Beach	\N	800	\N	2020-10-21 16:00:02
926	2469	-1646	Domek na Grove	Ganton	\N	100	\N	2020-10-21 16:00:02
893	2186	1113	dom	Come-A-Lot	\N	500	\N	2020-10-21 16:00:02
778	1435	68	Dom	Red County	\N	200	\N	2020-10-21 16:00:02
779	1462	35	Dom	Red County	\N	200	\N	2020-10-21 16:00:02
781	1454	69	Kawalerka	Red County	\N	95	\N	2020-10-21 16:00:02
784	1322	-36	Dom	Red County	\N	200	\N	2020-10-21 16:00:02
949	1737	764	Mieszkanie	Randolph Industrial Estate	\N	150	\N	2020-10-21 16:00:02
42527	1453	2026	Apartament	Redsands West	\N	500	\N	2020-10-21 16:00:02
802	1406	638	Dom	Blackfield Chapel	Raymanti	150	2020-10-22 22:00:00	2020-10-20 01:25:02
621	-910	2685	Baza gangu	Valle Ocultado	\N	500	\N	2020-10-21 16:00:02
1263	2580	-909	Dom	Los Santos	\N	375	\N	2020-10-21 16:00:02
700	173	2637	Domek	Verdant Meadows	\N	90	\N	2020-10-21 16:00:02
729	1872	2071	Biuro	Redsands East	.:|SMSA|OLCIU|:.*cvt	150	2020-10-21 22:00:00	2020-10-12 16:00:02
625	265	-281	Kawalerka	Blueberry	RamboPL.	50	2020-10-27 23:00:00	2020-10-18 21:00:03
763	1396	33	Dom	Red County	\N	200	\N	2020-10-21 16:00:02
823	-2664	-3	Dom	Ocean Flats	zeluch_	750	2020-10-22 22:00:00	2020-10-13 20:35:02
780	1482	54	Dom	Red County	\N	200	\N	2020-10-21 16:00:02
783	1491	44	Kawalerka	Red County	\N	95	\N	2020-10-21 16:00:02
785	1351	-67	Dom	Red County	\N	200	\N	2020-10-21 16:00:02
786	1361	-76	Kawalerka	Red County	\N	95	\N	2020-10-21 16:00:02
889	2519	2033	Plebania	Old Venturas Strip	\N	150	\N	2020-10-21 16:00:02
787	1369	-47	Dom	Red County	\N	200	\N	2020-10-21 16:00:02
865	-1392	2646	Dom	El Quebrados	\N	150	\N	2020-10-21 16:00:02
789	1335	-81	Kawalerka	Red County	\N	80	\N	2020-10-21 16:00:02
790	1328	-87	Kawalerka	Red County	\N	80	\N	2020-10-21 16:00:02
791	1440	12	Dom	Red County	\N	200	\N	2020-10-21 16:00:02
797	1455	-98	Dom	Red County	\N	100	\N	2020-10-21 16:00:02
798	1445	-73	Kawalerka	Red County	\N	50	\N	2020-10-21 16:00:02
799	-2789	183	Domek	Ocean Flats	\N	100	\N	2020-10-21 16:00:02
803	1376	636	Dom	Blackfield Chapel	\N	150	\N	2020-10-21 16:00:02
804	1452	636	Dom	Blackfield Chapel	\N	150	\N	2020-10-21 16:00:02
805	1474	636	Dom	Blackfield Chapel	\N	150	\N	2020-10-21 16:00:02
816	1551	639	Dom	Blackfield Chapel	\N	200	\N	2020-10-21 16:00:02
806	1504	638	Dom	Blackfield Chapel	\N	150	\N	2020-10-21 16:00:02
808	1540	636	Kawalerka	Blackfield Chapel	Zabronionyyy	50	2020-10-23 22:00:00	2020-10-18 17:00:03
807	1522	639	Kawalerka	Blackfield Chapel	\N	50	\N	2020-10-21 16:00:02
809	1533	636	Kawalerka	Blackfield Chapel	\N	50	\N	2020-10-21 16:00:02
812	1533	629	Kawalerka	Blackfield Chapel	\N	50	\N	2020-10-21 16:00:02
813	1540	630	Kawalerka	Blackfield Chapel	\N	50	\N	2020-10-21 16:00:02
890	929	2006	Domek	Whitewood Estates	\N	150	\N	2020-10-21 16:00:02
814	1533	630	Kawalerka	Blackfield Chapel	\N	50	\N	2020-10-21 16:00:02
898	2186	-36	Kawalerka	Palomino Creek	\N	70	\N	2020-10-21 16:00:02
815	1540	629	Mieszkanie	Blackfield Chapel	\N	100	\N	2020-10-21 16:00:02
817	1551	626	Kawalerka	Blackfield Chapel	\N	50	\N	2020-10-21 16:00:02
818	-2238	943	Kawalerka	Calton Heights	\N	80	\N	2020-10-21 16:00:02
932	1666	686	domek	Randolph Industrial Estate	*DUZYKNAGE*	150	2020-10-21 22:00:00	2020-10-12 22:00:03
819	-636	1446	Mieszkanie	Tierra Robada	\N	50	\N	2020-10-21 16:00:02
931	475	-1498	Willa	Rodeo	\N	450	\N	2020-10-21 16:00:02
829	817	-495	Kawalerka	Dillimore	\N	150	\N	2020-10-21 16:00:02
824	1093	-807	Dom	Mulholland	\N	150	\N	2020-10-21 16:00:02
903	184	146	Dom	Blueberry	Saracen	250	2020-10-27 23:00:00	2020-10-18 08:00:02
900	2373	21	Domek	Palomino Creek	\N	190	\N	2020-10-21 16:00:02
933	1641	687	Dom	Randolph Industrial Estate	\N	100	\N	2020-10-21 16:00:02
914	1799	2814	Mieszkanie	Prickle Pine	\N	200	\N	2020-10-21 16:00:02
1099	1680	2069	Dom	Redsands West	iSnapeq03*rct	150	2020-10-25 23:00:00	2020-10-18 15:00:02
963	2065	-1703	Dom	Idlewood	sraniewbanie	150	2020-10-21 22:00:00	2020-10-19 12:20:03
436	870	-24	Chata w lesie	Fern Ridge	\N	270	\N	2020-10-21 16:00:02
304	1845	661	Domek jednorodzinny	Last Dime Motel	\N	80	\N	2020-10-21 16:00:02
956	2111	-1244	Dom	Jefferson	\N	150	\N	2020-10-21 16:00:02
869	-2686	-188	Dom	Ocean Flats	\N	150	\N	2020-10-21 16:00:02
884	1945	162	Kanciapa	Red County	\N	150	\N	2020-10-21 16:00:02
833	2808	-1175	Dom	East Beach	\N	150	\N	2020-10-21 16:00:02
907	828	-1554	Melina	Marina	veizzo	50	2020-10-24 22:00:00	2020-10-17 20:00:03
862	-1414	-1037	Willa Zabijaki	San Fierro	\N	200	\N	2020-10-21 16:00:02
925	2147	-1366	Dom	Jefferson	\N	350	\N	2020-10-21 16:00:02
1031	2786	2848	Przyczepa	Las Venturas	\N	100	\N	2020-10-21 16:00:02
1032	2783	2845	Przyczepa	Las Venturas	\N	100	\N	2020-10-21 16:00:02
867	841	-1471	Mieszkanie	Marina	\N	50	\N	2020-10-21 16:00:02
987	2878	947	Dom	Linden Side	\N	150	\N	2020-10-21 16:00:02
899	-1438	-1544	Dom	Whetstone	\N	100	\N	2020-10-21 16:00:02
868	-2678	-192	Dom	Ocean Flats	\N	150	\N	2020-10-21 16:00:02
861	-2893	-851	Domek	San Fierro	\N	800	\N	2020-10-21 16:00:02
872	-2943	1205	WIlla	Palisades	\N	655	\N	2020-10-21 16:00:02
873	295	-54	Kawalerka	Blueberry	\N	90	\N	2020-10-21 16:00:02
894	-2720	127	Mieszkanie	Ocean Flats	\N	75	\N	2020-10-21 16:00:02
897	-2719	-465	Hacjenda	Missionary Hill	\N	450	\N	2020-10-21 16:00:02
901	-2115	-2324	Magazyn	Angel Pine	\N	550	\N	2020-10-21 16:00:02
905	849	-1519	Mieszkanie	Marina	\N	100	\N	2020-10-21 16:00:02
909	813	-1456	Dom	Marina	\N	850	\N	2020-10-21 16:00:02
915	852	-1422	Domek	Marina	\N	150	\N	2020-10-21 16:00:02
918	901	-1514	Dom	Marina	\N	850	\N	2020-10-21 16:00:02
1196	-2186	1037	Garaż	Calton Heights	\N	150	\N	2020-10-21 16:00:02
927	2393	-1646	Domek na Grove	Ganton	\N	100	\N	2020-10-21 16:00:02
929	2362	-1643	Domek na Grove	Ganton	\N	100	\N	2020-10-21 16:00:02
930	2368	-1675	Domek na Grove	Ganton	\N	100	\N	2020-10-21 16:00:02
935	1739	684	Dom	Randolph Industrial Estate	\N	100	\N	2020-10-21 16:00:02
936	1618	684	Dom	Randolph Industrial Estate	\N	550	\N	2020-10-21 16:00:02
937	1626	773	Dom	Randolph Industrial Estate	\N	100	\N	2020-10-21 16:00:02
938	1666	767	Dom	Randolph Industrial Estate	\N	150	\N	2020-10-21 16:00:02
939	1701	772	Dom	Randolph Industrial Estate	\N	150	\N	2020-10-21 16:00:02
940	1701	741	Dom	Randolph Industrial Estate	\N	150	\N	2020-10-21 16:00:02
941	1666	741	Dom	Randolph Industrial Estate	\N	150	\N	2020-10-21 16:00:02
942	1600	732	Dom	Randolph Industrial Estate	\N	850	\N	2020-10-21 16:00:02
944	1693	684	Dom	Randolph Industrial Estate	\N	150	\N	2020-10-21 16:00:02
954	1744	764	Kawalerka	Randolph Industrial Estate	\N	100	\N	2020-10-21 16:00:02
946	1626	735	Dom	Randolph Industrial Estate	\N	150	\N	2020-10-21 16:00:02
947	1591	772	Dom	Randolph Industrial Estate	\N	100	\N	2020-10-21 16:00:02
948	1744	764	Mieszkanie	Randolph Industrial Estate	\N	150	\N	2020-10-21 16:00:02
431	1298	-797	Willa	Mulholland	Saracen	655.35	2020-10-21 22:00:00	2020-10-12 20:00:03
979	1804	-2124	Dom	El Corona	sraniewbanie	100	2020-10-23 22:00:00	2020-10-19 12:20:03
1023	2770	-1628	Melina	East Beach	|Gwiazdeczka|SouthStar	50	2020-10-30 23:00:00	2020-10-21 13:55:02
951	1737	770	Mieszkanie	Randolph Industrial Estate	\N	150	\N	2020-10-21 16:00:02
952	1737	770	Kawalerka	Randolph Industrial Estate	\N	100	\N	2020-10-21 16:00:02
953	1744	770	Kawalerka	Randolph Industrial Estate	\N	100	\N	2020-10-21 16:00:02
1004	-2072	-164	Dom	Doherty	Frugoslaw	200	2020-10-24 22:00:00	2020-10-15 08:50:02
955	1737	764	Kawalerka	Randolph Industrial Estate	\N	100	\N	2020-10-21 16:00:02
958	2153	-1243	Kawalerka	Jefferson	\N	50	\N	2020-10-21 16:00:02
959	2229	-1241	Dom	Jefferson	\N	80	\N	2020-10-21 16:00:02
960	2210	-1240	Dom	Jefferson	\N	80	\N	2020-10-21 16:00:02
961	2191	-1239	Kawalerka	Jefferson	\N	50	\N	2020-10-21 16:00:02
962	2090	-1235	Dom	Jefferson	\N	100	\N	2020-10-21 16:00:02
991	854	-605	Dom	Dillimore	\N	75	\N	2020-10-21 16:00:02
998	2874	853	Dom	Rockshore East	\N	150	\N	2020-10-21 16:00:02
985	2795	999	Dom	Linden Side	\N	150	\N	2020-10-21 16:00:02
999	2809	961	Dom	Linden Side	\N	100	\N	2020-10-21 16:00:02
968	751	-1356	Przyczepa	Vinewood	\N	50	\N	2020-10-21 16:00:02
975	1734	-2097	Dom	El Corona	\N	100	\N	2020-10-21 16:00:02
992	2803	890	Dom	Rockshore East	\N	150	\N	2020-10-21 16:00:02
977	-1099	-1662	Baza gangu	Leafy Hollow	\N	1000	\N	2020-10-21 16:00:02
965	2126	-1320	Dom	Jefferson	\N	150	\N	2020-10-21 16:00:02
966	2148	-1320	Dom	Jefferson	\N	150	\N	2020-10-21 16:00:02
967	2092	-1166	Dom	Jefferson	\N	150	\N	2020-10-21 16:00:02
969	735	-1346	Przyczepa	Vinewood	\N	50	\N	2020-10-21 16:00:02
970	761	-1381	Przyczepa	Vinewood	\N	50	\N	2020-10-21 16:00:02
971	783	-1371	Przyczepa	Vinewood	\N	50	\N	2020-10-21 16:00:02
972	783	-1339	Przyczepa	Vinewood	\N	50	\N	2020-10-21 16:00:02
973	2111	-1278	Dom	Jefferson	\N	50	\N	2020-10-21 16:00:02
980	1045	-642	Dom	Red County	\N	300	\N	2020-10-21 16:00:02
989	2885	890	Dom	Rockshore East	\N	150	\N	2020-10-21 16:00:02
978	2430	1937	Baza gangu	Starfish Casino	przemkom	500	2020-10-29 23:00:00	2020-10-20 08:00:03
986	2822	1002	Dom	Linden Side	\N	150	\N	2020-10-21 16:00:02
988	2805	853	Dom	Rockshore East	\N	150	\N	2020-10-21 16:00:02
982	2849	999	Dom	Linden Side	\N	150	\N	2020-10-21 16:00:02
983	-12	2346	Mieszkanie	El Castillo del Diablo	\N	50	\N	2020-10-21 16:00:02
984	2852	949	Dom	Linden Side	\N	150	\N	2020-10-21 16:00:02
1022	937	-848	Dom	Mulholland	\N	200	\N	2020-10-21 16:00:02
1002	-2026	-260	Dom	Doherty	\N	150	\N	2020-10-21 16:00:02
993	2822	888	Kawalerka	Rockshore East	\N	50	\N	2020-10-21 16:00:02
994	2853	890	Dom	Rockshore East	\N	150	\N	2020-10-21 16:00:02
995	2850	853	Dom	Rockshore East	\N	150	\N	2020-10-21 16:00:02
996	2829	853	Dom	Rockshore East	\N	150	\N	2020-10-21 16:00:02
1000	2829	961	Dom	Linden Side	\N	100	\N	2020-10-21 16:00:02
1005	-2029	-197	Dom	Doherty	\N	200	\N	2020-10-21 16:00:02
1006	-2029	-165	Dom	Doherty	\N	200	\N	2020-10-21 16:00:02
1007	-2072	-115	Dom	Doherty	\N	200	\N	2020-10-21 16:00:02
485	2417	17	Kawalerka	Palomino Creek	\N	50	\N	2020-10-21 16:00:02
486	2413	61	Domek parterowy z garazem	Palomino Creek	\N	240	\N	2020-10-21 16:00:02
1016	-2068	-190	Dom	Doherty	AreXsoN	150	2020-10-22 22:00:00	2020-10-20 01:25:02
1120	199	-236	Zulernia	Blueberry	diplekk+	350	2020-10-24 22:00:00	2020-10-20 13:10:02
487	2462	134	Kawalerka	Palomino Creek	\N	50	\N	2020-10-21 16:00:02
494	2549	25	Kawalerka	Palomino Creek	\N	75	\N	2020-10-21 16:00:02
498	2443	92	Domek parterowy	Palomino Creek	\N	200	\N	2020-10-21 16:00:02
712	2508	-939	Domek	Los Santos	\N	700	\N	2020-10-21 16:00:02
757	2122	731	Dom	Rockshore West	\N	50	\N	2020-10-21 16:00:02
759	786	-828	Dom	Mulholland	\N	800	\N	2020-10-21 16:00:02
908	898	-1472	Mieszkanie	Marina	\N	125	\N	2020-10-21 16:00:02
945	1598	777	Dom	Randolph Industrial Estate	\N	150	\N	2020-10-21 16:00:02
1020	1692	-1458	Mieszkanie	Commerce	\N	100	\N	2020-10-21 16:00:02
1010	-2075	-258	Dom	Doherty	\N	150	\N	2020-10-21 16:00:02
1011	-2075	-266	Kawalerka	Doherty	\N	150	\N	2020-10-21 16:00:02
1012	-2081	-266	Kawalerka	Doherty	\N	50	\N	2020-10-21 16:00:02
1013	-2081	-258	Kawalerka	Doherty	\N	50	\N	2020-10-21 16:00:02
1014	-2075	-258	Mieszkanie	Doherty	\N	250	\N	2020-10-21 16:00:02
1015	-2081	-266	Mieszkanie	Doherty	\N	250	\N	2020-10-21 16:00:02
1034	2658	1221	Baza gangu	Las Venturas	Saracen	1200	2020-10-27 23:00:00	2020-10-18 08:00:02
1017	-2031	-135	Dom	Doherty	\N	200	\N	2020-10-21 16:00:02
1018	-2024	-134	Kawalerka	Doherty	\N	100	\N	2020-10-21 16:00:02
1019	-2022	-117	Kawalerka	Doherty	\N	100	\N	2020-10-21 16:00:02
42550	51	1222	Stacja paliw	Bone County	Maga	50	2021-05-20 22:00:00	2020-05-24 23:00:03
1030	2796	2846	Przyczepa	Las Venturas	\N	100	\N	2020-10-21 16:00:02
1025	2789	2838	Przyczepa	Las Venturas	\N	100	\N	2020-10-21 16:00:02
1026	2815	2831	Barak	Las Venturas	\N	100	\N	2020-10-21 16:00:02
1027	2817	2814	Przyczepa	Las Venturas	\N	100	\N	2020-10-21 16:00:02
1092	-2050	-273	Dom	Doherty	\N	100	\N	2020-10-21 16:00:02
1185	-2059	889	Dom z garażem	Calton Heights	\N	270	\N	2020-10-21 16:00:02
1105	2797	-1245	Mieszkanie	East Beach	\N	150	\N	2020-10-21 16:00:02
1122	-2238	998	Kawalerka	Calton Heights	\N	80	\N	2020-10-21 16:00:02
1227	1364	1896	Dom	Redsands West	\N	500	\N	2020-10-21 16:00:02
1214	-2676	1384	Garaż	Battery Point	\N	150	\N	2020-10-21 16:00:02
1167	-347	-1045	Dom	Beacon Hill	\N	99	\N	2020-10-21 16:00:02
1102	-936	2027	Ambasada Sosnowca	The Sherman Dam	\N	150	\N	2020-10-21 16:00:02
1164	2180	2759	Melina	Spinybed	\N	650	\N	2020-10-21 16:00:02
1202	1073	1911	Garaż	Whitewood Estates	\N	150	\N	2020-10-21 16:00:02
1100	-1813	-135	Melina	Doherty	\N	80	\N	2020-10-21 16:00:02
1094	-409	1240	Przyczepa	Bone County	\N	75	\N	2020-10-21 16:00:02
1095	-394	1233	Przyczepa	Bone County	\N	75	\N	2020-10-21 16:00:02
1096	-396	1229	Przyczepa	Bone County	\N	75	\N	2020-10-21 16:00:02
1097	-389	1228	Przyczepa	Bone County	\N	75	\N	2020-10-21 16:00:02
1109	432	-1253	Dom	Richman	\N	250	\N	2020-10-21 16:00:02
1110	2756	-1182	Dom	East Beach	\N	50	\N	2020-10-21 16:00:02
1166	1679	1762	Kawalerka	Las Venturas Airport	|ZUZLOWIEC|^KavKa	50	2020-10-30 23:00:00	2020-10-20 23:00:03
1246	2096	-1565	Garaż	Idlewood	\N	250	\N	2020-10-21 16:00:02
1137	1994	2349	Kawalerka	Redsands East	KsiazeBalagan	99	2020-10-25 23:00:00	2020-10-19 15:25:03
1138	2000	2366	Kawalerka	Redsands East	KsiazeBalagan	99	2020-10-25 23:00:00	2020-10-19 15:25:03
1140	1983	2371	Kawalerka	Redsands East	KsiazeBalagan	99	2020-10-25 23:00:00	2020-10-19 15:25:03
287	984	1930	Dom jednorodzinny	Whitewood Estates	\N	210	\N	2020-10-21 16:00:02
1141	1983	2366	Kawalerka	Redsands East	KsiazeBalagan	99	2020-10-25 23:00:00	2020-10-19 15:25:03
1153	1977	2383	Apartament	Redsands East	Pawlo613.	350	2020-10-21 22:00:00	2020-10-13 07:55:02
704	272	2586	Domek	Verdant Meadows	\N	90	\N	2020-10-21 16:00:02
1142	1983	2351	Kawalerka	Redsands East	KsiazeBalagan	99	2020-10-25 23:00:00	2020-10-19 15:25:03
1143	1981	2358	Kawalerka	Redsands East	KsiazeBalagan	99	2020-10-25 23:00:00	2020-10-19 15:25:03
1178	-1954	-851	Dom	Foster Valley	\N	200	\N	2020-10-21 16:00:02
1144	1990	2349	Kawalerka	Redsands East	KsiazeBalagan	99	2020-10-25 23:00:00	2020-10-19 15:25:03
1152	1971	2383	Apartament	Redsands East	amvlia	350	2020-10-21 22:00:00	2020-10-20 01:25:02
1154	2000	2361	Kawalerka	Redsands East	7Lat_Minelo	99	2020-10-23 22:00:00	2020-10-17 16:05:03
1266	1455	750	Hala bokserska	Blackfield Chapel	\N	100000	\N	2020-10-21 16:00:02
1126	-2229	934	Kawalerka	Calton Heights	\N	90	\N	2020-10-21 16:00:02
1194	-2668	1384	Garaż	Battery Point	\N	150	\N	2020-10-21 16:00:02
1200	1085	1911	Garaż	Whitewood Estates	\N	150	\N	2020-10-21 16:00:02
1104	1298	-984	Mieszkanie	Temple	\N	100	\N	2020-10-21 16:00:02
1219	2214	2495	Garaż na stacji paliw	The Emerald Isle	\N	250	\N	2020-10-21 16:00:02
1113	2440	-1057	Przyczepa	Las Colinas	\N	100	\N	2020-10-21 16:00:02
1249	-2689	-101	Dom małżeński	Ocean Flats	\N	850	\N	2020-10-21 16:00:02
1182	2567	1433	Baza organizacji	Pilgrim	\N	1500	\N	2020-10-21 16:00:02
1119	-2172	679	Szyszunia	Chinatown	\N	500	\N	2020-10-21 16:00:02
1111	-1874	-218	Bunkier	Doherty	\N	250	\N	2020-10-21 16:00:02
1220	1646	-1520	Garaż	Commerce	\N	150	\N	2020-10-21 16:00:02
1103	867	-717	Willa	Mulholland	\N	480	\N	2020-10-21 16:00:02
1118	450	-1346	Mieszkanie	Rodeo	\N	150	\N	2020-10-21 16:00:02
1180	-2724	-162	Przytulny domek	Ocean Flats	\N	150	\N	2020-10-21 16:00:02
1108	1034	-1028	Mieszkanie	Temple	\N	150	\N	2020-10-21 16:00:02
1121	-2238	962	Kawalerka	Calton Heights	\N	80	\N	2020-10-21 16:00:02
1124	-2282	1046	Kawalerka	Juniper Hollow	\N	80	\N	2020-10-21 16:00:02
1125	-2239	1037	Kawalerka	Calton Heights	\N	80	\N	2020-10-21 16:00:02
1127	-2224	902	Kawalerka	Calton Heights	\N	90	\N	2020-10-21 16:00:02
1128	-2233	888	Kawalerka	Calton Heights	\N	90	\N	2020-10-21 16:00:02
1129	-2233	870	Kawalerka	Calton Heights	\N	90	\N	2020-10-21 16:00:02
1130	-2282	873	Kawalerka	Juniper Hill	\N	90	\N	2020-10-21 16:00:02
1131	-2210	934	Kawalerka	Calton Heights	\N	90	\N	2020-10-21 16:00:02
1132	-2192	934	Dom	Calton Heights	\N	700	\N	2020-10-21 16:00:02
1133	-2174	934	Kawalerka	Calton Heights	\N	90	\N	2020-10-21 16:00:02
1134	-2174	902	Kawalerka	Calton Heights	\N	90	\N	2020-10-21 16:00:02
1135	-2192	902	Kawalerka	Calton Heights	\N	90	\N	2020-10-21 16:00:02
1139	2000	2371	Kawalerka	Redsands East	\N	99	\N	2020-10-21 16:00:02
1145	1966	2383	Apartament	Redsands East	\N	350	\N	2020-10-21 16:00:02
1218	1112	1931	Garaż	Whitewood Estates	\N	150	\N	2020-10-21 16:00:02
1147	1947	2347	Kawalerka	Redsands East	\N	99	\N	2020-10-21 16:00:02
1148	1952	2347	Kawalerka	Redsands East	\N	99	\N	2020-10-21 16:00:02
1149	1960	2345	Kawalerka	Redsands East	\N	99	\N	2020-10-21 16:00:02
381	766	-556	Dom Jednorodzinny	Dillimore	\N	250	\N	2020-10-21 16:00:02
1199	2503	-1690	Garaż	Ganton	krzyches	150	2020-10-24 22:00:00	2020-10-18 18:50:03
1221	1633	-1520	Garaż	Commerce	|SMSA|WDPG|Sobieski	150	2020-10-21 22:00:00	2020-10-12 21:05:03
920	-2093	-2417	Kryjowka	Angel Pine	\N	100	\N	2020-10-21 16:00:02
928	2384	-1675	Domek na Grove	Ganton	\N	100	\N	2020-10-21 16:00:02
943	1594	690	Dom	Randolph Industrial Estate	\N	150	\N	2020-10-21 16:00:02
964	2288	-1104	Melina	Las Colinas	\N	200	\N	2020-10-21 16:00:02
974	1711	-2101	Dom	El Corona	\N	100	\N	2020-10-21 16:00:02
1112	2014	1150	Mieszkanie	The Pink Swan	\N	350	\N	2020-10-21 16:00:02
1151	1960	2383	Apartament	Redsands East	\N	350	\N	2020-10-21 16:00:02
1155	1957	2347	Kawalerka	Redsands East	\N	99	\N	2020-10-21 16:00:02
1158	-2282	1070	Kawalerka	Juniper Hollow	\N	80	\N	2020-10-21 16:00:02
1159	-2282	1089	Kawalerka	Juniper Hollow	\N	80	\N	2020-10-21 16:00:02
1160	-2239	1070	Kawalerka	Calton Heights	\N	90	\N	2020-10-21 16:00:02
1161	-2239	1054	Kawalerka	Calton Heights	\N	90	\N	2020-10-21 16:00:02
1162	-2227	1079	Kawalerka	Calton Heights	\N	80	\N	2020-10-21 16:00:02
1163	-2228	1108	Kawalerka	Calton Heights	\N	90	\N	2020-10-21 16:00:02
1181	-2724	-191	Przytulny domek	Ocean Flats	\N	150	\N	2020-10-21 16:00:02
1198	-2278	907	Garaż	Juniper Hill	\N	150	\N	2020-10-21 16:00:02
1197	-2194	1037	Garaż	Calton Heights	\N	150	\N	2020-10-21 16:00:02
1179	-396	-425	Domek	Red County	\N	50	\N	2020-10-21 16:00:02
1234	1990	2076	Garaż	Redsands East	\N	250	\N	2020-10-21 16:00:02
1250	-2200	968	Milo	Calton Heights	\N	500	\N	2020-10-21 16:00:02
1192	398	-1271	Domek	Richman	\N	200	\N	2020-10-21 16:00:02
1279	-1604	2689	Dom	El Quebrados	\N	150	\N	2020-10-21 16:00:02
1224	-2723	-139	Ernibagen	Ocean Flats	\N	700	\N	2020-10-21 16:00:02
1216	-2189	1163	Garaż	Calton Heights	\N	150	\N	2020-10-21 16:00:02
1201	1088	1911	Garaż	Whitewood Estates	\N	150	\N	2020-10-21 16:00:02
1222	-2689	-152	Boberino	Ocean Flats	\N	500	\N	2020-10-21 16:00:02
1203	1070	1911	Garaż	Whitewood Estates	\N	150	\N	2020-10-21 16:00:02
1204	1063	1911	Garaż	Whitewood Estates	\N	150	\N	2020-10-21 16:00:02
1205	1056	1911	Garaż	Whitewood Estates	\N	150	\N	2020-10-21 16:00:02
1206	1056	1895	Garaż	Whitewood Estates	\N	150	\N	2020-10-21 16:00:02
1207	1070	1895	Garaż	Whitewood Estates	\N	150	\N	2020-10-21 16:00:02
1208	1073	1895	Garaż	Whitewood Estates	\N	150	\N	2020-10-21 16:00:02
1209	1085	1895	Garaż	Whitewood Estates	\N	150	\N	2020-10-21 16:00:02
1210	1088	1895	Garaż	Whitewood Estates	\N	150	\N	2020-10-21 16:00:02
1211	1112	1899	Garaż	Whitewood Estates	\N	150	\N	2020-10-21 16:00:02
1212	1112	1906	Garaż	Whitewood Estates	\N	150	\N	2020-10-21 16:00:02
1232	-2725	-92	Gawlo	Ocean Flats	\N	600	\N	2020-10-21 16:00:02
1213	900	-1452	Garaż	Marina	\N	150	\N	2020-10-21 16:00:02
1215	-1929	1190	Garaż	Downtown	\N	150	\N	2020-10-21 16:00:02
1217	2115	960	Garaż	Come-A-Lot	\N	150	\N	2020-10-21 16:00:02
1245	2096	-1558	Garaż	Idlewood	\N	250	\N	2020-10-21 16:00:02
42524	-1562	-2733	Komis przy przelotówce	Whetstone	TrecheX	650	2020-10-30 23:00:00	2020-10-21 06:45:02
42523	24	-2646	Komis przy przelotówce	Flint County	alfis123	650	2020-10-27 23:00:00	2020-10-21 10:20:02
1247	2096	-1573	Garaż	Idlewood	\N	250	\N	2020-10-21 16:00:02
1225	-2639	168	Dom	Ocean Flats	\N	700	\N	2020-10-21 16:00:02
1226	-2431	-5	Garaż	Hashbury	\N	500	\N	2020-10-21 16:00:02
1228	1409	1919	Dom	Redsands West	\N	500	\N	2020-10-21 16:00:02
1230	1969	2721	Dom	Prickle Pine	\N	550	\N	2020-10-21 16:00:02
1229	1409	1896	Dom	Redsands West	\N	500	\N	2020-10-21 16:00:02
1235	1989	2084	Garaż	Redsands East	\N	250	\N	2020-10-21 16:00:02
1236	1990	2092	Garaż	Redsands East	\N	250	\N	2020-10-21 16:00:02
1237	2270	957	Garaż	Come-A-Lot	\N	250	\N	2020-10-21 16:00:02
1238	2262	957	Garaż	Come-A-Lot	\N	250	\N	2020-10-21 16:00:02
1239	2254	957	Garaż	Come-A-Lot	\N	250	\N	2020-10-21 16:00:02
1240	2247	957	Garaż	Come-A-Lot	\N	250	\N	2020-10-21 16:00:02
1248	2096	-1581	Garaż	Idlewood	\N	250	\N	2020-10-21 16:00:02
1241	2332	-2061	Garaż	Ocean Docks	\N	250	\N	2020-10-21 16:00:02
1242	2333	-2070	Garaż	Ocean Docks	\N	250	\N	2020-10-21 16:00:02
1243	2333	-2077	Garaż	Ocean Docks	\N	250	\N	2020-10-21 16:00:02
1244	2333	-2085	Garaż	Ocean Docks	\N	250	\N	2020-10-21 16:00:02
1262	2559	-914	Dom	Los Santos	\N	375	\N	2020-10-21 16:00:02
1277	693	-1645	Domek	Marina	\N	800	\N	2020-10-21 16:00:02
1268	2433	-1303	Dom	East Los Santos	\N	250	\N	2020-10-21 16:00:02
1252	235	-310	Kawalerka	Blueberry	\N	300	\N	2020-10-21 16:00:02
1274	1694	2208	Bar	Redsands West	\N	400	\N	2020-10-21 16:00:02
1271	1315	-898	Mosiek	Mulholland	\N	350	\N	2020-10-21 16:00:02
1251	2194	1990	Taxi of San Andreas	Starfish Casino	\N	190	\N	2020-10-21 16:00:02
1259	-2044	-2527	Domek	Angel Pine	\N	375	\N	2020-10-21 16:00:02
1273	948	-916	Willa	Mulholland	\N	900	\N	2020-10-21 16:00:02
1272	810	-1616	Burgernia	Marina	\N	500	\N	2020-10-21 16:00:02
1270	2105	-1806	Pizza	Idlewood	\N	350	\N	2020-10-21 16:00:02
1267	2433	-1275	Dom	East Los Santos	\N	100	\N	2020-10-21 16:00:02
1260	-2069	-2525	Domek	Angel Pine	\N	375	\N	2020-10-21 16:00:02
1269	2207	-1280	Dom	Jefferson	\N	250	\N	2020-10-21 16:00:02
1261	2535	-920	Dom	Los Santos	\N	375	\N	2020-10-21 16:00:02
1253	2498	-982	Domek	Las Colinas	\N	500	\N	2020-10-21 16:00:02
1254	2584	-952	Domek	Las Colinas	\N	350	\N	2020-10-21 16:00:02
1255	2521	-960	Domek	Las Colinas	\N	500	\N	2020-10-21 16:00:02
1256	2548	-953	Domek	Las Colinas	\N	500	\N	2020-10-21 16:00:02
1257	2498	-952	Rezydencja	Las Colinas	\N	750	\N	2020-10-21 16:00:02
1258	2581	-969	Domek	Las Colinas	\N	375	\N	2020-10-21 16:00:02
1276	1199	-918	Burger Bar	Temple	\N	600	\N	2020-10-21 16:00:02
1281	-939	1425	Domek	Tierra Robada	\N	500	\N	2020-10-21 16:00:02
42529	1495	2026	Apartament	Redsands West	\N	500	\N	2020-10-21 16:00:02
42530	1422	2026	Apartament	Redsands West	\N	500	\N	2020-10-21 16:00:02
42531	1414	1996	Apartament	Redsands West	\N	500	\N	2020-10-21 16:00:02
42532	1542	1996	Apartament	Redsands West	\N	500	\N	2020-10-21 16:00:02
\.


--
-- Data for Name: zones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.zones (id, name, description, points) FROM stdin;
1	Aldea Malvada	Obszar w Tierra Robada	[[-1277, 2498], [-1277, 2615], [-1372, 2615], [-1372, 2498], [-1277, 2498]]
2	Angel Pine	Miejscowość w Whetstone	[[-1964, -2584], [-1964, -2212], [-2324, -2212], [-2324, -2584], [-1964, -2584]]
3	Arco del Oeste	Obszar w Tierra Robada	[[-592, 2221], [-592, 2571], [-901, 2571], [-901, 2221], [-592, 2221]]
4	Avispa Country Club	Dzielnica w San Fierro	[[-2270, -355], [-2270, -417], [-2361, -417], [-2361, -355], [-2470, -355], [-2550, -355], [-2646, -355], [-2646, -430], [-2831, -430], [-2831, -222], [-2646, -222], [-2270, -222], [-2270, -318], [-2270, -355]]
5	Back o Beyond	Obszar w Flint County	[[-321, -2641], [-321, -1856], [-1166, -1856], [-1166, -2641], [-321, -2641]]
6	Battery Point	Dzielnica w San Fierro	[[-2533, 1268], [-2533, 1490], [-2741, 1490], [-2741, 1268], [-2533, 1268]]
7	Bayside	Miejscowość w Tierra Robada	[[-2353, 2175], [-2353, 2722], [-2741, 2722], [-2741, 2175], [-2353, 2175]]
8	Bayside Marina	Obszar w Tierra Robada	[[-2153, 2275], [-2153, 2475], [-2353, 2475], [-2353, 2275], [-2153, 2275]]
9	Bayside Tunnel	Obszar w Tierra Robada	[[-1950, 2548], [-1950, 2723], [-2290, 2723], [-2290, 2548], [-1950, 2548]]
10	Beacon Hill	Obszar w Flint County	[[-319, -1075], [-319, -977], [-399, -977], [-399, -1075], [-319, -1075]]
11	Blackfield	Dzielnica w Las Venturas	[[1197, 1403], [1197, 1203], [964, 1203], [964, 1403], [964, 1726], [1197, 1726], [1197, 1403]]
12	Blackfield Chapel	Dzielnica w Las Venturas	[[1375, 596], [1325, 596], [1325, 795], [1375, 795], [1375, 823], [1558, 823], [1558, 596], [1375, 596]]
13	Blackfield Intersection	Dzielnica w Las Venturas	[[1375, 919], [1457, 919], [1457, 823], [1375, 823], [1375, 795], [1166, 795], [1166, 1044], [1197, 1044], [1197, 1163], [1277, 1163], [1277, 1087], [1315, 1087], [1315, 1044], [1375, 1044], [1375, 919]]
14	Blueberry	Miejscowość w Red County	[[349, -220], [349, -404], [19, -404], [19, -220], [104, -220], [104, 152], [349, 152], [349, -220]]
15	Blueberry Acres	Obszar w Red County	[[104, -220], [104, 293], [-319, 293], [-319, -220], [104, -220]]
16	Bone County	Hrabstwo w San Andreas	[[869, 596], [869, 2993], [-480, 2993], [-480, 596], [869, 596]]
17	Caligula's Palace	Dzielnica w Las Venturas	[[2437, 1703], [2437, 1543], [2087, 1543], [2087, 1703], [2137, 1703], [2137, 1783], [2437, 1783], [2437, 1703]]
18	Calton Heights	Dzielnica w San Fierro	[[-1982, 744], [-1982, 1358], [-2274, 1358], [-2274, 744], [-1982, 744]]
19	Chinatown	Dzielnica w San Fierro	[[-2078, 578], [-2078, 744], [-2274, 744], [-2274, 578], [-2078, 578]]
20	City Hall	Dzielnica w San Fierro	[[-2593, 277], [-2593, 458], [-2867, 458], [-2867, 277], [-2593, 277]]
21	Come-A-Lot	Dzielnica w Las Venturas	[[2623, 943], [2623, 1203], [2087, 1203], [2087, 943], [2623, 943]]
22	Commerce	Dzielnica w Los Santos	[[1701, -1722], [1701, -1842], [1323, -1842], [1323, -1722], [1323, -1577], [1370, -1577], [1370, -1384], [1463, -1384], [1463, -1430], [1667, -1430], [1812, -1430], [1812, -1577], [1758, -1577], [1758, -1722], [1701, -1722]]
23	Conference Center	Dzielnica w Los Santos	[[1323, -1804], [1323, -1842], [1073, -1842], [1073, -1804], [1046, -1804], [1046, -1722], [1323, -1722], [1323, -1804]]
24	Cranberry Station	Dzielnica w San Fierro	[[-1922, 56], [-1922, 224], [-2007, 224], [-2007, 56], [-1922, 56]]
25	Creek	Dzielnica w Las Venturas	[[2921, 1937], [2921, 2669], [2749, 2669], [2749, 1937], [2921, 1937]]
26	Dillimore	Miejscowość w Red County	[[861, -674], [861, -404], [580, -404], [580, -674], [861, -674]]
27	Doherty	Dzielnica w San Fierro	[[-1794, -222], [-1794, -324], [-2270, -324], [-2270, -222], [-2173, -222], [-2173, 265], [-1794, 265], [-1794, -222]]
28	Downtown	Dzielnica w San Fierro	[[-1794, 578], [-1794, 265], [-1993, 265], [-1993, 578], [-2078, 578], [-2078, 744], [-1982, 744], [-1982, 1274], [-1871, 1274], [-1620, 1274], [-1620, 1176], [-1580, 1176], [-1580, 1025], [-1499, 1025], [-1499, 744], [-1499, 578], [-1794, 578]]
29	Downtown Los Santos	Dzielnica w Los Santos	[[1724, -1430], [1463, -1430], [1463, -1384], [1370, -1384], [1370, -1170], [1370, -1130], [1378, -1130], [1378, -1026], [1391, -1026], [1391, -926], [1463, -926], [1463, -1026], [1463, -1130], [1463, -1150], [1724, -1150], [1812, -1150], [1812, -1250], [1812, -1430], [1724, -1430]]
30	East Beach	Dzielnica w Los Santos	[[2959, -1668], [2959, -1852], [2632, -1852], [2632, -1668], [2632, -1393], [2747, -1393], [2747, -1120], [2959, -1120], [2959, -1498], [2959, -1668]]
31	Easter Basin	Dzielnica w San Fierro	[[-1499, 249], [-1499, -50], [-1794, -50], [-1794, 249], [-1794, 578], [-1242, 578], [-1242, 249], [-1499, 249]]
32	Easter Bay Airport	Dzielnica w San Fierro	[[-1213, -730], [-1794, -730], [-1794, -50], [-1499, -50], [-1499, 249], [-1242, 249], [-1242, 578], [-1213, 578], [-947, 578], [-947, -50], [-1132, -50], [-1132, -730], [-1213, -730]]
33	Easter Bay Chemicals	Obszar w Red County	[[-956, -768], [-956, -787], [-1132, -787], [-1132, -768], [-1132, -578], [-956, -578], [-956, -768]]
34	Easter Tunnel	Dzielnica w San Fierro	[[-1446, -833], [-1446, -730], [-1709, -730], [-1709, -833], [-1446, -833]]
35	East Los Santos	Dzielnica w Los Santos	[[2421, -1628], [2222, -1628], [2222, -1494], [2266, -1494], [2266, -1372], [2281, -1372], [2281, -1135], [2381, -1135], [2462, -1135], [2581, -1135], [2581, -1454], [2632, -1454], [2632, -1628], [2421, -1628]]
36	El Castillo del Diablo	Obszar w Bone County	[[8, 2337], [114, 2337], [114, 2123], [-208, 2123], [-208, 2217], [-464, 2217], [-464, 2580], [-208, 2580], [-208, 2487], [8, 2487], [8, 2337]]
37	El Corona	Dzielnica w Los Santos	[[1812, -1852], [1970, -1852], [1970, -2179], [1812, -2179], [1692, -2179], [1692, -1842], [1812, -1842], [1812, -1852]]
38	El Quebrados	Miejscowość w Tierra Robada	[[-1372, 2498], [-1372, 2777], [-1645, 2777], [-1645, 2498], [-1372, 2498]]
39	Esplanade East	Dzielnica w San Fierro	[[-1499, 1274], [-1339, 1274], [-1339, 578], [-1499, 578], [-1499, 1025], [-1580, 1025], [-1580, 1176], [-1620, 1176], [-1620, 1274], [-1580, 1274], [-1499, 1274]]
40	Esplanade North	Dzielnica w San Fierro	[[-1524, 1358], [-1524, 1274], [-1982, 1274], [-1982, 1358], [-1996, 1358], [-2533, 1358], [-2533, 1501], [-1996, 1501], [-1996, 1592], [-1524, 1592], [-1524, 1358]]
41	Fallen Tree	Obszar w Red County	[[-452, -698], [-452, -380], [-792, -380], [-792, -698], [-452, -698]]
42	Fallow Bridge	Obszar w Red County	[[603, 366], [603, 555], [434, 555], [434, 366], [603, 366]]
43	Fern Ridge	Obszar w Red County	[[1306, -139], [1306, 119], [508, 119], [508, -139], [1306, -139]]
44	Financial	Dzielnica w San Fierro	[[-1701, 744], [-1701, 1176], [-1871, 1176], [-1871, 744], [-1701, 744]]
45	Fisher's Lagoon	Obszar w Red County	[[2131, -233], [2131, 13], [1916, 13], [1916, -233], [2131, -233]]
46	Flint County	Hrabstwo w San Andreas	[[44, -2892], [44, -768], [-1213, -768], [-1213, -2892], [44, -2892]]
47	Flint Intersection	Obszar w Flint County	[[17, -1596], [17, -1276], [-187, -1276], [-187, -1596], [17, -1596]]
48	Flint Range	Obszar w Flint County	[[-187, -1648], [-187, -1276], [-594, -1276], [-594, -1648], [-187, -1648]]
49	Flint Water	Obszar w Red County	[[-106, -753], [-106, -463], [-314, -463], [-314, -753], [-106, -753]]
50	Fort Carson	Miejscowość w Bone County	[[123, 826], [123, 1220], [-376, 1220], [-376, 826], [123, 826]]
51	Foster Valley	Dzielnica w San Fierro	[[-1794, -1115], [-1794, -1250], [-2178, -1250], [-2178, -1115], [-2178, -599], [-2178, -430], [-2270, -430], [-2270, -324], [-2178, -324], [-1794, -324], [-1794, -599], [-1794, -1115]]
52	Frederick Bridge	Obszar w Red County	[[2774, 296], [2774, 594], [2759, 594], [2759, 296], [2774, 296]]
53	Gant Bridge	Obszar w Tierra Robada	[[-2616, 1659], [-2616, 1490], [-2741, 1490], [-2741, 1659], [-2741, 2175], [-2616, 2175], [-2616, 1659]]
54	Ganton	Dzielnica w Los Santos	[[2632, -1722], [2632, -1852], [2222, -1852], [2222, -1722], [2222, -1628], [2632, -1628], [2632, -1722]]
55	Garcia	Dzielnica w San Fierro	[[-2354, -222], [-2395, -222], [-2411, -222], [-2411, 265], [-2173, 265], [-2173, -222], [-2354, -222]]
56	Garver Bridge	Dzielnica w San Fierro	[[-1339, 828], [-1339, 696], [-1499, 696], [-1499, 925], [-1339, 925], [-1339, 1057], [-1213, 1057], [-1213, 1178], [-1087, 1178], [-1087, 950], [-1213, 950], [-1213, 828], [-1339, 828]]
57	Glen Park	Dzielnica w Los Santos	[[1996, -1350], [1996, -1449], [1812, -1449], [1812, -1350], [1812, -1100], [1812, -973], [1994, -973], [1994, -1100], [2056, -1100], [2056, -1350], [1996, -1350]]
58	Greenglass College	Dzielnica w Las Venturas	[[1166, 1044], [1166, 930], [964, 930], [964, 1044], [964, 1203], [1197, 1203], [1197, 1044], [1166, 1044]]
59	Green Palms	Obszar w Bone County	[[338, 1305], [338, 1520], [176, 1520], [176, 1305], [338, 1305]]
60	Hampton Barns	Obszar w Red County	[[761, 264], [761, 366], [603, 366], [603, 264], [761, 264]]
61	Hankypanky Point	Obszar w Red County	[[2759, 62], [2759, 385], [2576, 385], [2576, 62], [2759, 62]]
62	Harry Gold Parkway	Dzielnica w Las Venturas	[[1817, 863], [1817, 2342], [1777, 2342], [1777, 863], [1817, 863]]
63	Hashbury	Dzielnica w San Fierro	[[-2411, -222], [-2411, 54], [-2593, 54], [-2593, -222], [-2411, -222]]
64	Hilltop Farm	Obszar w Red County	[[1176, -450], [1176, -217], [967, -217], [967, -450], [1176, -450]]
65	Hunter Quarry	Obszar w Bone County	[[860, 710], [860, 1031], [337, 1031], [337, 710], [860, 710]]
66	Idlewood	Dzielnica w Los Santos	[[2222, -1742], [2222, -1852], [1971, -1852], [1812, -1852], [1812, -1742], [1812, -1602], [1812, -1449], [2124, -1449], [2124, -1494], [2222, -1494], [2222, -1742]]
67	Jefferson	Dzielnica w Los Santos	[[2266, -1449], [2266, -1494], [2124, -1494], [2124, -1449], [2056, -1449], [1996, -1449], [1996, -1350], [2056, -1350], [2056, -1210], [2056, -1126], [2185, -1126], [2185, -1154], [2281, -1154], [2281, -1210], [2281, -1372], [2266, -1372], [2266, -1449]]
68	Julius Thruway East	Dzielnica w Las Venturas	[[2749, 1055], [2749, 943], [2623, 943], [2623, 1055], [2685, 1055], [2685, 2202], [2625, 2202], [2625, 2442], [2536, 2442], [2536, 2542], [2685, 2542], [2685, 2626], [2749, 2626], [2749, 1055]]
69	Julius Thruway North	Dzielnica w Las Venturas	[[1848, 2433], [1848, 2342], [1704, 2342], [1704, 2433], [1534, 2433], [1377, 2433], [1377, 2507], [1534, 2507], [1534, 2583], [1848, 2583], [1848, 2553], [1938, 2553], [1938, 2624], [2121, 2624], [2121, 2663], [2237, 2663], [2498, 2663], [2498, 2626], [2685, 2626], [2685, 2542], [2498, 2542], [2237, 2542], [2237, 2508], [2121, 2508], [1938, 2508], [1938, 2478], [1848, 2478], [1848, 2433]]
70	Julius Thruway South	Dzielnica w Las Venturas	[[2377, 863], [2377, 897], [2537, 897], [2537, 788], [2377, 788], [2377, 823], [1457, 823], [1457, 863], [2377, 863]]
71	Julius Thruway West	Dzielnica w Las Venturas	[[1236, 2142], [1236, 1163], [1197, 1163], [1197, 2243], [1236, 2243], [1297, 2243], [1297, 2142], [1236, 2142]]
72	Juniper Hill	Dzielnica w San Fierro	[[-2274, 578], [-2274, 968], [-2533, 968], [-2533, 578], [-2274, 578]]
73	Juniper Hollow	Dzielnica w San Fierro	[[-2274, 968], [-2274, 1358], [-2533, 1358], [-2533, 968], [-2274, 968]]
74	K.A.C.C. Military Fuels	Dzielnica w Las Venturas	[[2749, 2626], [2749, 2861], [2498, 2861], [2498, 2626], [2749, 2626]]
75	Kincaid Bridge	Obszar w Tierra Robada	[[-1213, 721], [-1213, 599], [-1339, 599], [-1339, 828], [-1213, 828], [-1213, 950], [-1087, 950], [-1087, 986], [-961, 986], [-961, 855], [-1087, 855], [-1087, 721], [-1213, 721]]
76	King's	Dzielnica w San Fierro	[[-1993, 373], [-1993, 265], [-2411, 265], [-2411, 373], [-2253, 373], [-2253, 458], [-2329, 458], [-2329, 578], [-1993, 578], [-1993, 458], [-1993, 373]]
77	Las Barrancas	Miejscowość w Tierra Robada	[[-719, 1398], [-719, 1634], [-926, 1634], [-926, 1398], [-719, 1398]]
78	Las Brujas	Miejscowość w Bone County	[[-208, 2123], [-208, 2217], [-365, 2217], [-365, 2123], [-208, 2123]]
79	Las Colinas	Dzielnica w Los Santos	[[2281, -1135], [2281, -1154], [2185, -1154], [2185, -1126], [2126, -1126], [2056, -1126], [2056, -1100], [1994, -1100], [1994, -920], [2056, -920], [2126, -920], [2126, -934], [2185, -934], [2281, -934], [2281, -945], [2632, -945], [2747, -945], [2959, -945], [2959, -1120], [2747, -1120], [2747, -1135], [2632, -1135], [2281, -1135]]
80	Las Payasadas	Miejscowość w Bone County	[[-133, 2580], [-133, 2816], [-354, 2816], [-354, 2580], [-133, 2580]]
81	Last Dime Motel	Dzielnica w Las Venturas	[[1997, 596], [1997, 823], [1823, 823], [1823, 596], [1997, 596]]
82	Las Venturas	Miasto w San Andreas	[[2997, 596], [2997, 2993], [869, 2993], [869, 596], [2997, 596]]
83	Las Venturas Airport	Dzielnica w Las Venturas	[[1777, 1203], [1777, 1143], [1457, 1143], [1457, 1203], [1236, 1203], [1236, 1883], [1457, 1883], [1777, 1883], [1777, 1203]]
84	Leafy Hollow	Obszar w Flint County	[[-815, -1856], [-815, -1602], [-1166, -1602], [-1166, -1856], [-815, -1856]]
85	Lil' Probe Inn	Obszar w Bone County	[[153, 1286], [153, 1554], [-90, 1554], [-90, 1286], [153, 1286]]
86	Linden Side	Dzielnica w Las Venturas	[[2923, 943], [2923, 1198], [2749, 1198], [2749, 943], [2923, 943]]
87	Linden Station	Dzielnica w Las Venturas	[[2923, 1198], [2749, 1198], [2749, 1548], [2923, 1548], [2923, 1198]]
128	Rockshore East	Dzielnica w Las Venturas	[[2902, 676], [2902, 943], [2537, 943], [2537, 676], [2902, 676]]
88	Little Mexico	Dzielnica w Los Santos	[[1812, -1722], [1812, -1842], [1701, -1842], [1701, -1722], [1758, -1722], [1758, -1577], [1812, -1577], [1812, -1722]]
89	Los Flores	Dzielnica w Los Santos	[[2632, -1393], [2632, -1454], [2581, -1454], [2581, -1393], [2581, -1135], [2747, -1135], [2747, -1393], [2632, -1393]]
90	Los Santos	Miasto w San Andreas	[[2997, -2892], [2997, -768], [44, -768], [44, -2892], [2997, -2892]]
91	Los Santos Inlet	Obszar w Flint County	[[44, -2224], [44, -1724], [-321, -1724], [-321, -2224], [44, -2224]]
92	Los Santos International	Dzielnica w Los Santos	[[2152, -2394], [2201, -2394], [2201, -2730], [1382, -2730], [1382, -2394], [1249, -2394], [1249, -2179], [1852, -2179], [2089, -2179], [2089, -2256], [2089, -2394], [2152, -2394]]
93	LVA Freight Depot	Dzielnica w Las Venturas	[[1457, 1143], [1777, 1143], [1777, 863], [1457, 863], [1457, 919], [1375, 919], [1375, 1044], [1315, 1044], [1315, 1087], [1277, 1087], [1277, 1163], [1236, 1163], [1236, 1203], [1277, 1203], [1375, 1203], [1457, 1203], [1457, 1143]]
94	Marina	Dzielnica w Los Santos	[[851, -1577], [851, -1804], [647, -1804], [647, -1577], [647, -1416], [807, -1416], [926, -1416], [926, -1577], [851, -1577]]
95	Market	Dzielnica w Los Santos	[[1370, -1416], [1370, -1577], [926, -1577], [926, -1416], [787, -1416], [787, -1310], [952, -1310], [952, -1130], [1072, -1130], [1370, -1130], [1370, -1416]]
96	Market Station	Dzielnica w Los Santos	[[866, -1410], [866, -1310], [787, -1310], [787, -1410], [866, -1410]]
97	Martin Bridge	Obszar w Red County	[[-122, 293], [-122, 476], [-222, 476], [-222, 293], [-122, 293]]
98	Missionary Hill	Dzielnica w San Fierro	[[-2178, -811], [-2178, -430], [-2994, -430], [-2994, -811], [-2178, -811]]
99	Montgomery	Miejscowość w Red County	[[1451, 347], [1451, 119], [1119, 119], [1119, 493], [1451, 493], [1451, 420], [1582, 420], [1582, 347], [1451, 347]]
100	Montgomery Intersection	Obszar w Red County	[[1664, 347], [1745, 347], [1745, 208], [1546, 208], [1546, 347], [1582, 347], [1582, 401], [1664, 401], [1664, 347]]
101	Mount Chiliad	Obszar w Whetstone	[[-2030, -1771], [-2030, -2189], [-2178, -2189], [-2994, -2189], [-2994, -1115], [-2997, -1115], [-2997, -971], [-2178, -971], [-2178, -1115], [-2178, -1250], [-1936, -1250], [-1936, -1771], [-2030, -1771]]
102	Mulholland	Dzielnica w Los Santos	[[952, -937], [952, -954], [768, -954], [768, -860], [687, -860], [687, -768], [737, -768], [737, -674], [861, -674], [861, -600], [1156, -600], [1156, -674], [1142, -674], [1142, -768], [1169, -768], [1269, -768], [1269, -452], [1281, -452], [1281, -290], [1641, -290], [1641, -452], [1667, -452], [1667, -768], [1463, -768], [1463, -926], [1357, -926], [1357, -910], [1318, -910], [1169, -910], [1096, -910], [1096, -937], [952, -937]]
103	Mulholland Intersection	Dzielnica w Los Santos	[[1812, -1150], [1812, -768], [1463, -768], [1463, -1150], [1812, -1150]]
104	North Rock	Obszar w Red County	[[2770, -768], [2770, -269], [2285, -269], [2285, -768], [2770, -768]]
105	Ocean Docks	Dzielnica w Los Santos	[[[2324, -2418], [2324, -2730], [2201, -2730], [2201, -2418], [2201, -2394], [2089, -2394], [2089, -2235], [2201, -2235], [2201, -2095], [2324, -2095], [2324, -2059], [2703, -2059], [2703, -2126], [2959, -2126], [2959, -2302], [2703, -2302], [2324, -2302], [2324, -2418]], [[2809, -2697], [2373, -2697], [2373, -2330], [2809, -2330], [2809, -2697]]]
106	Ocean Flats	Dzielnica w San Fierro	[[-2831, -222], [-2831, -430], [-2994, -430], [-2994, -222], [-2994, 277], [-2994, 458], [-2867, 458], [-2867, 277], [-2593, 277], [-2593, -222], [-2831, -222]]
107	Octane Springs	Obszar w Bone County	[[664, 1228], [664, 1655], [338, 1655], [338, 1228], [664, 1228]]
108	Old Venturas Strip	Dzielnica w Las Venturas	[[2685, 2012], [2685, 2202], [2162, 2202], [2162, 2012], [2685, 2012]]
109	Palisades	Dzielnica w San Fierro	[[-2741, 458], [-2741, 1339], [-2994, 1339], [-2994, 458], [-2741, 458]]
110	Palomino Creek	Miejscowość w Red County	[[2576, -149], [2576, 228], [2160, 228], [2160, -149], [2576, -149]]
111	Paradiso	Dzielnica w San Fierro	[[-2533, 793], [-2533, 1268], [-2741, 1268], [-2741, 793], [-2533, 793]]
112	Pershing Square	Dzielnica w Los Santos	[[1583, -1722], [1583, -1577], [1440, -1577], [1440, -1722], [1583, -1722]]
113	Pilgrim	Dzielnica w Las Venturas	[[2624, 1383], [2437, 1383], [2437, 1783], [2624, 1783], [2685, 1783], [2685, 1383], [2624, 1383]]
114	Pilson Intersection	Dzielnica w Las Venturas	[[1377, 2243], [1377, 2507], [1098, 2507], [1098, 2243], [1377, 2243]]
115	Pirates in Men's Pants	Dzielnica w Las Venturas	[[2027, 1469], [2027, 1703], [1817, 1703], [1817, 1469], [2027, 1469]]
116	Playa del Seville	Dzielnica w Los Santos	[[2959, -2126], [2959, -1852], [2703, -1852], [2703, -2126], [2959, -2126]]
117	Prickle Pine	Dzielnica w Las Venturas	[[1534, 2583], [1534, 2507], [1117, 2507], [1117, 2723], [1534, 2723], [1534, 2863], [1848, 2863], [1938, 2863], [1938, 2861], [2121, 2861], [2121, 2624], [1938, 2624], [1938, 2553], [1848, 2553], [1848, 2583], [1534, 2583]]
118	Queens	Dzielnica w San Fierro	[[-2411, 373], [-2411, 54], [-2593, 54], [-2593, 458], [-2533, 458], [-2533, 578], [-2329, 578], [-2329, 458], [-2253, 458], [-2253, 373], [-2411, 373]]
119	Randolph Industrial Estate	Dzielnica w Las Venturas	[[1823, 596], [1823, 823], [1558, 823], [1558, 596], [1823, 596]]
120	Red County	Hrabstwo w San Andreas	[[2997, -768], [2997, 596], [-1213, 596], [-1213, -768], [2997, -768]]
121	Redsands East	Dzielnica w Las Venturas	[[2011, 2202], [2106, 2202], [2106, 2011], [1817, 2011], [1817, 2202], [1817, 2342], [1848, 2342], [1848, 2478], [2011, 2478], [2011, 2342], [2011, 2202]]
122	Redsands West	Dzielnica w Las Venturas	[[1777, 2142], [1777, 1883], [1236, 1883], [1236, 2142], [1297, 2142], [1297, 2243], [1377, 2243], [1377, 2433], [1704, 2433], [1704, 2342], [1777, 2342], [1777, 2243], [1777, 2142]]
123	Regular Tom	Obszar w Bone County	[[-276, 1712], [-276, 1892], [-405, 1892], [-405, 1712], [-276, 1712]]
124	Restricted Area	Obszar w Bone County	[[421, 1655], [421, 2123], [-91, 2123], [-91, 1655], [421, 1655]]
125	Richman	Dzielnica w Los Santos	[[334, -1292], [334, -1369], [225, -1369], [225, -1404], [72, -1404], [72, -1235], [72, -1008], [321, -1008], [321, -860], [321, -768], [321, -674], [700, -674], [700, -768], [687, -768], [687, -860], [768, -860], [768, -954], [787, -954], [787, -1118], [647, -1118], [647, -1235], [466, -1235], [466, -1292], [334, -1292]]
126	Robada Intersection	Obszar w Tierra Robada	[[-862, 1178], [-862, 1351], [-1119, 1351], [-1119, 1178], [-862, 1178]]
127	Roca Escalante	Dzielnica w Las Venturas	[[2536, 2442], [2625, 2442], [2625, 2202], [2536, 2202], [2237, 2202], [2237, 2542], [2536, 2542], [2536, 2442]]
129	Rockshore West	Dzielnica w Las Venturas	[[2377, 788], [2537, 788], [2537, 596], [2377, 596], [1997, 596], [1997, 823], [2377, 823], [2377, 788]]
130	Rodeo	Dzielnica w Los Santos	[[647, -1384], [647, -1385], [647, -1684], [558, -1684], [422, -1684], [312, -1684], [225, -1684], [72, -1684], [72, -1544], [72, -1404], [225, -1404], [225, -1369], [334, -1369], [334, -1292], [466, -1292], [466, -1235], [647, -1235], [647, -1384]]
131	Royal Casino	Dzielnica w Las Venturas	[[2437, 1383], [2437, 1543], [2087, 1543], [2087, 1383], [2437, 1383]]
132	San Andreas Sound	Obszar w Red County	[[2759, 385], [2759, 562], [2450, 562], [2450, 385], [2759, 385]]
133	San Fierro	Miasto w San Andreas	[[-1213, -1115], [-1213, 1659], [-2997, 1659], [-2997, -1115], [-1213, -1115]]
134	San Fierro Bay	Obszar w Tierra Robada	[[-1996, 1659], [-1996, 1501], [-2616, 1501], [-2616, 1659], [-2616, 2175], [-1996, 2175], [-1996, 1659]]
135	Santa Flora	Dzielnica w San Fierro	[[-2533, 458], [-2533, 793], [-2741, 793], [-2741, 458], [-2533, 458]]
136	Santa Maria Beach	Dzielnica w Los Santos	[[342, -1684], [647, -1684], [647, -2173], [342, -2173], [72, -2173], [72, -1684], [342, -1684]]
137	Shady Cabin	Obszar w Whetstone	[[-1601, -2263], [-1601, -2231], [-1632, -2231], [-1632, -2263], [-1601, -2263]]
138	Shady Creeks	Obszar w Whetstone	[[-1820, -1771], [-1226, -1771], [-1226, -2643], [-1820, -2643], [-1820, -2174], [-2030, -2174], [-2030, -1771], [-1820, -1771]]
139	Sherman Reservoir	Obszar w Tierra Robada	[[-599, 1659], [-599, 1929], [-789, 1929], [-789, 1659], [-599, 1659]]
140	Sobell Rail Yards	Dzielnica w Las Venturas	[[2923, 1548], [2923, 1937], [2749, 1937], [2749, 1548], [2923, 1548]]
141	Spinybed	Dzielnica w Las Venturas	[[2498, 2663], [2498, 2861], [2121, 2861], [2121, 2663], [2498, 2663]]
142	Starfish Casino	Dzielnica w Las Venturas	[[2437, 2012], [2685, 2012], [2685, 1783], [2437, 1783], [2437, 1858], [2437, 1883], [2162, 1883], [2162, 2012], [2437, 2012]]
143	Temple	Dzielnica w Los Santos	[[1378, -1026], [1378, -1130], [1252, -1130], [1096, -1130], [952, -1130], [952, -937], [1096, -937], [1096, -910], [1252, -910], [1357, -910], [1357, -926], [1391, -926], [1391, -1026], [1378, -1026]]
144	'The Big Ear'	Obszar w Bone County	[[-137, 1403], [-137, 1681], [-410, 1681], [-410, 1403], [-137, 1403]]
145	The Camel's Toe	Dzielnica w Las Venturas	[[2640, 1203], [2640, 1383], [2087, 1383], [2087, 1203], [2640, 1203]]
146	The Clown's Pocket	Dzielnica w Las Venturas	[[2437, 1783], [2437, 1883], [2162, 1883], [2162, 1783], [2437, 1783]]
147	The Emerald Isle	Dzielnica w Las Venturas	[[2237, 2202], [2237, 2508], [2011, 2508], [2011, 2202], [2237, 2202]]
148	The Farm	Obszar w Flint County	[[-908, -1317], [-908, -787], [-1209, -787], [-1209, -1317], [-908, -1317]]
149	The Four Dragons Casino	Dzielnica w Las Venturas	[[2027, 863], [2027, 1083], [1817, 1083], [1817, 863], [2027, 863]]
150	The High Roller	Dzielnica w Las Venturas	[[2027, 1283], [2027, 1469], [1817, 1469], [1817, 1283], [2027, 1283]]
151	The Mako Span	Obszar w Red County	[[1785, 401], [1785, 567], [1664, 567], [1664, 401], [1785, 401]]
152	The Panopticon	Obszar w Red County	[[-319, -304], [-319, 327], [-947, 327], [-947, -304], [-319, -304]]
153	The Pink Swan	Dzielnica w Las Venturas	[[2027, 1083], [2027, 1283], [1817, 1283], [1817, 1083], [2027, 1083]]
154	The Sherman Dam	Obszar w Tierra Robada	[[-481, 1929], [-481, 2155], [-968, 2155], [-968, 1929], [-481, 1929]]
155	The Strip	Dzielnica w Las Venturas	[[2087, 1703], [2087, 863], [2027, 863], [2027, 1703], [2027, 1783], [2027, 1863], [2106, 1863], [2106, 2202], [2162, 2202], [2162, 1863], [2162, 1783], [2137, 1783], [2137, 1703], [2087, 1703]]
156	The Visage	Dzielnica w Las Venturas	[[2027, 1863], [2027, 1703], [1817, 1703], [1817, 1863], [1817, 2011], [2106, 2011], [2106, 1863], [2027, 1863]]
157	Tierra Robada	Hrabstwo w San Andreas	[[-480, 1659], [-480, 596], [-1213, 596], [-1213, 1659], [-2997, 1659], [-2997, 2993], [-480, 2993], [-480, 1659]]
158	Unity Station	Dzielnica w Los Santos	[[1812, -1971], [1812, -1932], [1692, -1932], [1692, -1971], [1812, -1971]]
159	Valle Ocultado	Miejscowość w Tierra Robada	[[-715, 2611], [-715, 2847], [-936, 2847], [-936, 2611], [-715, 2611]]
160	Verdant Bluffs	Dzielnica w Los Santos	[[1249, -2179], [1249, -2488], [930, -2488], [930, -2006], [1073, -2006], [1073, -1842], [1249, -1842], [1692, -1842], [1692, -2179], [1249, -2179]]
161	Verdant Meadows	Obszar w Bone County	[[435, 2337], [435, 2677], [37, 2677], [37, 2337], [435, 2337]]
162	Verona Beach	Dzielnica w Los Santos	[[930, -2006], [930, -2173], [647, -2173], [647, -1804], [851, -1804], [851, -1577], [1046, -1577], [1161, -1577], [1323, -1577], [1323, -1722], [1161, -1722], [1046, -1722], [1046, -1804], [1073, -1804], [1073, -2006], [930, -2006]]
163	Vinewood	Dzielnica w Los Santos	[[787, -1310], [787, -1416], [647, -1416], [647, -1227], [647, -1118], [787, -1118], [787, -954], [952, -954], [952, -1130], [952, -1310], [787, -1310]]
164	Whetstone	Hrabstwo w San Andreas	[[-1213, -2892], [-1213, -1115], [-2997, -1115], [-2997, -2892], [-1213, -2892]]
165	Whitewood Estates	Dzielnica w Las Venturas	[[1098, 2243], [1197, 2243], [1197, 1726], [1098, 1726], [883, 1726], [883, 2507], [1098, 2507], [1098, 2243]]
166	Willowfield	Dzielnica w Los Santos	[[2201, -2095], [2201, -2235], [2089, -2235], [2089, -2179], [1970, -2179], [1970, -1852], [2089, -1852], [2324, -1852], [2541, -1852], [2703, -1852], [2703, -1941], [2703, -2059], [2541, -2059], [2324, -2059], [2324, -2095], [2201, -2095]]
167	Yellow Bell Golf Course	Dzielnica w Las Venturas	[[1457, 2723], [1117, 2723], [1117, 2863], [1457, 2863], [1534, 2863], [1534, 2723], [1457, 2723]]
168	Yellow Bell Station	Dzielnica w Las Venturas	[[1492, 2600], [1492, 2687], [1377, 2687], [1377, 2600], [1492, 2600]]
\.


--
-- Name: blips_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.blips_id_seq', 52, true);


--
-- Name: events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.events_id_seq', 1, false);


--
-- Name: houses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.houses_id_seq', 1, false);


--
-- Name: zones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.zones_id_seq', 1, false);


--
-- Name: blips blips_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blips
    ADD CONSTRAINT blips_pkey PRIMARY KEY (id);


--
-- Name: events events_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);


--
-- Name: houses houses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.houses
    ADD CONSTRAINT houses_pkey PRIMARY KEY (id);


--
-- Name: zones zones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.zones
    ADD CONSTRAINT zones_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

